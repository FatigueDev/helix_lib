---@meta

---@class Packet_Role
---@field Code string
---@field PrivilegeLevel number
---@field CodeFieldID number
---@field PrivilegeLevelFieldID number
Packet_Role = {}

---@return Packet_Role
function Packet_Role.ctor() end

---@param value string
function Packet_Role.SetCode(value) end

---@param value number
function Packet_Role.SetPrivilegeLevel(value) end

---@return userdata
function Packet_Role.GetType() end

---@return string
function Packet_Role.ToString() end

---@param obj userdata
---@return boolean
function Packet_Role.Equals(obj) end

---@return number
function Packet_Role.GetHashCode() end


