---@meta

---@class Packet_Roles
---@field Roles Packet_Role[]
---@field RolesCount number
---@field RolesLength number
---@field RolesFieldID number
Packet_Roles = {}

---@return Packet_Roles
function Packet_Roles.ctor() end

---@return Packet_Role[]
function Packet_Roles.GetRoles() end

---@param value Packet_Role[]
---@param count number
---@param length number
function Packet_Roles.SetRoles(value, count, length) end

---@param value Packet_Role[]
function Packet_Roles.SetRoles(value) end

---@return number
function Packet_Roles.GetRolesCount() end

---@param value Packet_Role
function Packet_Roles.RolesAdd(value) end

---@return userdata
function Packet_Roles.GetType() end

---@return string
function Packet_Roles.ToString() end

---@param obj userdata
---@return boolean
function Packet_Roles.Equals(obj) end

---@return number
function Packet_Roles.GetHashCode() end


