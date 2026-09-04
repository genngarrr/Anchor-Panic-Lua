-- 招募面板页签类型
recruit.RecruitType = {
    -- 高级招募
    RECRUIT_TOP = 1,
    -- 普通招募
    RECRUIT_COMMON = 2,
    -- 新手招募
    RECRUIT_NEW_PLAYER = 3,
    -- 手环研发
    RECRUIT_BRACELETS = 5,
    -- 活动招募
    RECRUIT_ACTIVITY_1 = 6,
    -- 手环活动研发
    RECRUIT_ACTIVITY_2 = 7,
    -- 活动招募
    RECRUIT_ACTIVITY_3 = 8,
    
    -- 定向战员链接
    RECRUIT_APP_ACTTOP = 11,
    --定向烙痕链接
    RECRUIT_APP_BRACELETS = 12,
}

-- 招募预先判断条件
recruit.RecruitJudge = {
    -- 道具充足
    PROPS_ENOUGH = 1,
    -- 道具不足，商城无出售
    PROPS_NOT_ENOUGH = 2,
    -- 道具不足，商城有出售，且货币充足
    MONEY_ENOUGH = 3,
    -- 道具不足，商城有出售，但货币不足
    MONEY_NOT_ENOUGH = 4,
    -- 道具不足，商城有出售，但购买次数不足
    BUY_TIMES_NOT_ENOUGH = 6,
}

recruit.getMainPanelTabDefine = function ()
    return
    {
        [recruit.RecruitType.RECRUIT_TOP] =
        {
            class = recruit.RecruitTopTabView,
            prefabsPath = "RecruitTopTab",
            redState = recruit.updatRecruitFreeRedState,
        },
        [recruit.RecruitType.RECRUIT_NEW_PLAYER] =
        {
            class = recruit.RecruitNewPlayerTabView,
            prefabsPath = "RecruitNewPlayerTab",
            redState = recruit.updateNewPlayRedState,
        },
        [recruit.RecruitType.RECRUIT_BRACELETS] =
        {
            class = recruit.RecruitBraceletsTabView,
            prefabsPath = "RecruitBraceletsTab",
            redState = recruit.updatRecruitFreeRedState,
        },
        [recruit.RecruitType.RECRUIT_ACTIVITY_1] =
        {
            class = recruit.RecruitActTopTabView,
            prefabsPath = "RecruitActTopTab",
            redState = recruit.getTrialRedState,
        },
        [recruit.RecruitType.RECRUIT_ACTIVITY_2] =
        {
            class = recruit.RecruitActBraceletsTabView,
            prefabsPath = "RecruitActBraceletsTab",
        },
        [recruit.RecruitType.RECRUIT_ACTIVITY_3] =
        {
            class = recruit.RecruitActPlayerTabView,
            prefabsPath = "RecruitActPlayerTab",
        },
        [recruit.RecruitType.RECRUIT_APP_ACTTOP] =
        {
            class = recruit.RecruitAppTopTabView,
            prefabsPath = "RecruitAppTopTab",
        },
        [recruit.RecruitType.RECRUIT_APP_BRACELETS] =
        {
            class = recruit.RecruitAppBraceletsTabView,
            prefabsPath = "RecruitAppBraceletsTab",
        },
    }
end

recruit.getTrialRedState = function (recruit_id)
    local configVo = recruit.RecruitManager:getRecruitConfigVo(recruit_id)
    local dupId = configVo:getTry_hero()

    return recruit.RecruitManager:getIsShowTrial(dupId)
end

--更新新手招募的红点状态
recruit.updateNewPlayRedState = function (recruit_id)
    local recruitInfo = recruit.RecruitManager:getRecruitInfo(recruit_id)
    if not recruitInfo then
        return false
    end

    if recruitInfo.recruit_daily_times >= sysParam.SysParamManager:getValue(SysParamType.RECRUIT_NEW_PLAYER_TIMES) then
        return false
    end

    local configVo = recruit.RecruitManager:getRecruitConfigVo(recruit_id)
    local costCount = configVo:getCostTenNum()
    local costTid = configVo:getCostTenId()
    local hasCount = MoneyUtil.getMoneyCountByTid(costTid)

    if (hasCount >= costCount) then
        return true
    end
    return false
end

--更新烙痕招募的红点状态
recruit.updatRecruitFreeRedState = function(recruit_id)
    local menuConfig = recruit.RecruitManager:getRecruitMenuVo(recruit_id)
    if not menuConfig then
        return false
    end
    if not funcopen.FuncOpenManager:isOpen(menuConfig.funcId) then
        return false
    end

    local RecruitInfo = recruit.RecruitManager:getRecruitInfo(recruit_id)
    if not RecruitInfo then
        return false
    end

    local RecruitConfigVo = recruit.RecruitManager:getRecruitConfigVo(recruit_id)
    if not RecruitConfigVo then
        return false
    end

    return RecruitInfo.free_times < RecruitConfigVo.free_times
end

--[[ 替换语言包自动生成，请勿修改！
语言包: _TT(563):"限定研发"
语言包: _TT(562):"限定招募"
语言包: _TT(560):"手环研发"
]]
