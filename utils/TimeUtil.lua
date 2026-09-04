module("TimeUtil", Class.impl())

local ENUM_IDX = 0
local function _enumID()
    ENUM_IDX = ENUM_IDX + 1
    return ENUM_IDX
end

function ctor(self)
    self.m_countTiming = 0
end

function startTime(self)
    self.m_countTiming = os.clock()
end
function endTime(self, msg)
    if msg then
        print(msg, "用时: ", os.clock() - self.m_countTiming)
    else
        print("用时: ", os.clock() - self.m_countTiming)
    end
end
function endOverTime(self, overTime, msg)
    local cnt = os.clock() - self.m_countTiming
    if cnt > overTime then
        self:endTime(msg)
    end
end
-- {day,hour,isdst,min,month,sec,wday,yday,year}
function getTimeTable(t)
    return os.date("*t", t)
end

-- 通用计时显示格式——秒转换成中文格式时间 显示两位
-- 超过一天时显示 x天x时 更新时长 = 1
-- 小于一天时 显示 x时x分 更新时长 = 2
-- 小于一小时显示 x分x秒 更新时长 = 3
function getFormatTimeBySeconds_1(t)
    if (t < 0) then
        return "0".._TT(91).."0".._TT(155)
    end
    local days = math.floor(t / 86400)
    local hours = math.floor((t % 86400) / 3600)
    local mins = math.floor((t % 3600) / 60)

    local dayStr = days == 0 and "" or days .. _TT(152)
    local hoursStr = (hours >= 10 and hours .. "" or "0" .. hours) .. _TT(153)
    if (days > 0) then
        return dayStr .. hoursStr, 3600
    else
        if (hours > 0) then
            return hoursStr .. mins .. _TT(91), 60
        else
            local minStr = (mins >= 10 and mins .. "" or "0" .. mins) .. _TT(91)
            local singleSeconds = math.floor(t % 60)
            local secondStr = (singleSeconds >= 10) and (singleSeconds .. _TT(155)) or ("0" .. singleSeconds .. _TT(155))

            return minStr .. secondStr, 1
        end
    end
end
-- 通用计时显示格式——秒转换成中文格式时间 显示1位
-- ns 不显示到秒
-- 超过一天时显示 x天
-- 小于一天时 显示 x时
-- 小于一小时显示 x分
-- 小于一分钟显示 x秒 策划要求不要个位补0
function getFormatTimeBySeconds_2(t, ns)
    if (t < 0) then
        return "0".._TT(155)
    end
    local days = math.floor(t / 86400)
    local hours = math.floor((t % 86400) / 3600)
    local mins = math.floor((t % 3600) / 60)
    local mins = math.floor((t % 3600) / 60)

    local dayStr = days == 0 and "" or days .. _TT(152)
    -- local hoursStr = (hours >= 10 and hours .. "" or "0" .. hours) .. _TT(153)
    local hoursStr = hours .. _TT(153)
    if (days > 0) then
        return dayStr
    else
        if (hours > 0) then
            return hoursStr
        elseif mins > 0 then
            -- local minStr = (mins >= 10 and mins .. "" or "0" .. mins) .. _TT(91)
            local minStr = mins .. _TT(91)

            return minStr
        else
            if ns then
                local minStr = "1".._TT(91)

                return minStr
            else
                local singleSeconds = math.floor(t % 60)
                -- local secondStr = (singleSeconds >= 10) and (singleSeconds .. _TT(155)) or ("0" .. singleSeconds .. _TT(155))
                local secondStr = singleSeconds .. _TT(155)
                return secondStr
            end
        end
    end
end

-- 根据时间戳获取指定格式的时间显示 2020年9月3日 10:10:9
function getFormatTimeBySeconds_3(t)
    local timeTable = getTimeTable(t)
    local formatList = {}
    table.insert(formatList, timeTable.year)
    table.insert(formatList, _TT(92)) --年
    table.insert(formatList, timeTable.month)
    table.insert(formatList, _TT(10000510)) --月
    table.insert(formatList, timeTable.day)
    table.insert(formatList, _TT(10000511)) --日
    table.insert(formatList, timeTable.hour)
    table.insert(formatList, timeTable.min)
    table.insert(formatList, timeTable.sec)
    return string.substituteArr("{0}{1}{2}{3}{4}{5} {6}:{7}:{8}", formatList)
