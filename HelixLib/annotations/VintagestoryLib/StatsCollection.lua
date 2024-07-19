---@meta

---@class StatsCollection
---@field statTotalPackets number
---@field statTotalPacketsLength number
---@field tickTimeTotal number
---@field ticksTotal number
---@field tickTimes number
---@field tickTimeIndex number
StatsCollection = {}

---@return StatsCollection
function StatsCollection.ctor() end

---@return userdata
function StatsCollection.GetType() end

---@return string
function StatsCollection.ToString() end

---@param obj userdata
---@return boolean
function StatsCollection.Equals(obj) end

---@return number
function StatsCollection.GetHashCode() end


