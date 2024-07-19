---@meta

---@class Packet_ClientLeave
---@field Reason number
---@field ReasonFieldID number
Packet_ClientLeave = {}

---@return Packet_ClientLeave
function Packet_ClientLeave.ctor() end

---@param value number
function Packet_ClientLeave.SetReason(value) end

---@return userdata
function Packet_ClientLeave.GetType() end

---@return string
function Packet_ClientLeave.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientLeave.Equals(obj) end

---@return number
function Packet_ClientLeave.GetHashCode() end