end

-- 根据时间戳获取指定格式的时间显示(邮件) 2020/9/3
function getFormatTimeBySeconds_4(t)
    local timeTable = getTimeTable(t)
    local formatList = {}
    table.insert(formatList, timeTable.year)
    table.insert(formatList, timeTable.month)
    table.insert(formatList, timeTable.day)
    return string.substituteArr("{0}-{1}-{2}", formatList)
end

-- 通用计时显示格式——秒转换成中文格式时间 显示完整
-- 超过一天时显示 x天x时x分x秒
-- 小于一天时显示 x时x分x秒 
-- 小于一小时显示 x分x秒
-- 小于一分钟显示 x秒 策划要求不要个位补0
function getFormatTimeBySeconds_5(t)
    if (t < 0) then
        return "0".._TT(91).."0".._TT(155)
    end
    local days = math.floor(t / 86400)
    local hours = math.floor((t % 86400) / 3600)
    local mins = math.floor((t % 3600) / 60)
    local singleSeconds = math.floor(t % 60)

    local timeStr = ""
    local dayStr = days .. _TT(152)
    local hoursStr = hours .. _TT(153)
    local minsStr = mins .. _TT(91)
    local secondsStr = singleSeconds .. _TT(155)

    if (days > 0) then
        timeStr = dayStr .. hoursStr .. minsStr .. secondsStr
    elseif hours > 0 then
        timeStr = hoursStr .. minsStr .. secondsStr
    elseif mins > 0 then
        timeStr = minsStr .. secondsStr
    elseif singleSeconds > 0 then
        timeStr = secondsStr
    end
    return timeStr
end

-- 根据时间戳获取指定格式的时间显示 2020/9/3-10:10:9
function getFormatTimeBySeconds_6(t)
    local timeTable = getTimeTable(t)
    local formatList = {}
    table.insert(formatList, timeTable.year)
    table.insert(formatList, timeTable.month)
    table.insert(formatList, timeTable.day)
    table.insert(formatList, timeTable.hour)
    table.insert(formatList, timeTable.min)
    table.insert(formatList, timeTable.sec)
    return string.substituteArr("{0}/{1}/{2}-{3}:{4}:{5}", formatList)
end

-- 根据时间戳获取指定格式的时间显示 2020/9/3 10:10:9
function getFormatTimeBySeconds_7(t)
    local timeTable = getTimeTable(t)
    return string.format("%02d/%02d/%02d %02d:%02d:%02d", timeTable.year, timeTable.month, timeTable.day,
        timeTable.hour, timeTable.min, timeTable.sec)
end

-- 根据时间戳获取指定格式的时间显示(成就) 2021.01.01
function getFormatTimeBySeconds_8(t)
    local timeTable = getTimeTable(t)
    local formatList = {}
    table.insert(formatList, timeTable.year)
    table.insert(formatList, timeTable.month < 10 and "0" .. timeTable.month or timeTable.month)
    table.insert(formatList, timeTable.day < 10 and "0" .. timeTable.day or timeTable.day)
    return string.substituteArr("{0}.{1}.{2}", formatList)
end

-- 通用计时显示格式——秒转换成中文格式时间 显示完整
-- 超过一天时显示 x天x时x分
-- 小于一天时显示 x时x分x秒 
-- 小于一小时显示 x分x秒
-- 小于一分钟显示 x秒 策划要求不要个位补0
function getFormatTimeBySeconds_9(t)
    if (t < 0) then
        return "0".._TT(91).."0".._TT(155)
    end
    local days = math.floor(t / 86400)
    local hours = math.floor((t % 86400) / 3600)
    local mins = math.floor((t % 3600) / 60)
    local singleSeconds = math.floor(t % 60)

    local timeStr = ""
    local dayStr = days .. _TT(152)
    local hoursStr = hours .. _TT(10000124)
    local minsStr = mins .. _TT(91)
    local secondsStr = singleSeconds .. _TT(155)

    if (days > 0) then
        timeStr = dayStr .. hoursStr .. minsStr
    elseif hours > 0 then
        timeStr = hoursStr .. minsStr .. secondsStr
    elseif mins > 0 then
        timeStr = minsStr .. secondsStr
    elseif singleSeconds > 0 then
        timeStr = secondsStr
    end
    return timeStr
