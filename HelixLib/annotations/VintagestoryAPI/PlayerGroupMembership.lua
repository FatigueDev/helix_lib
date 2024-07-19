---@meta

---@class PlayerGroupMembership
---@field Level EnumPlayerGroupMemberShip The member ship level in this group
---@field GroupName string The last known group name 
---@field GroupUid number The group id
PlayerGroupMembership = {}

---@return PlayerGroupMembership
function PlayerGroupMembership.ctor() end

---@return userdata
function PlayerGroupMembership.GetType() end

---@return string
function PlayerGroupMembership.ToString() end

---@param obj userdata
---@return boolean
function PlayerGroupMembership.Equals(obj) end

---@return number
function PlayerGroupMembership.GetHashCode() end


