---@meta

---@class Packet_GrindingProperties
---@field GroundStack number
---@field GroundStackFieldID number
Packet_GrindingProperties = {}

---@return Packet_GrindingProperties
function Packet_GrindingProperties.ctor() end

---@param value number
function Packet_GrindingProperties.SetGroundStack(value) end

---@return userdata
function Packet_GrindingProperties.GetType() end

---@return string
function Packet_GrindingProperties.ToString() end

---@param obj userdata
---@return boolean
function Packet_GrindingProperties.Equals(obj) end

---@return number
function Packet_GrindingProperties.GetHashCode() end


