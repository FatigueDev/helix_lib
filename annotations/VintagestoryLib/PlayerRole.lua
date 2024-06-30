---@meta

---@class PlayerRole:  IPlayerRole
---@field Code string
---@field PrivilegeLevel number
---@field Name string
---@field Description string
---@field DefaultSpawn PlayerSpawnPos
---@field ForcedSpawn PlayerSpawnPos
---@field Privileges table
---@field RuntimePrivileges HashSet`1
---@field DefaultGameMode EnumGameMode
---@field Color Color
---@field LandClaimAllowance number
---@field LandClaimMinSize Vec3i
---@field LandClaimMaxAreas number
---@field AutoGrant boolean
PlayerRole = {}

---@return PlayerRole
function PlayerRole.ctor() end

---@return string
function PlayerRole.get_Code() end

---@param value string
function PlayerRole.set_Code(value) end

---@return number
function PlayerRole.get_PrivilegeLevel() end

---@param value number
function PlayerRole.set_PrivilegeLevel(value) end

---@return string
function PlayerRole.get_Name() end

---@param value string
function PlayerRole.set_Name(value) end

---@return string
function PlayerRole.get_Description() end

---@param value string
function PlayerRole.set_Description(value) end

---@return PlayerSpawnPos
function PlayerRole.get_DefaultSpawn() end

---@param value PlayerSpawnPos
function PlayerRole.set_DefaultSpawn(value) end

---@return PlayerSpawnPos
function PlayerRole.get_ForcedSpawn() end

---@param value PlayerSpawnPos
function PlayerRole.set_ForcedSpawn(value) end

---@return table
function PlayerRole.get_Privileges() end

---@param value table
function PlayerRole.set_Privileges(value) end

---@return HashSet`1
function PlayerRole.get_RuntimePrivileges() end

---@param value HashSet`1
function PlayerRole.set_RuntimePrivileges(value) end

---@return EnumGameMode # A players game mode
function PlayerRole.get_DefaultGameMode() end

---@param value EnumGameMode A players game mode
function PlayerRole.set_DefaultGameMode(value) end

---@return Color
function PlayerRole.get_Color() end

---@param value Color
function PlayerRole.set_Color(value) end

---@return number
function PlayerRole.get_LandClaimAllowance() end

---@param value number
function PlayerRole.set_LandClaimAllowance(value) end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function PlayerRole.get_LandClaimMinSize() end

---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function PlayerRole.set_LandClaimMinSize(value) end

---@return number
function PlayerRole.get_LandClaimMaxAreas() end

---@param value number
function PlayerRole.set_LandClaimMaxAreas(value) end

---@return boolean
function PlayerRole.get_AutoGrant() end

---@param value boolean
function PlayerRole.set_AutoGrant(value) end

---@return string
function PlayerRole.ToString() end

---@param other IPlayerRole
---@return number
function PlayerRole.CompareTo(other) end

---@param clientGroup IPlayerRole
---@return boolean
function PlayerRole.IsSuperior(clientGroup) end

---@param clientGroup IPlayerRole
---@return boolean
function PlayerRole.EqualLevel(clientGroup) end

---@param privileges string
function PlayerRole.GrantPrivilege(privileges) end

---@param privilege string
function PlayerRole.RevokePrivilege(privilege) end

---@param privileges table
---@return string
function PlayerRole.PrivilegesString(privileges) end

---@return userdata
function PlayerRole.GetType() end

---@param obj userdata
---@return boolean
function PlayerRole.Equals(obj) end

---@return number
function PlayerRole.GetHashCode() end


