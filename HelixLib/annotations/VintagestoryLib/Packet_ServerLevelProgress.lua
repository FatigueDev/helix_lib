---@meta

---@class Packet_ServerLevelProgress
---@field PercentComplete number
---@field Status string
---@field PercentCompleteSubitem number
---@field PercentCompleteFieldID number
---@field StatusFieldID number
---@field PercentCompleteSubitemFieldID number
Packet_ServerLevelProgress = {}

---@return Packet_ServerLevelProgress
function Packet_ServerLevelProgress.ctor() end

---@param value number
function Packet_ServerLevelProgress.SetPercentComplete(value) end

---@param value string
function Packet_ServerLevelProgress.SetStatus(value) end

---@param value number
function Packet_ServerLevelProgress.SetPercentCompleteSubitem(value) end

---@return userdata
function Packet_ServerLevelProgress.GetType() end

---@return string
function Packet_ServerLevelProgress.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerLevelProgress.Equals(obj) end

---@return number
function Packet_ServerLevelProgress.GetHashCode() end


