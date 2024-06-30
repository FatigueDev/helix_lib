---@meta

---@class Packet_ClientRequestJoin
---@field Language string
---@field LanguageFieldID number
Packet_ClientRequestJoin = {}

---@return Packet_ClientRequestJoin
function Packet_ClientRequestJoin.ctor() end

---@param value string
function Packet_ClientRequestJoin.SetLanguage(value) end

---@return userdata
function Packet_ClientRequestJoin.GetType() end

---@return string
function Packet_ClientRequestJoin.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientRequestJoin.Equals(obj) end

---@return number
function Packet_ClientRequestJoin.GetHashCode() end


