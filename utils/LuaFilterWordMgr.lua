--[[ 	
-----------------------------------------------------
@filename       : LuaFilterWordMgr
@Description    : lua版本屏蔽器管理器
@date           : 2025/4/24
@Author         : Jacob
@copyright      : (LY) 2020 雷焰网络
-----------------------------------------------------
]]
module('LuaFilterWordMgr', Class.impl())

--wwtodo ㅋㅋㅋ 设备上发不出的问题
function ctor(self)
    self.mFilterWordList = {}
    self.mSignRegExp = "[\\/\\$@<>%^%s]"
    self.mChinaRegExp = "[\228-\233][\128-\191][\128-\191]" -- 粗略匹配中文字 原c#是@"[^\u4E00-\u9fa5]"匹配 lua5.1不支持没有内建 utf8 模块（那是从 Lua 5.3 才引入的）
    self.mEnglishRegExp = "[^a-zA-Z]"
    self.mSignChecks = {}
    self.mChinaChecks = {}
    self.mEnglishChecks = {}
end

-- 初始化
function init(self, callBack)
    --旧版屏蔽词库在美术目录逻辑
    -- local textAsset = AssetLoader.GetAsset("arts/config/filterWord.txt")
    -- if not textAsset then
    --     logError("文件打开失败")
    --     if callBack then callBack(false) end
    --     return
    -- end

    -- 读取全部内容
    -- local content = textAsset.text 

    local content = RefMgr:getData("filterword")
    if content then
        -- 清空原有词库
        self.mFilterWordList = {}
        
        --  旧版屏蔽词库在美术目录逻辑
        -- 按 \r 或 \n 分割行（兼容不同系统换行符）
        -- for word in content:gmatch("[^\r\n]+") do
        --     local nstr = word:match("^%s*(.-)%s*$") -- 去除首尾空白
        --     if #nstr > 0 then
        --         table.insert(self.mFilterWordList, nstr)
        --     end
        -- end

        for k, v in pairs(content) do
            self.mFilterWordList[k] = v.language
        end
        
        self:initData()
        if callBack then callBack(true) end
    else
        logError("屏蔽词配置文件内容为空")
        if callBack then callBack(false) end
    end
end

-- 初始化分类数据
function initData(self)
    self.mSignChecks = {}
    self.mChinaChecks = {}
    self.mEnglishChecks = {}

    for _, word in ipairs(self.mFilterWordList) do
        if not word:match(self.mEnglishRegExp) then --判断字符串是否纯字母 如果不是
            table.insert(self.mEnglishChecks, word)
        elseif word:match("^"..self.mChinaRegExp.."+$") then --判断字符串是否全中文 如果是
            table.insert(self.mChinaChecks, word)
        else
            table.insert(self.mSignChecks, word)
        end
    end
    print("初始化屏蔽词分类数据完毕")
end

-- 是否存在非法符号
function hasIllegalWord(self, content)
    --移除字符串中所有空白字符
    local word = content:gsub("%s+", "")
    return word:find(self.mSignRegExp) ~= nil
end

-- 是否存在屏蔽字
function hasFilterWord(self, content)
    if self:hasIllegalWord(content) then return true end

    for _, word in ipairs(self.mFilterWordList) do
        if content:find(word, 1, true) then -- 普通字符串匹配
            return true
        end
    end
    return false
end

-- 获取所有敏感词
function getAllSensitiveWords(self, content)
    if not content or #content == 0 then return nil end
    local result = {}
    for _, word in ipairs(self.mFilterWordList) do
        if content:find(word, 1, true) then
            table.insert(result, word)
        end
    end
    return #result > 0 and result or nil
end

-- 屏蔽字过滤
function filter(self, content)
    local replacements = {}
    for _, word in ipairs(self.mFilterWordList) do
        local startPos, endPos = content:find(word, 1, true)
        while startPos do
            replacements[word] = string.rep("*", #word)
            startPos, endPos = content:find(word, endPos + 1, true)
        end
    end

    for word, stars in pairs(replacements) do
        content = content:gsub(self:escape_pattern(word), stars)
    end

    content = self:checkGapWord(content)
    return content
end

-- 检测间隔字符
function checkGapWord(self, content)
    content = self:checkByType(content, self.mSignRegExp, self.mSignChecks)
    content = self:checkByType(content, self.mChinaRegExp, self.mChinaChecks)
    content = self:checkByType(content, self.mEnglishRegExp, self.mEnglishChecks)
    return content
end

-- 用于转义 Lua 模式中的特殊字符
function escape_pattern(self, str)
    return str:gsub("([%(%)%.%%%+%-%*%?%[%]%^%$])", "%%%1") --"%%%0")
end

-- 还原被 escape_pattern 转义过的字符串
function unescape_pattern(str)
    return str:gsub("%%([%(%)%.%%%+%-%*%?%[%]%^%$])", "%1")
end

-- 按类型检测
function checkByType(self, content, regExp, checkList)
    local message = content:gsub(regExp, ""):lower()

    for _, key in ipairs(checkList) do
        local pattern = self:escape_pattern(key)
        if message:find(pattern) then
            return self:replaceKey(content, key)
        end
    end
    return content
end

-- 替换关键词
function replaceKey(self, content, key)
    local lowerContent = content:lower()
    local positions = {}
    local keyLower = key:lower()

    -- 收集所有匹配位置
    local startPos, endPos = lowerContent:find(keyLower, 1, true)
    while startPos do
        for i = startPos, endPos do
            positions[i] = true
        end
        startPos, endPos = lowerContent:find(keyLower, endPos + 1, true)
    end

    -- 构建新字符串
    local result = {}
    for i = 1, #content do
        table.insert(result, positions[i] and "*" or content:sub(i, i))
    end
    return table.concat(result)
end

-- 用户名检测
-- 这段find代码的作用是：判断content中是否包含除了英文字母、数字和中文字符之外的其他字符
-- 如果是不同国家 需要把中文字符的utf-8编码修改
function hasReNameFilterWord(self, content)
    -- 中文的
    if content:find("[^a-zA-Z0-9\228-\233\128-\191\128-\191]") then return true end
    return self:hasFilterWord(content)
end

return _M