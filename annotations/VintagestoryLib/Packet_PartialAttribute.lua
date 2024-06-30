---@meta

---@class Packet_PartialAttribute
---@field Path string
---@field Data number
---@field PathFieldID number
---@field DataFieldID number
Packet_PartialAttribute = {}

---@return Packet_PartialAttribute
function Packet_PartialAttribute.ctor() end

---@param value string
function Packet_PartialAttribute.SetPath(value) end

---@param value number
function Packet_PartialAttribute.SetData(value) end

---@return userdata
function Packet_PartialAttribute.GetType() end

---@return string
function Packet_PartialAttribute.ToString() end

---@param obj userdata
---@return boolean
function Packet_PartialAttribute.Equals(obj) end

---@return number
function Packet_PartialAttribute.GetHashCode() end


