--[[ 
-----------------------------------------------------
@filename       : MainActivitySignItem
@Description    : 活动签到item
@date           : 2023-5-29 15:59:00
@Author         : Shuai
@copyright      : (LY) 2023 雷焰网络
-----------------------------------------------------
]]
module("mainActivity.MainActivitySignItem", Class.impl("lib.component.BaseItemRender"))

--构造函数
function ctor(self)
    super.ctor(self)
end

function onInit(self, go)
    super.onInit(self, go)
    self.mItemList = {}
    self.mBtnGet = self:getChildGO("mBtnGet")
    self.mBtnNotGet = self:getChildGO("mBtnNotGet")
    self.mBtnRecived = self:getChildGO("mBtnRecived")
    self.mAwardTrans = self:getChildTrans("mAwardTrans")
    self.mTxtDay = self:getChildGO("mTxtDay"):GetComponent(ty.Text)
    GameDispatcher:addEventListener(EventName.MAINACTIVITY_SIGN_UPDATE, self.updateState, self)

    self:getChildGO("mTxtRecived"):GetComponent(ty.Text).text = _TT(411)
    self:getChildGO("mTxtCanRecive"):GetComponent(ty.Text).text = _TT(412)
    self:getChildGO("mTxtUnclaimable"):GetComponent(ty.Text).text = _TT(29109)
end
function setData(self, param)
    super.setData(self, param)
    self:recoverAllGrid()
    self:updateState()
    self.mTxtDay.text = self.data:getDaily()
    local awardList = self.data:getAwardList()
    for _, awardVo in ipairs(self.data:getAwardList()) do
        local propsGrid = PropsGrid:create(self.mAwardTrans, { awardVo[1], awardVo[2] }, 1)
        propsGrid:setCountTextSize(26)
        table.insert(self.mItemList, propsGrid)
    end
end

-- UI事件管理
function addAllUIEvent(self)
    self:addUIEvent(self.mBtnGet, self.onClickGetHandler)
    self:addUIEvent(self.mBtnNotGet, self.onClickHandler, nil, false)
    self:addUIEvent(self.mBtnRecived, self.onClickHandler, nil, true)
end

function updateState(self)
    self.mBtnGet:SetActive(self.data:getCanReceive())
    self.mBtnRecived:SetActive(self.data:getIsSign())
    self.mBtnNotGet:SetActive((not self.data:getCanReceive()) and (not self.data:getIsSign()))
end

--领取函数
function onClickGetHandler(self)
    GameDispatcher:dispatchEvent(EventName.REQ_MAINACTIVITY_SIGN, self.data.daily)
end

--前往函数
function onClickHandler(self, isNot)
    if isNot then
        gs.Message.Show(_TT(411))--已领取
    else
        gs.Message.Show(_TT(48117))--签到天数不足，无法领取
    end
end

function recoverAllGrid(self)
    for i = 1, #self.mItemList do
        self.mItemList[i]:poolRecover()
    end
    self.mItemList = {}
end

function deActive(self)
    super.deActive(self)
    self:recoverAllGrid()
end

function onDelete(self)
    super.onDelete(self)
    GameDispatcher:removeEventListener(EventName.MAINACTIVITY_SIGN_UPDATE, self.updateState, self)
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]