--[[
-----------------------------------------------------
@filename       : CustomFoldBar
@Description    : 自定义折叠页签组件
@date           : 2021-06-09 15:07:19
@Author         : Jacob
@copyright      : (LY) 2021 雷焰网络
-----------------------------------------------------
]]
module('lib.component.CustomFoldBar', Class.impl())

function ctor(self)
    self.m_TabItemDic = {}
end

-- 创建页签组件
function create(self, tabGo, subTabGo, tabParent, selectCall, callThis, tabData, tabPoolName, subPoolName)
    local item = LuaPoolMgr:poolGet(self)
    item.m_tabGo = tabGo
    item.m_subTabGo = subTabGo
    item.m_tabParent = tabParent
    item.m_selectCall = selectCall
    item.m_callThis = callThis
    item.m_data = tabData
    item.m_tabPoolName = tabPoolName
    item.m_subPoolName = subPoolName

    if item.m_data then
        item:setItems()
    end
    return item
end

-- 传入数据
function setData(self, data)
    self.m_data = data
    self:setItems()
end

-- 构造页签按钮组
function setItems(self)
    self:poolRecover()

    for i, tabData in ipairs(self.m_data) do
        -- 创建一级列表
        local tabItem = self:createTabItem(tabData)
        self.m_TabItemDic[tabData.tap_type] = tabItem
    end
end

-- 创建一级按钮
function createTabItem(self, data)
    local tab = {}
    tab.m_data = data
    tab.m_subTab = {}
    tab.m_redCount = 0

    local item = SimpleInsItem:create(self.m_tabGo, self.m_tabParent, self.m_tabPoolName)
    tab.m_item = item
    tab.select = function (_item)
        for tap_type, tab in pairs(self.m_TabItemDic) do
            tab:unSelect()
        end

        local tabItem = _item.m_item
        tabItem:getChildGO("mSelect"):SetActive(true)

        if table.nums(_item.m_subTab) > 1 then
            tabItem:getChildGO("mSubItemGroup"):SetActive(true)
            _item.m_subTab[1]:select()
        else
            self:onSelect(data)
        end
    end

    tab.unSelect = function (_item)
        local tabItem = _item.m_item
        if table.nums(_item.m_subTab) > 1 then
            tabItem:getChildGO("mSubItemGroup"):SetActive(false)
        end

        tabItem:getChildGO("mSelect"):SetActive(false)
    end

    item:addUIEvent("mClick", function()
        tab:select()
    end)

    self:refreshTabInfo(item, data)

    local subParent = item:getChildTrans("mSubItemGroup")
    if subParent == nil or gs.GoUtil.IsTransNull(subParent) then
        logError("子tab的父节点mSubItemGroup 找不到")
        return
    end
    subParent.gameObject:SetActive(false)

    for _, subData in pairs(data.subData) do
        local subItem = self:createSubItem(subParent, subData)
        table.insert(tab.m_subTab, subItem)
    end

    return tab
end

-- 更新一级按钮信息
function refreshTabInfo(self, item, data)
    if item:getChildGO("mImgIcon") and data.iconPath then
        item:getChildGO("mImgIcon"):GetComponent(ty.AutoRefImage):SetImg(data.iconPath)
    end

    if item:getChildGO("mTxtEn") then
        item:setText("mTxtEn", data.enId)
    end

    if item:getChildGO("mImgSign") then
        item:getChildGO("mImgSign"):SetActive(data.sign)
    end
end

--创建二级tab
function createSubItem(self, subParent, data)
    local item = SimpleInsItem:create(self.m_subTabGo, subParent, self.m_subPoolName)
    item.m_data = data
    item.select = function (_item)
        local tab = self.m_TabItemDic[data.tap_type]
        for _, subItem in pairs(tab.m_subTab) do
            subItem:unSelect()
        end

        _item:getChildGO("mSelect"):SetActive(true)

        self:onSelect(data)
    end

    item.unSelect = function (_item)
        _item:getChildGO("mSelect"):SetActive(false)
    end

    item:addUIEvent(nil, function()
        item:select()
    end)

    self:refreshSubInfo(item, data)

    return item
