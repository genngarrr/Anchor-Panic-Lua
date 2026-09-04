--[[
-----------------------------------------------------
@filename       : MainActivityVo
@Description    : 活动数据
@date           : 2023-05-22 15:45:15
@Author         : Shuai
@copyright      : (LY) 2023 雷焰网络
-----------------------------------------------------
]]
module('game.mainActivity.manager.vo.MainActivityVo', Class.impl())

function parseConfigData(self, key, cusData)
    self.id = key
    if cusData.begin_time[1] then
        -- body
        self.startTime = TimeUtil.transTime(cusData.begin_time)
    end
    if cusData.end_time[1] then
        -- body
        self.endTime = TimeUtil.transTime(cusData.end_time)
    end
    if cusData.remove_time[1] then
        -- body
        self.overTime = TimeUtil.transTime(cusData.remove_time)
    end
    self.name = cusData.text
    self.funcId = cusData.function_id
    self.uiCode = cusData.ui_code
end

function getFuncId(self)
    return self.funcId
end

function getUiCode(self)
    return self.uiCode
end

--获取未解锁描述
function getLockDec(self)
    if self:getTimeRemaining() <= 0 then
        return _TT(95053)
    else
        local day, time = TimeUtil.getMDHByTime2(self.startTime)
        return _TT(92026) .. " " .. day .. " " .. time 
    end
end

--判断功能与活动是否全部开启
function getIsCanOpen(self)
    local activityVo = activity.ActivityManager:getActivityVoById(self.id)
    return activityVo ~= nil
end

--获取结束时间-
function getTimeRemaining(self)
    local activityVo = activity.ActivityManager:getActivityVoById(self.id)
    if activityVo then
        return activityVo:getOverTime() - GameManager:getClientTime()
    end
    return self.overTime - GameManager:getClientTime()
end

--获取剩余时间
function getRemainingTime(self)
    local md, hm = TimeUtil.getMDHByTime2(self.overTime)
    return md .. " " .. hm
end
--获取活动开启时间段
function getActiveTimePeriod(self)
    local md, hm = TimeUtil.getMDHByTime2(self.startTime)
    local md1, hm1 = TimeUtil.getMDHByTime2(self.overTime)
    return md .. "-" .. md1
end
--获取结束时间搓
function getOverTimeDt(self)
    return self.overTime
end

function getName(self)
    return _TT(self.name)
end

function getUiCodeName(self)
    local linkCfgVo = link.LinkManager:getLinkData(self:getUiCode())
    return linkCfgVo:getLinkName2()
end

function getNameId(self)
    return self.name
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]
