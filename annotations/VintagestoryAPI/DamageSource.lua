---@meta

---@class DamageSource
---@field Source EnumDamageSource The type of source the damage came from.
---@field Type EnumDamageType The type of damage that was taken.
---@field HitPosition Vec3d The relative hit position of where the damage occured.
---@field SourceEntity Entity The source entity the damage came from, if any
---@field CauseEntity Entity The entity that caused this damage, e.g. the entity that threw the SourceEntity projectile, if any
---@field SourceBlock Block The source block the damage came from, if any
---@field SourcePos Vec3d the location of the damage source.
---@field DamageTier number Tier of the weapon used to damage the entity, if any
---@field KnockbackStrength number The amount of knockback this damage will incur
DamageSource = {}

---@return DamageSource
function DamageSource.ctor() end

-- Fetches the location of the damage source from either SourcePos or SourceEntity
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function DamageSource.GetSourcePosition() end

-- Get the entity that caused the damage.
-- If a projectile like a stone was thrown this will return the entity that threw the stone instead of the stone.
---@return Entity # The basic class for all entities in the game
function DamageSource.GetCauseEntity() end

---@return userdata
function DamageSource.GetType() end

---@return string
function DamageSource.ToString() end

---@param obj userdata
---@return boolean
function DamageSource.Equals(obj) end

---@return number
function DamageSource.GetHashCode() end


