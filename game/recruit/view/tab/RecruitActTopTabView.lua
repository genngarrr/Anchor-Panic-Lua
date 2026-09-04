module("recruit.RecruitActTopTabView", Class.impl(recruit.CustomSubView))

--构造函数
function ctor(self, prefabPath, recruit_id)
    super.ctor(self, prefabPath)

    self.m_recruitId = recruit_id
end

-- 初始化数据
function initData(self)

end

function configUI(self)
    self.mBtnLog = self:getChildGO("BtnLog")
    self.mBtnRule = self:getChildGO("BtnRule")
    self.mBtnOne = self:getChildGO("BtnOne")
    self.mBtnTen = self:getChildGO("BtnTen")
    self.mBtnTrial = self:getChildGO("BtnTrial")
    self.mBtnDetails = self:getChildGO("mBtnDetails")
    self.mBtnShop = self:getChildGO("BtnShop")

    self.mPropsIcon_one = self:getChildGO("PropsIcon_one"):GetComponent(ty.AutoRefImage)
    self.mTxtCount_one = self:getChildGO("TextCount_one"):GetComponent(ty.Text)
    self.mPropsIcon_ten = self:getChildGO("PropsIcon_ten"):GetComponent(ty.AutoRefImage)
    self.mTextCount_ten = self:getChildGO("TextCount_ten"):GetComponent(ty.Text)

    self.mImgPro = self:getChildGO("mImgPro"):GetComponent(ty.AutoRefImage)
    self.mImgEleType = self:getChildGO("mImgEleType"):GetComponent(ty.AutoRefImage)
    self.mTextHeroName = self:getChildGO("mTextHeroName"):GetComponent(ty.Text)

    self.mTxtActivetyTime = self:getChildGO("mTxtActivetyTime"):GetComponent(ty.Text)
    self.mTxtData = self:getChildGO("mTxtData"):GetComponent(ty.Text)
    self.mDebugUpInfo = self:getChildGO("mDebugUpInfo")

    self.mText_1 = self:getChildGO("mText_1"):GetComponent(ty.Text)
    self.mText_2 = self:getChildGO("mText_2"):GetComponent(ty.Text)
    self.mText_3 = self:getChildGO("mText_3"):GetComponent(ty.Text)

    self.mTextRule = self:getChildGO("mTextRule"):GetComponent(ty.Text)
    self.mTextLog = self:getChildGO("mTextLog"):GetComponent(ty.Text)

    self.mImgIcon = self:getChildGO("mImgIcon"):GetComponent(ty.AutoRefImage)

    -- self.mGlow = self:getChildGO("mGlow")

    self.mGroupBg = self:getChildGO("mGroupBg")
    -- self.mGroupBg:SetActive(false)

    self.mTrialRedPoint = self:getChildTrans("mTrialRedPoint")
    self.mTextShop = self:getChildGO("mTextShop"):GetComponent(ty.Text)

end

function active(self)
    GameDispatcher:addEventListener(EventName.UPDATE_RECRUIT_PANEL, self.onUpdateViewHandler, self)

    -- self.mGlow:SetActive(false)

    self.mGroupBg:SetActive(true)

    self:updateView()
    self:updateShowActivetyTimer()
    self:updateTrial_RedState()
end

function deActive(self)
    GameDispatcher:removeEventListener(EventName.UPDATE_RECRUIT_PANEL, self.onUpdateViewHandler, self)

    -- self:clearAcitivety()

    self.mGroupBg:SetActive(false)

    if self.tween1 then
        self.tween1:Kill()
    end
    if self.tween2 then
        self.tween2:Kill()
    end
end

function initViewText(self)
    self:setBtnLabel(self.mBtnOne, 28007, "招募一次")
    self:setBtnLabel(self.mBtnTen, 28008, "招募十次")

    self.mTextRule.text = _TT(28005)
    self.mTextLog.text = _TT(28060)

    self.mText_1.text = _TT(551)
    -- self.mText_2.text = _TT(28048)
    self.mTextShop.text = _TT(28061)

end

function addAllUIEvent(self)
    self:addUIEvent(self.mBtnLog, self.onClickLogHandler)
    self:addUIEvent(self.mBtnRule, self.onClickRuleHandler)
    self:addUIEvent(self.mBtnOne, self.onClickOneHandler)
    self:addUIEvent(self.mBtnTen, self.onClickTenHandler)
    self:addUIEvent(self.mBtnTrial, self.onClickTrial)
    self:addUIEvent(self.mBtnDetails, self.onClickDetails)
    self:addUIEvent(self.mBtnShop, self.onClickShop)

end

function updateShowActivetyTimer(self)
    -- self:clearAcitivety()

    self:showActivetyTime()
    -- self.activetyTimeShowTimer = self:addTimer(1,0,self.showActivetyTime)
end

function showActivetyTime(self)

    local menuVo = recruit.RecruitManager:getRecruitMenuVo(self.m_recruitId)
    local endTime, endHour = TimeUtil.getMDHByTime2(TimeUtil.transTime(menuVo.endTime))
    self.mTxtActivetyTime.text = string.format("%s%s  %s", _TT(28046), endTime, endHour)
end

function onClickShop(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_LINK_UI, {linkId = LinkCode.ShopArenaHell})
end

function onClickDetails(self)
    local configVo = recruit.RecruitManager:getRecruitConfigVo(self.m_recruitId)
    GameDispatcher:dispatchEvent(EventName.OPEN_HERO_RECRUITINFOPANEL, {heroTid = configVo:getTrailHero_id()})
end

function onClickTrial(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_MAINACTIVITY_TRIAL_PANEL, {recruit_id = self.m_recruitId})
end