end

-- 通用计时显示格式——秒转换成中文格式时间 显示完整
-- 超过一年时显示 x年x月x天
-- 超过一月时显示 x年x月x天
-- 超过一天时显示 x天x时
-- 小于一天时显示 x时x分
-- 小于一小时显示 x分x秒
-- 小于一分钟显示 x秒 策划要求不要个位补0
function getFormatTimeBySeconds_10(t)
    if (t < 0) then
        return "0".._TT(91).."0".._TT(155)
    end
    local days = math.floor(t / 86400)
    local hours = math.floor((t % 86400) / 3600)
    local mins = math.floor((t % 3600) / 60)
    local singleSeconds = math.floor(t % 60)

    local timeStr = ""
    local dayStr = days .. _TT(152)
    local hoursStr = hours .. _TT(10000124)
    local minsStr = mins .. _TT(91)
    local secondsStr = singleSeconds .. _TT(155)

    if (days > 0) then
        timeStr = dayStr .. hoursStr
    elseif hours > 0 then
        timeStr = hoursStr .. minsStr
    elseif mins > 0 then
        timeStr = minsStr .. secondsStr
    elseif singleSeconds > 0 then
        timeStr = secondsStr
    end
    return timeStr
end

-- 通用计时显示格式——秒转换
-- 超过一天时显示 x天 hh:mm
-- 小于一天时显示 hh:mm:ss
function getFormatTimeBySeconds_11(t)
    if (t < 0) then
        return "0".._TT(91).."0".._TT(155)
    end
    local days, hours, mins, singleSeconds = getDHMSByTime(t)
    local timeStr = ""
    local dayStr = days .. _TT(152)

    if (days > 0) then
        timeStr = dayStr .. string.format("%02d:%02d", hours, mins)
    else
        timeStr = getHMSByTime(t)
    end
    return timeStr
end

-- 根据秒数获取天，时，分，秒
function getDHMSByTime(t)
    local d = math.floor(t / (24 * 3600))
    local d1 = math.floor(t % (24 * 3600))
    local h = math.floor(d1 / 3600)
    local h1 = math.floor(d1 % 3600)
    local m = math.floor(h1 / 60)
    local s = t % 60
    return d, h, m, s
end

-- 根据时间戳获取指定格式的时间显示  9-3 10:10:9
function getFormatTimeBySeconds_12(t)
    local timeTable = getTimeTable(t)
    return string.format("%d-%d %02d:%02d:%02d", timeTable.month, timeTable.day, timeTable.hour, timeTable.min, timeTable.sec)
end

-- 根据时间戳获取指定格式的时间显示  9-3 10:10:9
function getFormatTimeBySeconds_13(t)
    local timeTable = getTimeTable(t)
    return string.format("%02d:%02d:%02d", timeTable.hour, timeTable.min, timeTable.sec)
end

-- 时间差
function getTimeDescToDate(endTime)
    local difTime = GameManager:getClientTime() - endTime
    if difTime < 0 then
        difTime = 0
    end
    local d, h, m, s = getDHMSByTime(difTime)
    local desc = ""
    if d > 0 and d <= 30 then
        desc = _TT(90,d)
    elseif d > 30 then
        desc = _TT(90,30)
    elseif h > 0 then
        desc = h .. _TT(94635)
    elseif m > 0 then
        desc = m .. _TT(94636)
    else
        desc = _TT(94637)
    end
    return desc
end

