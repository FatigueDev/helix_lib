---@meta

---@class Packet_CrushingProperties
---@field CrushedStack number
---@field HardnessTier number
---@field Quantity Packet_NatFloat
---@field CrushedStackFieldID number
---@field HardnessTierFieldID number
---@field QuantityFieldID number
Packet_CrushingProperties = {}

---@return Packet_CrushingProperties
function Packet_CrushingProperties.ctor() end

---@param value number
function Packet_CrushingProperties.SetCrushedStack(value) end

---@param value number
function Packet_CrushingProperties.SetHardnessTier(value) end

---@param value Packet_NatFloat
function Packet_CrushingProperties.SetQuantity(value) end

---@return userdata
function Packet_CrushingProperties.GetType() end

---@return string
function Packet_CrushingProperties.ToString() end

---@param obj userdata
---@return boolean
function Packet_CrushingProperties.Equals(obj) end

---@return number
function Packet_CrushingProperties.GetHashCode() end


