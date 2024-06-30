---@meta

---@class Packet_MoveKeyChange
---@field Key number
---@field Down number
---@field KeyFieldID number
---@field DownFieldID number
Packet_MoveKeyChange = {}

---@return Packet_MoveKeyChange
function Packet_MoveKeyChange.ctor() end

---@param value number
function Packet_MoveKeyChange.SetKey(value) end

---@param value number
function Packet_MoveKeyChange.SetDown(value) end

---@return userdata
function Packet_MoveKeyChange.GetType() end

---@return string
function Packet_MoveKeyChange.ToString() end

---@param obj userdata
---@return boolean
function Packet_MoveKeyChange.Equals(obj) end

---@return number
function Packet_MoveKeyChange.GetHashCode() end


