module("recruit.RecruitTopTabView", Class.impl(recruit.CustomSubView))

--构造函数
function ctor(self, prefabPath, recruit_id)
    super.ctor(self, prefabPath)

    self.m_recruitId = recruit_id
end

-- 初始化数据
function initData(self)

end

function configUI(self)
    self.m_btnLog = self:getChildGO("BtnLog")
    self.m_btnRule = self:getChildGO("BtnRule")
    self.mBtnOne = self:getChildGO("BtnOne")
    self.mBtnTen = self:getChildGO("BtnTen")

    self.m_propsIcon_one = self:getChildGO("PropsIcon_one"):GetComponent(ty.AutoRefImage)
    self.m_textCount_one = self:getChildGO("TextCount_one"):GetComponent(ty.Text)
    self.m_propsIcon_ten = self:getChildGO("PropsIcon_ten"):GetComponent(ty.AutoRefImage)
    self.m_textCount_ten = self:getChildGO("TextCount_ten"):GetComponent(ty.Text)

    self.mAnimator = self.UIObject:GetComponent(ty.Animator)
    self.mAnimator:Play("RecruitTopTab_Enter01")

    self:setGuideTrans("recruit_top_btn_one", self.mBtnOne.transform)

    self.mTextRule = self:getChildGO("mTextRule"):GetComponent(ty.Text)
    self.mTextLog = self:getChildGO("mTextLog"):GetComponent(ty.Text)

    self.mText_2 = self:getChildGO("mText_2"):GetComponent(ty.Text)
end

function active(self)
    GameDispatcher:addEventListener(EventName.UPDATE_RECRUIT_PANEL, self.__onUpdateViewHandler, self)
    self:__updateView(true)

    if recruit.RecruitManager:getIsFirstOpenTopRecruit() then
        self.mAnimator:Play("RecruitTopTab_Enter02")
    end
    recruit.RecruitManager:setIsFirstOpenTopRecruit(true)
end

function deActive(self)
    GameDispatcher:removeEventListener(EventName.UPDATE_RECRUIT_PANEL, self.__onUpdateViewHandler, self)
end

function onClickClose(self)
    recruit.RecruitManager:setIsFirstOpenTopRecruit(false)
end

function initViewText(self)
    self:setBtnLabel(self.mBtnOne, 28007, "招募一次")
    self:setBtnLabel(self.mBtnTen, 28008, "招募十次")

    self.mTextRule.text = _TT(28005)
    self.mTextLog.text = _TT(28060)
end

function addAllUIEvent(self)
    self:addUIEvent(self.m_btnLog, self.__onClickLogHandler)
    self:addUIEvent(self.m_btnRule, self.__onClickRuleHandler)
    self:addUIEvent(self.mBtnOne, self.__onClickOneHandler)
    self:addUIEvent(self.mBtnTen, self.__onClickTenHandler)
end

function __onClickLogHandler(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_RECRUIT_LOG_PANEL, {id = self.m_recruitId})
end

function __onClickRuleHandler(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_RECRUIT_RULE_PANEL, {id = self.m_recruitId})
end

function __onClickOneHandler(self)
    if (recruit.RecruitManager.recruitTopTimes + 1 > sysParam.SysParamManager:getValue(SysParamType.RECRUIT_TOP_DAILY_MAX)) then
        gs.Message.Show(_TT(28009))--"不可超过招募次数上限"
    else
        self:checkSend(self.m_recruitId, 1)
    end
end

function __onClickTenHandler(self)
    if (recruit.RecruitManager.recruitTopTimes + 10 > sysParam.SysParamManager:getValue(SysParamType.RECRUIT_TOP_DAILY_MAX)) then
        gs.Message.Show(_TT(28009))--"不可超过招募次数上限"
    else
        self:checkSend(self.m_recruitId, 10)
    end
end

function checkSend(self, recruitId, times)
    GameDispatcher:dispatchEvent(EventName.SEND_RECRUIT, {id = recruitId, times = times})
end

function __onUpdateViewHandler(self, args)
    self:__updateView(false)
end

function __updateView(self, cusIsInit)
    local configVo = recruit.RecruitManager:getRecruitConfigVo(self.m_recruitId)
    local costMoneyTid_one = configVo:getCostOneId()
    local costMoneyCount_one = configVo:getCostOneNum()
    local costMoneyTid_ten = configVo:getCostTenId()
    local costMoneyCount_ten = configVo:getCostTenNum()

    self.m_propsIcon_one:SetImg(UrlManager:getPropsIconUrl(costMoneyTid_one), false)
    self.m_textCount_one.text = "x" .. costMoneyCount_one
    self.m_propsIcon_ten:SetImg(UrlManager:getPropsIconUrl(costMoneyTid_ten), false)
    self.m_textCount_ten.text = "x" .. costMoneyCount_ten

    local recruit_info = recruit.RecruitManager:getRecruitInfo(self.m_recruitId)
    if recruit_info then
        if recruit_info.total_count > 0 then
            self.mText_2.text = _TT(10000334, configVo.add_num - recruit_info.total_count)
        else
            self.mText_2.text = _TT(10000334, configVo.add_num)
        end
    end
end


return _M

--[[ 替换语言包自动生成，请勿修改！
]]
