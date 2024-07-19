---@meta

-- A subclass of ExplosionSmokeParticles.
---@class ExplosionParticles
---@field ExplosionFireTrailCubicles AdvancedParticleProperties
---@field ExplosionFireParticles SimpleParticleProperties
ExplosionParticles = {}

---@return ExplosionParticles
function ExplosionParticles.ctor() end

---@return userdata
function ExplosionParticles.GetType() end

---@return string
function ExplosionParticles.ToString() end

---@param obj userdata
---@return boolean
function ExplosionParticles.Equals(obj) end

---@return number
function ExplosionParticles.GetHashCode() end


