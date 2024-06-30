---@meta

---@class Packet_SpecialKeyEnum
---@field Respawn number
---@field SetSpawn number
---@field TabPlayerList number
---@field SelectTeam number
Packet_SpecialKeyEnum = {}

---@return Packet_SpecialKeyEnum
function Packet_SpecialKeyEnum.ctor() end

---@return userdata
function Packet_SpecialKeyEnum.GetType() end

---@return string
function Packet_SpecialKeyEnum.ToString() end

---@param obj userdata
---@return boolean
function Packet_SpecialKeyEnum.Equals(obj) end

---@return number
function Packet_SpecialKeyEnum.GetHashCode() end


