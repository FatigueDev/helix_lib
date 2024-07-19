---@meta

---@class Packet_ClientServerQuery
Packet_ClientServerQuery = {}

---@return Packet_ClientServerQuery
function Packet_ClientServerQuery.ctor() end

---@return userdata
function Packet_ClientServerQuery.GetType() end

---@return string
function Packet_ClientServerQuery.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientServerQuery.Equals(obj) end

---@return number
function Packet_ClientServerQuery.GetHashCode() end


