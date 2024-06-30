---@meta

---@class Packet_ServerCalendar
---@field TotalSeconds number
---@field TimeSpeedModifierNames string
---@field TimeSpeedModifierNamesCount number
---@field TimeSpeedModifierNamesLength number
---@field TimeSpeedModifierSpeeds number
---@field TimeSpeedModifierSpeedsCount number
---@field TimeSpeedModifierSpeedsLength number
---@field MoonOrbitDays number
---@field HoursPerDay number
---@field Running number
---@field CalendarSpeedMul number
---@field DaysPerMonth number
---@field TotalSecondsStart number
---@field TotalSecondsFieldID number
---@field TimeSpeedModifierNamesFieldID number
---@field TimeSpeedModifierSpeedsFieldID number
---@field MoonOrbitDaysFieldID number
---@field HoursPerDayFieldID number
---@field RunningFieldID number
---@field CalendarSpeedMulFieldID number
---@field DaysPerMonthFieldID number
---@field TotalSecondsStartFieldID number
Packet_ServerCalendar = {}

---@return Packet_ServerCalendar
function Packet_ServerCalendar.ctor() end

---@param value number
function Packet_ServerCalendar.SetTotalSeconds(value) end

---@return string
function Packet_ServerCalendar.GetTimeSpeedModifierNames() end

---@param value string
---@param count number
---@param length number
function Packet_ServerCalendar.SetTimeSpeedModifierNames(value, count, length) end

---@param value string
function Packet_ServerCalendar.SetTimeSpeedModifierNames(value) end

---@return number
function Packet_ServerCalendar.GetTimeSpeedModifierNamesCount() end

---@param value string
function Packet_ServerCalendar.TimeSpeedModifierNamesAdd(value) end

---@return number
function Packet_ServerCalendar.GetTimeSpeedModifierSpeeds() end

---@param value number
---@param count number
---@param length number
function Packet_ServerCalendar.SetTimeSpeedModifierSpeeds(value, count, length) end

---@param value number
function Packet_ServerCalendar.SetTimeSpeedModifierSpeeds(value) end

---@return number
function Packet_ServerCalendar.GetTimeSpeedModifierSpeedsCount() end

---@param value number
function Packet_ServerCalendar.TimeSpeedModifierSpeedsAdd(value) end

---@param value number
function Packet_ServerCalendar.SetMoonOrbitDays(value) end

---@param value number
function Packet_ServerCalendar.SetHoursPerDay(value) end

---@param value number
function Packet_ServerCalendar.SetRunning(value) end

---@param value number
function Packet_ServerCalendar.SetCalendarSpeedMul(value) end

---@param value number
function Packet_ServerCalendar.SetDaysPerMonth(value) end

---@param value number
function Packet_ServerCalendar.SetTotalSecondsStart(value) end

---@return userdata
function Packet_ServerCalendar.GetType() end

---@return string
function Packet_ServerCalendar.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerCalendar.Equals(obj) end

---@return number
function Packet_ServerCalendar.GetHashCode() end