-- 时长转成字符串形式(t:秒)
-- hh:mm:ss
function getHMSByTime(t)
    local h = math.floor(t / 3600)
    local m = math.floor(t / 60) - h * 60
    local s = t % 60
    return string.format("%02d:%02d:%02d", h, m, s)
end

-- 时长转成字符串形式(t:秒)
-- mm:ss
function getHMSByTime_1(t)
    local m = math.floor(t / 60)
    local s = t % 60
    return string.format("%02d:%02d", m, s)
end

-- 时长转成分秒字符串形式(t:秒)
-- mm′ss″
function getMSByTime(t)
    local m = math.floor(t / 60)
    local s = t % 60
    return string.format("%02d′%02d″", m, s)
end

-- { 01月01日 ,00:00}
function getMDHByTime(t)
    local t = os.date('*t', t)
    local md = _TT(1028, string.format('%02d', t.month), string.format('%02d', t.day))
    local h = string.format('%02d:%02d', t.hour, t.min)
    return md, h
end

-- { 01/01 ,00:00}
function getMDHByTime2(t)
    local t = os.date('*t', t)
    local md = string.format('%02d/%02d', t.month, t.day)
    local h = string.format('%02d:%02d', t.hour, t.min)
    return md, h
end

function getMDHByTime2Link(time)
    local md, hm = TimeUtil.getMDHByTime2(time)
    return md .. " " .. hm
end

-- 私聊时间 { 昨天 ,00:00}
function getChatTime(t)
    local nt = os.date('*t', GameManager:getClientTime())
    local t = os.date('*t', t)
    local d = nt.day - t.day
    if d <= 0 then
        return string.format('%02d:%02d', t.hour, t.min)
    elseif d == 1 then
        return string.format('%s %02d:%02d', _TT(10000125), t.hour, t.min)
    else
        return _TT(1028, string.format('%02d', t.month), string.format('%02d', t.day))..string.format(' %02d:%02d',  t.hour, t.min)
    end
end

-- 服务器格式的配置表时间转换为秒
function transTime(args)
    local time1 = args[1][1]
    local time2 = args[1][2]
    local datetime_table = {
        year = time1[1],
        month = time1[2],
        day = time1[3],
        hour = time2[1],
        min = time2[2],
        sec = time2[3]
    }
    local time = TimeUtil.datetime_to_timestamp(datetime_table)
    return time
end

-- 服务器格式的配置表时间转换为秒(配置少一层括号（莫名其妙）)
function transTime2(args)
    local time1 = args[1]
    local time2 = args[2]
    local datetime_table = {
        year = time1[1],
        month = time1[2],
        day = time1[3],
        hour = time2[1],
        min = time2[2],
        sec = time2[3]
    }
    local time = TimeUtil.datetime_to_timestamp(datetime_table)
    return time
end
-- 新规范倒计时显示 
-- isEStyle  为true 显示英文格式 false 为中文格式
-- 时间大于等于1天则显示为x天
-- 不符合上条则，若大于等于1分钟则根据显示的类型显示  英文格式 mm:ss 中文格式 m分
-- 不符合上条则，根据显示的类型显示 英文格式 ss 中文格式 s秒
function getNewRoleShowTime(t, isEStyle)
    local day, hour, min, sec = getDHMSByTime(t)
    local timeStr = ""
    if day >= 1 then
        timeStr = day .. _TT(152)
    else
        if hour >= 1 then
            timeStr = isEStyle and getHMSByTime(t) or hour .. _TT(153)
        else
            if min >= 1 then
                timeStr = isEStyle and getHMSByTime_1(t) or min .. _TT(91)
            else
                timeStr = isEStyle and string.format('%02d', t) or sec .. _TT(155)
            end
        end
    end
    return timeStr
end

-- 判断两个时间戳是不是同一天（按照凌晨五点来算）
function isToDay(time_1, time_2)
    if math.abs(time_1 - time_2) >= 86400 then
        return false
    end

    local fiveDt = 5 * 3600 -- 五个小时
    local dt_1 = os.date('*t', time_1 - fiveDt)
    local dt_2 = os.date('*t', time_2 - fiveDt)

    if dt_1.day ~= dt_2.day then
        return false
    end

    return true
