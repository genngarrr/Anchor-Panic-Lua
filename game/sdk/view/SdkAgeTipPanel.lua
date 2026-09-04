module('sdk.SdkAgeTipPanel', Class.impl(View))

UIRes = UrlManager:getUIPrefabPath('sdk/SdkAgeTipPanel.prefab')

destroyTime = -1 -- 自动销毁时间-1默认
panelType = 2    -- 窗口类型 1 全屏 2 弹窗
isAdapta = 0     --是否开启适配刘海 0 否 1 是

--构造函数
function ctor(self)
    super.ctor(self)
    self:setSize(1140, 520)
    self:setTxtTitle(_TT(10000001)) --年龄确认
    
end

function initData(self)
    self.mSdkAgeTipKey = "sdk.SdkAgeTipPanel"
    self.mMoney = 0
    self.mCall = nil
end

function configUI(self)
    self.mTxtTip1 = self:getChildGO("mTxtTip1"):GetComponent(ty.Text)
    self.mTxtTip2 = self:getChildGO("mTxtTip2"):GetComponent(ty.Text)
    self.mTxtLimitTip = self:getChildGO("mTxtLimitTip"):GetComponent(ty.Text)

    self.mInput = self:getChildGO("InputField"):GetComponent(ty.InputField)
    self.mTxtDefault = self.mInput.placeholder:GetComponent(ty.Text)
    self.mBtnCancel = self:getChildGO('mBtnCancel')
    self.mBtnConfirm = self:getChildGO('mBtnConfirm')
end

function initViewText(self)
    self:setBtnLabel(self.mBtnCancel, 2, "取消")
    self:setBtnLabel(self.mBtnConfirm, 1, "确定")
    self.mTxtDefault.text = _TT(10000002) --"出生年月（例：19890101）"
    self.mTxtTip1.text = _TT(10000003) --"根据你的年龄，一个月可以买多少。请务必填写正确的出生日期"
    self.mTxtTip2.text = _TT(10000004) --"以后不能更改出生日期"
    self.mTxtLimitTip.text = sdk.ChannelData:checkChannelText(_TT(10000005)) --"16岁未满 月5000\n16岁以上20岁未满 月20000\n20岁以上 无限制"
end

function addAllUIEvent(self)
    self:addUIEvent(self.mBtnCancel, self.onClickCancelHandler)
    self:addUIEvent(self.mBtnConfirm, self.onClickConfirmHandler)
end

function active(self)
    self.mInput.characterLimit = self:getCharacterLimitNum()
    self.mInput.text = ""
    self.mMoney = 0
    self.mCall = nil
    --local function inputChange(content)
    --    local str = string.gsub(content, "^[\\u4E00-\\u9FA5A-Za-z0-9]+$", "")
    --    self.mInput.text = str
    --end
    --self.mInput.onValueChanged:AddListener(inputChange)
end

function deActive(self)
end

function setCall(self, money, call)
    self.mMoney = money
    self.mCall = call

    local age = StorageUtil:getNumber1(self.mSdkAgeTipKey)
    if(age > 0)then
        self:close()
        self:checkAge(age)
    end
end

function onClickCancelHandler(self)
    self.mInput.text = ""
    self.mMoney = 0
    self.mCall = nil
    self:close()
end

function onClickConfirmHandler(self)
    local content = self.mInput.text
    if not content or content == "" then
        gs.Message.Show(_TT(10000006)) --请输入出生年月
        return
    end

    local limitLen = self:getCharacterLimitNum()
    if (string.getStringCharCount(content) > limitLen) then
        gs.Message.Show(_TT(10000007)) --出生年月最长为8位数
        return
    end

    if FilterWordUtil:HasReNameFilterWord(content) then
        gs.Message.Show(_TT(513)) --"存在敏感字或非法符号"
        return
    end

    local isLegal, year = self:getIsBirthdate(content)
    if (isLegal) then
        local time = os.date("*t", GameManager:getClientTime() - 5 * 60 * 60)
        local age = time.year - year
        self:checkAge(age)
    else
        gs.Message.Show(_TT(10000008)) --出生年月格式错误
    end
end

function checkAge(self, age)
    if (0 < age and age <= 100) then
        local limitTip = ""
        local isLimit = false
        if (age < 16) then
            isLimit = self.mMoney > 5000
            limitTip = _TT(10000009) --"16岁未满 月5000"
        elseif (16 <= age and age < 20) then
            isLimit = self.mMoney > 20000
            limitTip = _TT(10000010) --"16岁以上20岁未满 月20000"
        else
            isLimit = false
            limitTip = ""
        end

        if (isLimit) then
            UIFactory:alertMessge(
                string.format(_TT(10000011), limitTip), --"本次已达每月收费上限\n%s"
                true,
                function()
                end, _TT(1), --"确定"
                nil,
                false,
                function()
                end, nil,
                _TT(10000012), --"购买错误"
                nil,
                nil)
        else
            StorageUtil:saveNumber1(self.mSdkAgeTipKey, age)
            self:close()
            self.mCall()
        end
    else
        gs.Message.Show(_TT(10000013)) --"年龄过大异常"
    end
end

-- 玩家点击关闭
function onClickClose(self)
    super.onClickClose(self)
end

function getCharacterLimitNum(self)
    return 8
end

function getIsBirthdate(self, birthdate)
    local pattern = "^%d%d%d%d%d%d%d%d$" -- 正则表达式，匹配8位数字
    local match = string.match(birthdate, pattern)
    if match then
        local year = tonumber(string.sub(match, 1, 4))
        local month = tonumber(string.sub(match, 5, 6))
        local day = tonumber(string.sub(match, 7, 8))
        if year and month and day then
            if month >= 1 and month <= 12 and day >= 1 and day <= 31 then
                -- 进一步检查是否为闰年及月份的天数
                if (month == 4 or month == 6 or month == 9 or month == 11) or
                    (month == 2 and ((year % 4 == 0 and year % 100 ~= 0) or (year % 400 == 0))) then
                    if day > 30 then
                        return false, year
                    end
                end
                return true, year
            end
        end
    end
    return false, 0
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]
