module("recruit.RecruitActBraceletsTabView", Class.impl(recruit.CustomSubView))

--构造函数
function ctor(self, prefabPath, recruit_id)
    super.ctor(self, prefabPath)

    self.m_recruitId = recruit_id
end

-- 初始化数据
function initData(self)

end

function configUI(self)
    super.configUI(self)
    self.m_btnLog = self:getChildGO("BtnLog")
    self.m_btnRule = self:getChildGO("BtnRule")
    self.mBtnOne = self:getChildGO("BtnOne")
    self.mBtnTen = self:getChildGO("BtnTen")

    self.m_propsIcon_one = self:getChildGO("PropsIcon_one"):GetComponent(ty.AutoRefImage)
    self.m_textCount_one = self:getChildGO("TextCount_one"):GetComponent(ty.Text)
    self.m_propsIcon_ten = self:getChildGO("PropsIcon_ten"):GetComponent(ty.AutoRefImage)
    self.m_textCount_ten = self:getChildGO("TextCount_ten"):GetComponent(ty.Text)

    self.mTextTime = self:getChildGO("mTextTime"):GetComponent(ty.Text)
    self.mBtnLook = self:getChildGO("mBtnLook")
    self.mBtnShop = self:getChildGO("BtnShop")
    self.mTxtData = self:getChildGO("mTxtData"):GetComponent(ty.Text)
    self.mDebugUpInfo = self:getChildGO("mDebugUpInfo")

    self.mText_2 = self:getChildGO("mText_2"):GetComponent(ty.Text)
    self.mText_3 = self:getChildGO("mText_3"):GetComponent(ty.Text)

    self.mTextRule = self:getChildGO("mTextRule"):GetComponent(ty.Text)
    self.mTextLog = self:getChildGO("mTextLog"):GetComponent(ty.Text)
    self.mTextShop = self:getChildGO("mTextShop"):GetComponent(ty.Text)
end

function active(self)
    GameDispatcher:addEventListener(EventName.UPDATE_RECRUIT_PANEL, self.__onUpdateViewHandler, self)
    self:__updateView(true)
end

function deActive(self)
    GameDispatcher:removeEventListener(EventName.UPDATE_RECRUIT_PANEL, self.__onUpdateViewHandler, self)
end

function initViewText(self)
    super.initViewText(self)

    -- self.mText_2.text = _TT(28049)

    self.mTextRule.text = _TT(28005)
    self.mTextLog.text = _TT(28060)
    self.mTextShop.text = _TT(28061)

    self:setBtnLabel(self.mBtnOne, 28035, "招募一次")
    self:setBtnLabel(self.mBtnTen, 28036, "招募十次")
end

function addAllUIEvent(self)
    self:addUIEvent(self.mBtnLook, self.onClickLookTips)
    self:addUIEvent(self.mBtnShop, self.onClickShop)

    self:addUIEvent(self.m_btnLog, self.__onClickLogHandler)
    self:addUIEvent(self.m_btnRule, self.__onClickRuleHandler)
    self:addUIEvent(self.mBtnOne, self.__onClickOneHandler)
    self:addUIEvent(self.mBtnTen, self.__onClickTenHandler)
end

function onClickLookTips(self)
    local configVo = recruit.RecruitManager:getRecruitConfigVo(self.m_recruitId)

    local equipVo = LuaPoolMgr:poolGet(props.EquipVo)
    equipVo:setTid(configVo.show_item)
    TipsFactory:equipTips(equipVo)
end

function onClickShop(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_LINK_UI, {linkId = LinkCode.CovenantShop})
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
    if not configVo then
        logError("item_recruit_data 表中没有id = "..self.m_recruitId .. "的卡池")
        return
    end

    local recruit_info = recruit.RecruitManager:getRecruitInfo(self.m_recruitId)
    if recruit_info then
        self.mText_3.text = _TT(28047, recruit_info.guaranteed_limit - recruit_info.guaranteed_times + 1)
        if recruit_info.total_count > 0 then
            self.mText_2.text = _TT(10000335, configVo.add_num - (recruit_info.total_count % configVo.add_num))
        else
            self.mText_2.text = _TT(10000335, configVo.add_num)
        end
    end

    local costMoneyTid_one = configVo:getCostOneId()
    local costMoneyCount_one = configVo:getCostOneNum()
    local costMoneyTid_ten = configVo:getCostTenId()
    local costMoneyCount_ten = configVo:getCostTenNum()

    self.m_propsIcon_one:SetImg(UrlManager:getPropsIconUrl(costMoneyTid_one), false)
    self.m_textCount_one.text = "x" .. costMoneyCount_one
    self.m_propsIcon_ten:SetImg(UrlManager:getPropsIconUrl(costMoneyTid_ten), false)
    self.m_textCount_ten.text = "x" .. costMoneyCount_ten

    self:upateActTime()

    if GameManager.IS_DEBUG then
        self.mDebugUpInfo:SetActive(true)

        local debugUpInfo = recruit.RecruitManager:getDebugShowRecruitUpInfoMsg(self.m_recruitId)
        if debugUpInfo then
            local item_recruitConfig = recruit.RecruitManager:getRecruitConfigVo(debugUpInfo.id)
            local configVo = recruit.RecruitManager:getRecruitConfigVo(self.m_recruitId)

            local equipVo = LuaPoolMgr:poolGet(props.EquipVo)
            equipVo:setTid(item_recruitConfig.show_item)

            local msg = ""
            for i, v in ipairs(debugUpInfo.other_ratio) do
                msg = msg .. v.key .. ": " .. v.value .. "\n"
            end
            self.mTxtData.text = "当前UP烙痕：" .. equipVo:getName() .. " tid: " .. item_recruitConfig.show_item .. "\n当前UP烙痕权重：" .. debugUpInfo.up_ratio .. "\n其他烙痕权重：\n" .. msg
        else
            self.mTxtData.text = "获取UP Debug数据出错了，请排查是否是配置出错。卡池ID:" .. self.m_recruitId
        end
    else
        self.mDebugUpInfo:SetActive(false)
        self.mTxtData.text = ""
    end
end

function upateActTime(self)
    local menuVo = recruit.RecruitManager:getRecruitMenuVo(self.m_recruitId)

    local beginTime = TimeUtil.getMDHByTime2(TimeUtil.transTime(menuVo.beginTime))
    local endTime, endHour = TimeUtil.getMDHByTime2(TimeUtil.transTime(menuVo.endTime))
    self.mTextTime.text = string.format("%s%s    %s", _TT(28046), endTime, endHour)
end

return _M

--[[ 替换语言包自动生成，请勿修改！
语言包: _TT(572):"未可领取"
语言包: _TT(7):"已领取"
]]