end

function refreshSubInfo(self, item, data)
    if item:getChildGO("mTextEn") then
        item:setText("mTextEn", data.sub_lang)
    end
end

function onSelect(self, data)
    if self.m_selectCall then
        self.m_selectCall(self.m_callThis, data)
    end
end

function selectTab(self, recruit_id)
    for tap_type, tabData in pairs(self.m_TabItemDic) do
        if not table.empty(tabData.m_subTab) then
            for _, subTab in pairs(tabData.m_subTab) do
                if subTab.m_data.id == recruit_id then
                    tabData:select()
                    subTab:select()
                    break
                end
            end
        else
            if tabData.m_data.id == recruit_id then
                tabData:select()
                break
            end
        end
    end
end

function getItemDic(self)
    return self.m_TabItemDic
end

-- 加红点
function addBubble(self, recruit_id, tabPos, subPos)
    for tap_type, tabData in pairs(self.m_TabItemDic) do
        if tabData.m_subTab then
            for _, subTab in pairs(tabData.m_subTab) do
                if subTab.m_data.id == recruit_id then
                    RedPointManager:add(tabData.m_item:getChildTrans("redPoint"), nil, tabPos.x, tabPos.y)
                    tabData.m_redCount = tabData.m_redCount + 1

                    RedPointManager:add(subTab:getChildTrans("redPoint"), nil, subPos.x, subPos.y)
                    break
                end
            end
        else
            if tabData.m_data.id == recruit_id then
                RedPointManager:add(tabData.m_item:getTrans(), nil, tabPos.x, tabPos.y)
                tabData.m_redCount = tabData.m_redCount + 1
                break
            end
        end
    end
end

-- 移除红点
function removeBubble(self, recruit_id)
    for tap_type, tabData in pairs(self.m_TabItemDic) do
        local tabItem = tabData.m_item
        if tabData.m_subTab then
            for _, subTab in pairs(tabData.m_subTab) do
                if subTab.m_data.id == recruit_id then
                    tabData.m_redCount = tabData.m_redCount - 1
                    if tabData.m_redCount <= 0 then
                        tabData.m_redCount = 0
                        RedPointManager:remove(tabItem:getTrans())
                    end

                    RedPointManager:remove(subTab:getTrans())
                    break
                end
            end
        else
            if tabItem.m_data.id == recruit_id then
                tabData.m_redCount = tabData.m_redCount - 1
                if tabData.m_redCount <= 0 then
                    tabData.m_redCount = 0
                    RedPointManager:remove(tabItem:getTrans())
                end
                break
            end
        end
    end
end

function removeAllBubble(self)
    for tap_type, tabData in pairs(self.m_TabItemDic) do
        local tabItem = tabData.m_item
        for _, subTab in pairs(tabData.m_subTab) do
            RedPointManager:remove(tabItem:getTrans())
            RedPointManager:remove(subTab:getTrans())
        end
    end
end

-- 回收按钮
function poolRecover(self)
    self:removeAllBubble()

    for _, tabData in pairs(self.m_TabItemDic) do
        for _, subTab in pairs(tabData.m_subTab) do
            subTab:poolRecover()
        end
        tabData.m_subTab = {}
        tabData.m_data = nil
        tabData.m_redCount = 0
        tabData.m_item:poolRecover()
    end
    self.m_TabItemDic = {}
end

-- 重置
function reset(self)
    self.m_tabGo = nil
    self.m_subTabGo = nil
    self.m_tabParent = nil
    self.m_selectCall = nil
    self.m_callThis = nil
    self.m_data = nil
    self.m_tabPoolName = nil
    self.m_subPoolName = nil

    LuaPoolMgr:poolRecover(self)
    self:poolRecover()
end
return _M

--[[ 替换语言包自动生成，请勿修改！
]]
