---@meta

---@class Packet_VariantPart
---@field Code string
---@field Value string
---@field CodeFieldID number
---@field ValueFieldID number
Packet_VariantPart = {}

---@return Packet_VariantPart
function Packet_VariantPart.ctor() end

---@param value string
function Packet_VariantPart.SetCode(value) end

---@param value string
function Packet_VariantPart.SetValue(value) end

---@return userdata
function Packet_VariantPart.GetType() end

---@return string
function Packet_VariantPart.ToString() end

---@param obj userdata
---@return boolean
function Packet_VariantPart.Equals(obj) end

---@return number
function Packet_VariantPart.GetHashCode() end


