---@meta

---@class Packet_MatterStateEnum
---@field Gas number
---@field Liquid number
---@field Solid number
---@field Plasma number
Packet_MatterStateEnum = {}

---@return Packet_MatterStateEnum
function Packet_MatterStateEnum.ctor() end

---@return userdata
function Packet_MatterStateEnum.GetType() end

---@return string
function Packet_MatterStateEnum.ToString() end

---@param obj userdata
---@return boolean
function Packet_MatterStateEnum.Equals(obj) end

---@return number
function Packet_MatterStateEnum.GetHashCode() end


