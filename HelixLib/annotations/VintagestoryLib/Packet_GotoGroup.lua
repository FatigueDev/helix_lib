---@meta

---@class Packet_GotoGroup
---@field GroupId number
---@field GroupIdFieldID number
Packet_GotoGroup = {}

---@return Packet_GotoGroup
function Packet_GotoGroup.ctor() end

---@param value number
function Packet_GotoGroup.SetGroupId(value) end

---@return userdata
function Packet_GotoGroup.GetType() end

---@return string
function Packet_GotoGroup.ToString() end

---@param obj userdata
---@return boolean
function Packet_GotoGroup.Equals(obj) end

---@return number
function Packet_GotoGroup.GetHashCode() end


