---@meta

---@class Packet_BlockSetModeEnum
---@field Break number
---@field Place number
---@field BreakDecor number
Packet_BlockSetModeEnum = {}

---@return Packet_BlockSetModeEnum
function Packet_BlockSetModeEnum.ctor() end

---@return userdata
function Packet_BlockSetModeEnum.GetType() end

---@return string
function Packet_BlockSetModeEnum.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockSetModeEnum.Equals(obj) end

---@return number
function Packet_BlockSetModeEnum.GetHashCode() end


