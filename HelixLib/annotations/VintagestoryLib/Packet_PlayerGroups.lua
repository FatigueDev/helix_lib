---@meta

---@class Packet_PlayerGroups
---@field Groups Packet_PlayerGroup[]
---@field GroupsCount number
---@field GroupsLength number
---@field GroupsFieldID number
Packet_PlayerGroups = {}

---@return Packet_PlayerGroups
function Packet_PlayerGroups.ctor() end

---@return Packet_PlayerGroup[]
function Packet_PlayerGroups.GetGroups() end

---@param value Packet_PlayerGroup[]
---@param count number
---@param length number
function Packet_PlayerGroups.SetGroups(value, count, length) end

---@param value Packet_PlayerGroup[]
function Packet_PlayerGroups.SetGroups(value) end

---@return number
function Packet_PlayerGroups.GetGroupsCount() end

---@param value Packet_PlayerGroup
function Packet_PlayerGroups.GroupsAdd(value) end

---@return userdata
function Packet_PlayerGroups.GetType() end

---@return string
function Packet_PlayerGroups.ToString() end

---@param obj userdata
---@return boolean
function Packet_PlayerGroups.Equals(obj) end

---@return number
function Packet_PlayerGroups.GetHashCode() end


