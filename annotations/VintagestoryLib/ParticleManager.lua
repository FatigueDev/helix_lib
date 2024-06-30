---@meta

---@class ParticleManager
ParticleManager = {}

---@return ParticleManager
function ParticleManager.ctor() end

---@param particleSystem SystemRenderParticles
function ParticleManager.Init(particleSystem) end

---@param quantity number
---@param color number
---@param minPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param maxPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param minVelocity Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param maxVelocity Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param lifeLength number
---@param gravityEffect number
---@param scale number
---@param model EnumParticleModel
function ParticleManager.SpawnParticles(quantity, color, minPos, maxPos, minVelocity, maxVelocity, lifeLength, gravityEffect, scale, model) end

---@param props IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
function ParticleManager.EnqueueAsyncParticles(props) end

---@param properties IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
function ParticleManager.SpawnParticles(properties) end

---@param blockdamage BlockDamage
function ParticleManager.SpawnBlockBreakingParticles(blockdamage) end

---@param particleProperties IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
---@return number
function ParticleManager.SpawnParticlesOffThread(particleProperties) end

---@param model EnumParticleModel
---@return number
function ParticleManager.ParticlesAlive(model) end

---@return userdata
function ParticleManager.GetType() end

---@return string
function ParticleManager.ToString() end

---@param obj userdata
---@return boolean
function ParticleManager.Equals(obj) end

---@return number
function ParticleManager.GetHashCode() end


