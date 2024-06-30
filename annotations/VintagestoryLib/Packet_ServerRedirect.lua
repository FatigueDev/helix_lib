---@meta

---@class Packet_ServerRedirect
---@field Name string
---@field Host string
---@field NameFieldID number
---@field HostFieldID number
Packet_ServerRedirect = {}

---@return Packet_ServerRedirect
function Packet_ServerRedirect.ctor() end

---@param value string
function Packet_ServerRedirect.SetName(value) end

---@param value string
function Packet_ServerRedirect.SetHost(value) end

---@return userdata
function Packet_ServerRedirect.GetType() end

---@return string
function Packet_ServerRedirect.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerRedirect.Equals(obj) end

---@return number
function Packet_ServerRedirect.GetHashCode() end


