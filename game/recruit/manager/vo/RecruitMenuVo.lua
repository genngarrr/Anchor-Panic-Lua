--[[
-----------------------------------------------------
@filename       : RecruitMenuVo
@Description    : 招募菜单数据
@date           : 2021-06-09 17:45:44
@Author         : Jacob
@copyright      : (LY) 2021 雷焰网络
-----------------------------------------------------
]]
module('recruit.RecruitMenuVo', Class.impl())

function parseData(self, key, cusData)
    self.id = key
    self.type = cusData.type
    self.tap_type = cusData.tap_type
    self.sort_id = cusData.sort_id
    self.main_lang = cusData.main_lang
    self.sub_lang = cusData.sub_lang
    self.funcId = cusData.func_id
    self.icon = cusData.icon
    self.beginTime = cusData.begin_time
    self.endTime = cusData.end_time
end

function isOpenTime(self)
    if not self.beginTime or table.empty(self.beginTime) then
        return true
    end

    local clientTime = TimeUtil.datetime_to_timestamp()

    local beginTime1 = self.beginTime[1][1]
    local beginTime2 = self.beginTime[1][2]
    local beginTime =
    {
        year = beginTime1[1],
        month = beginTime1[2],
        day = beginTime1[3],
        hour = beginTime2[1],
        min = beginTime2[2],
        sec = beginTime2[3],
    }

    local endTime1 = self.endTime[1][1]
    local endTime2 = self.endTime[1][2]
    local endTime =
    {
        year = endTime1[1],
        month = endTime1[2],
        day = endTime1[3],
        hour = endTime2[1],
        min = endTime2[2],
        sec = endTime2[3],
    }

    if clientTime >= TimeUtil.datetime_to_timestamp(beginTime) and clientTime < TimeUtil.datetime_to_timestamp(endTime) then
        return true
    end
    return false
end

return _M

--[[ 替换语言包自动生成，请勿修改！
]]
