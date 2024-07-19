---@meta

---@class Packet_LoginTokenAnswer
---@field Token string
---@field TokenFieldID number
Packet_LoginTokenAnswer = {}

---@return Packet_LoginTokenAnswer
function Packet_LoginTokenAnswer.ctor() end

---@param value string
function Packet_LoginTokenAnswer.SetToken(value) end

---@return userdata
function Packet_LoginTokenAnswer.GetType() end

---@return string
function Packet_LoginTokenAnswer.ToString() end

---@param obj userdata
---@return boolean
function Packet_LoginTokenAnswer.Equals(obj) end

---@return number
function Packet_LoginTokenAnswer.GetHashCode() end