end

-- 返回time1和time2相差的天数 limit为每天的分割点 默认5点
function GetDaysIndexByLimit(time1, time2, limit)
    limit = limit or 5
    local tempTime1 = time1 < time2 and time1 or time2
    local tempTime2 = time2 > time1 and time2 or time1
    local days = 0
    local data1 = os.date("*t", tempTime1);
    if data1.hour < limit then
        days = days + 1
    end
    data1.hour = limit
    data1.min = 0
    data1.sec = 0
    local time1Five = os.time(data1)
    local data2 = os.date("*t", tempTime2);
    if data2.hour >= limit then
        days = days + 1
    end
    data2.hour = limit
    data2.min = 0
    data2.sec = 0
    local time2Five = os.time(data2)
    local Dtime = os.difftime(time2Five, time1Five) / 86400
    days = days + Dtime
    return days
end
-- state 下一月(month) 下一周(week) 下一日(day)  limit分割点 默认5点 
-- 特殊时间（非下一月、下一周、下一日）specialTimer 
-- 返回参数 _TT(155)、_TT(152)
function getTimeDifference(state, limit, specialTimer, returnParameter)
    limit = limit or 5
    local difTimer;
    local time = os.date("*t", GameManager:getClientTime() - limit * 60 * 60)
    if time.wday == 1 then
        time.wday = 8
    end
    local dayDifTimer = (24 * 60 * 60) - (time.hour * 60 * 60 + time.min * 60 + time.sec)
    if state == "month" then
        difTimer = (tonumber(os.date("%d", os.time({
            year = time.year,
            month = time.month + 1,
            day = 0
        }))) - time.day) * 24 * 60 * 60 + dayDifTimer
    elseif state == "week" then
        difTimer = ((7 - (time.wday - 1)) * 24 * 60 * 60) + dayDifTimer
    elseif state == "day" then
        difTimer = dayDifTimer
    end
    return difTimer
end

-- 将UTC时间戳转换为目标时区的日期时间table
-- @param timestamp 时间戳（单位：秒）
-- @param utc_offset 目标时区的UTC偏移量（单位：小时）
-- @return 包含年月日时分秒的table {year, month, day, hour, min, sec}
function getServerTimeTable(timestamp, utc_offset)
    timestamp = timestamp or GameManager:getServerTime()
    if timestamp == 0 then
        timestamp = os.time()
    end
    utc_offset = utc_offset or TimeUtil.getServerTimeZone()
    -- 解析时区偏移量（传入的 utc_offset 为小时）
    local offset_seconds = utc_offset * 3600

    -- 调整时间戳并获取UTC时间table
    local adjusted_timestamp = timestamp + offset_seconds
    local time_table = os.date("!*t", adjusted_timestamp)

    -- 返回需要的字段（Lua的os.date月份范围是1-12，与常规一致）
    return time_table
end

-- 将时间table格式化为年月日 时:分:秒的字符串
-- @param time_table 时间表，包含年月日时分秒
-- @return 格式化后的时间字符串（"YYYY-MM-DD HH:MM:SS"）
function formatTimeTable(time_table)
    -- 确保时间表包含正确的字段
    if not time_table.year or not time_table.month or not time_table.day or
       not time_table.hour or not time_table.min or not time_table.sec then
        logError("Invalid time table format")
    end

    -- 格式化成"YYYY-MM-DD HH:MM:SS"
    local formatted_time = string.format("%04d-%02d-%02d %02d:%02d:%02d", 
        time_table.year, time_table.month, time_table.day, 
        time_table.hour, time_table.min, time_table.sec)

    return formatted_time
end

