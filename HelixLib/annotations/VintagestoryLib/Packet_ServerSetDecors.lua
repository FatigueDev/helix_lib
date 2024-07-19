---@meta

---@class Packet_ServerSetDecors
---@field SetDecors number
---@field SetDecorsFieldID number
Packet_ServerSetDecors = {}

---@return Packet_ServerSetDecors
function Packet_ServerSetDecors.ctor() end

---@param value number
function Packet_ServerSetDecors.SetSetDecors(value) end

---@return userdata
function Packet_ServerSetDecors.GetType() end

---@return string
function Packet_ServerSetDecors.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerSetDecors.Equals(obj) end

---@return number
function Packet_ServerSetDecors.GetHashCode() end


