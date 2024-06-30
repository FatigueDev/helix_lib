---@meta

---@class EntityDespawnData
---@field Reason EnumDespawnReason The reason this entity despawned.
---@field DamageSourceForDeath DamageSource In the case of death, this was the damage source.
EntityDespawnData = {}

---@return EntityDespawnData
function EntityDespawnData.ctor() end

---@return userdata
function EntityDespawnData.GetType() end

---@return string
function EntityDespawnData.ToString() end

---@param obj userdata
---@return boolean
function EntityDespawnData.Equals(obj) end

---@return number
function EntityDespawnData.GetHashCode() end