-- 将目标时区的日期时间table转换为标准时间戳
-- @param datetime_table 目标时区的时间表 {year, month, day, hour, min, sec}
-- @param utc_offset 目标时区的UTC偏移量（如 +09:00 或 -08:00，单位是小时 只能传递number 例如9，-8）
-- @return Unix时间戳（秒数）
function datetime_to_timestamp(datetime_table, utc_offset)
    datetime_table = datetime_table or TimeUtil.getServerTimeTable()
    utc_offset = utc_offset or TimeUtil.getServerTimeZone()
    -- 获取日期时间表中的各个字段
    local year = datetime_table.year
    local month = datetime_table.month
    local day = datetime_table.day
    local hour = datetime_table.hour
    local min = datetime_table.min
    local sec = datetime_table.sec

    -- 获取设备时区的UTC偏移量（单位：秒）
    local device_offset_seconds = os.time() - os.time(os.date("!*t"))

    -- 将目标时区的UTC偏移量转换为秒
    local target_offset_seconds = utc_offset * 3600

    -- 计算目标时区时间相对于设备时区的时间偏移
    local offset_diff = target_offset_seconds - device_offset_seconds

    -- 使用 os.time 获取设备时区的时间戳
    local timestamp = os.time({
        year = year,
        month = month,
        day = day,
        hour = hour,
        min = min,
        sec = sec
    })

    -- 调整时间戳，得到标准的UTC时间戳
    local adjusted_timestamp = timestamp - offset_diff

    return adjusted_timestamp
end

-- 获取服务器下发的时区偏移
-- @return 单位小时 number
function getServerTimeZone()
    local timeZone = systemSetting.SystemSettingManager:getScSettingDataByType(systemSetting.ScSettingType.TimeZone)
    if not timeZone or timeZone == 0 then
        --判断合法性计算本地设备时区偏移
        local device_offset_seconds = os.time() - os.time(os.date("!*t"))
        timeZone = math.round(device_offset_seconds / 3600)
    else
        --好像前端解析int8类型有符号整数有问题 -5解析成了251
        --前后端约定规则比如100就是utc+0标准时区 101就是+1 99就是-1
        timeZone = timeZone - 100
    end
    return timeZone
end

-- 获取指定日期是当年的第几周（周一为每周第一天）
-- @param year 年份，如 2025
-- @param month 月份，1-12
-- @param day 日期，1-31
-- @return 当年的周数
function getWeekOfYear()
    local t = GameManager:getClientTime()
    local now = os.date("*t", t)
    local year, month, day = now.year, now.month, now.day
    -- 计算指定日期是当年的第几天
    local days_in_month = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
    -- 检查闰年
    if (year % 4 == 0 and year % 100 ~= 0) or (year % 400 == 0) then
        days_in_month[2] = 29
    end
    
    local day_of_year = 0
    for i = 1, month - 1 do
        day_of_year = day_of_year + days_in_month[i]
    end
    day_of_year = day_of_year + day
    
    -- 获取指定日期是星期几（1=周日，2=周一，...，7=周六）
    local date_table = os.date("*t", os.time({year=year, month=month, day=day}))
    local weekday = date_table.wday  -- 1=周日，2=周一，...，7=周六
    
    -- 计算当年第一周的第一天（第一个周一）
    local first_weekday = os.date("*t", os.time({year=year, month=1, day=1})).wday
    local first_monday_offset = (9 - first_weekday) % 7  -- 计算1月1日后的第一个周一
    local first_monday = 1 + first_monday_offset
    
    -- 如果指定日期在第一个周一之前，属于上一年的最后一周
    if day_of_year < first_monday then
        -- 获取上一年的最后一周周数
        local prev_year = year - 1
        local prev_year_days = 365
        if (prev_year % 4 == 0 and prev_year % 100 ~= 0) or (prev_year % 400 == 0) then
            prev_year_days = 366
        end
        
        -- 计算上一年最后一周的第一天
        local prev_year_first_weekday = os.date("*t", os.time({year=prev_year, month=1, day=1})).wday
        local prev_year_first_monday = 1 + ((9 - prev_year_first_weekday) % 7)
        
        -- 上一年的周数
        return math.floor((prev_year_days - prev_year_first_monday + 7) / 7)
    end
    
    -- 计算指定日期所在周数
    local week_number = math.floor((day_of_year - first_monday) / 7) + 1
    return week_number
end

return _M
