---@meta

---@class Packet_IntString
---@field Key_ number
---@field Value_ string
---@field Key_FieldID number
---@field Value_FieldID number
Packet_IntString = {}

---@return Packet_IntString
function Packet_IntString.ctor() end

---@param value number
function Packet_IntString.SetKey_(value) end

---@param value string
function Packet_IntString.SetValue_(value) end

---@return userdata
function Packet_IntString.GetType() end

---@return string
function Packet_IntString.ToString() end

---@param obj userdata
---@return boolean
function Packet_IntString.Equals(obj) end

---@return number
function Packet_IntString.GetHashCode() end


