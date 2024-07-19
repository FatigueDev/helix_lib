---@meta

---@class Packet_Behavior
---@field Code string
---@field Attributes string
---@field ClientSideOptional number
---@field CodeFieldID number
---@field AttributesFieldID number
---@field ClientSideOptionalFieldID number
Packet_Behavior = {}

---@return Packet_Behavior
function Packet_Behavior.ctor() end

---@param value string
function Packet_Behavior.SetCode(value) end

---@param value string
function Packet_Behavior.SetAttributes(value) end

---@param value number
function Packet_Behavior.SetClientSideOptional(value) end

---@return userdata
function Packet_Behavior.GetType() end

---@return string
function Packet_Behavior.ToString() end

---@param obj userdata
---@return boolean
function Packet_Behavior.Equals(obj) end

---@return number
function Packet_Behavior.GetHashCode() end


