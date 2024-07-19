---@meta

---@class Packet_Ambient
---@field Data number
---@field DataFieldID number
Packet_Ambient = {}

---@return Packet_Ambient
function Packet_Ambient.ctor() end

---@param value number
function Packet_Ambient.SetData(value) end

---@return userdata
function Packet_Ambient.GetType() end

---@return string
function Packet_Ambient.ToString() end

---@param obj userdata
---@return boolean
function Packet_Ambient.Equals(obj) end

---@return number
function Packet_Ambient.GetHashCode() end


