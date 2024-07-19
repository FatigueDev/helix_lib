---@meta

---@class Packet_ClientSpecialKey
---@field Key_ number
---@field Key_FieldID number
Packet_ClientSpecialKey = {}

---@return Packet_ClientSpecialKey
function Packet_ClientSpecialKey.ctor() end

---@param value number
function Packet_ClientSpecialKey.SetKey_(value) end

---@return userdata
function Packet_ClientSpecialKey.GetType() end

---@return string
function Packet_ClientSpecialKey.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientSpecialKey.Equals(obj) end

---@return number
function Packet_ClientSpecialKey.GetHashCode() end


