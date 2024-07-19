---@meta

---@class IPlayerRole
---@field AutoGrant boolean
---@field LandClaimAllowance number
---@field LandClaimMinSize Vec3i
---@field LandClaimMaxAreas number
---@field Code string
---@field Name string
---@field Description string
---@field PrivilegeLevel number
---@field DefaultSpawn PlayerSpawnPos
---@field ForcedSpawn PlayerSpawnPos
---@field Privileges table
---@field RuntimePrivileges HashSet`1
---@field DefaultGameMode EnumGameMode
---@field Color Color
IPlayerRole = {}


---@return boolean
function IPlayerRole.get_AutoGrant() end

---@param value boolean
function IPlayerRole.set_AutoGrant(value) end

---@return number
function IPlayerRole.get_LandClaimAllowance() end

---@param value number
function IPlayerRole.set_LandClaimAllowance(value) end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function IPlayerRole.get_LandClaimMinSize() end

---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function IPlayerRole.set_LandClaimMinSize(value) end

---@return number
function IPlayerRole.get_LandClaimMaxAreas() end

---@param value number
function IPlayerRole.set_LandClaimMaxAreas(value) end

---@return string
function IPlayerRole.get_Code() end

---@return string
function IPlayerRole.get_Name() end

---@return string
function IPlayerRole.get_Description() end

---@return number
function IPlayerRole.get_PrivilegeLevel() end

---@return PlayerSpawnPos
function IPlayerRole.get_DefaultSpawn() end

---@return PlayerSpawnPos
function IPlayerRole.get_ForcedSpawn() end

---@return table
function IPlayerRole.get_Privileges() end

---@return HashSet`1
function IPlayerRole.get_RuntimePrivileges() end

---@return EnumGameMode # A players game mode
function IPlayerRole.get_DefaultGameMode() end

---@return Color
function IPlayerRole.get_Color() end

---@param role IPlayerRole
---@return boolean
function IPlayerRole.IsSuperior(role) end

---@param role IPlayerRole
---@return boolean
function IPlayerRole.EqualLevel(role) end

---@param privileges string
function IPlayerRole.GrantPrivilege(privileges) end

---@param privilege string
function IPlayerRole.RevokePrivilege(privilege) end