function onClickLogHandler(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_RECRUIT_LOG_PANEL, {id = self.m_recruitId})
end

function onClickRuleHandler(self)
    GameDispatcher:dispatchEvent(EventName.OPEN_RECRUIT_RULE_PANEL, {id = self.m_recruitId})
end

function onClickOneHandler(self)
    if self:getToDayRecruitTimes() + 1 > sysParam.SysParamManager:getValue(SysParamType.RECRUIT_TOP_DAILY_MAX) then
        gs.Message.Show(_TT(28009))--"不可超过招募次数上限"
    else
        self:checkSend(self.m_recruitId, 1)
    end
end

function onClickTenHandler(self)
    if self:getToDayRecruitTimes() + 1 > sysParam.SysParamManager:getValue(SysParamType.RECRUIT_TOP_DAILY_MAX) then
        gs.Message.Show(_TT(28009))--"不可超过招募次数上限"
    else
        self:checkSend(self.m_recruitId, 10)
    end
end

-- 今日已招募次数
function getToDayRecruitTimes(self)
    return recruit.RecruitManager:getRecruitInfo(self.m_recruitId).recruit_daily_times
end

function checkSend(self, recruitId, times)
    GameDispatcher:dispatchEvent(EventName.SEND_RECRUIT, {id = recruitId, times = times})
end

function onUpdateViewHandler(self, args)
    self:updateView()
end

function updateView(self)
    local configVo = recruit.RecruitManager:getRecruitConfigVo(self.m_recruitId)
    if not configVo then
        logError("item_recruit_data 表中没有id = "..self.m_recruitId .. "的卡池")
        return
    end

    local recruit_info = recruit.RecruitManager:getRecruitInfo(self.m_recruitId)
    if recruit_info then
        self.mText_3.text = _TT(28047, recruit_info.guaranteed_limit - recruit_info.guaranteed_times + 1)
        if recruit_info.total_count > 0 then
            self.mText_2.text = _TT(10000334, configVo.add_num - recruit_info.total_count)
        else
            self.mText_2.text = _TT(10000334, configVo.add_num)
        end
    end

    local costMoneyTid_one = configVo:getCostOneId()
    local costMoneyCount_one = configVo:getCostOneNum()
    local costMoneyTid_ten = configVo:getCostTenId()
    local costMoneyCount_ten = configVo:getCostTenNum()

    self.mPropsIcon_one:SetImg(UrlManager:getPropsIconUrl(costMoneyTid_one), false)
    self.mTxtCount_one.text = "x" .. costMoneyCount_one
    self.mPropsIcon_ten:SetImg(UrlManager:getPropsIconUrl(costMoneyTid_ten), false)
    self.mTextCount_ten.text = "x" .. costMoneyCount_ten

    local configHeroVo = hero.HeroManager:getHeroConfigVo(configVo:getTrailHero_id())
    self.mImgEleType:SetImg(UrlManager:getHeroEleTypeIconUrl(configHeroVo.eleType), false)
    self.mImgPro:SetImg(UrlManager:getHeroJobSmallIconUrl(configHeroVo.professionType), false)
    self.mTextHeroName.text = configHeroVo.name

    if GameManager.IS_DEBUG then
        self.mDebugUpInfo:SetActive(true)

        local debugUpInfo = recruit.RecruitManager:getDebugShowRecruitUpInfoMsg(self.m_recruitId)
        if debugUpInfo then
            local item_recruitConfig = recruit.RecruitManager:getRecruitConfigVo(debugUpInfo.id)
            local hero_id = item_recruitConfig:getTrailHero_id()
            local upHeroVo = hero.HeroManager:getHeroConfigVo(hero_id)

            local msg = ""
            for i, v in ipairs(debugUpInfo.other_ratio) do
                msg = msg .. v.key .. ": " .. v.value .. "\n"
            end
            self.mTxtData.text = "当前大保底UP战员：" .. upHeroVo.name .. " tid: " .. hero_id .. "\n当前UP战员权重：" .. debugUpInfo.up_ratio .. "\n其他战员权重：\n" .. msg
        else
            self.mTxtData.text = "获取UP Debug数据出错了，请排查是否是配置出错。卡池ID:" .. self.m_recruitId
        end
    else
        self.mDebugUpInfo:SetActive(false)
        self.mTxtData.text = ""
    end

    -- self.mTxtName.text = configHeroVo.name

    self:updateHead()
end

function updateHead(self)
    local configVo = recruit.RecruitManager:getRecruitConfigVo(self.m_recruitId)

    local configHeroVo = hero.HeroManager:getHeroConfigVo(configVo:getTrailHero_id())
    if configHeroVo.getHeroModel and configHeroVo:getHeroModel() ~= nil then
        self.mImgIcon:SetImg(UrlManager:getHeroHeadUrlByModel(configHeroVo:getHeroModel()), false)
    elseif (configHeroVo.head) then
        self.mImgIcon:SetImg(UrlManager:getIconPath(configHeroVo.head), false)
    elseif configHeroVo.headUrl then
        self.mImgIcon:SetImg(configHeroVo.headUrl, false)
    else
        self.mImgIcon:SetImg(UrlManager:getHeroHeadUrl(configHeroVo.tid), false)
    end
end

function updateTrial_RedState(self)
    local configVo = recruit.RecruitManager:getRecruitConfigVo(self.m_recruitId)
    local dupId = configVo:getTry_hero()

    local trial_RedState = recruit.RecruitManager:getIsShowTrial(dupId)
    if trial_RedState then
        RedPointManager:add(self.mTrialRedPoint, nil, 0, 0)
    else
        RedPointManager:remove(self.mTrialRedPoint)
    end
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]
