---@meta

---@class Packet_LeaveReasonEnum
---@field Leave number
---@field Crash number
Packet_LeaveReasonEnum = {}

---@return Packet_LeaveReasonEnum
function Packet_LeaveReasonEnum.ctor() end

---@return userdata
function Packet_LeaveReasonEnum.GetType() end

---@return string
function Packet_LeaveReasonEnum.ToString() end

---@param obj userdata
---@return boolean
function Packet_LeaveReasonEnum.Equals(obj) end

---@return number
function Packet_LeaveReasonEnum.GetHashCode() end


