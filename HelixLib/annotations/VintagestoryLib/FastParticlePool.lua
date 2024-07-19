---@meta

---@class FastParticlePool
---@field FirstAlive ParticleBase
---@field FirstDead ParticleBase
---@field PoolSize number
---@field AliveCount number
---@field CreateParticleDelegate nil
FastParticlePool = {}

---@param poolSize number
---@param createParticle CreateParticleDelegate
---@return FastParticlePool
function FastParticlePool.ctor(poolSize, createParticle) end

---@param elem ParticleBase Represents a particle that has been spawned
function FastParticlePool.Kill(elem) end

---@return ParticleBase # Represents a particle that has been spawned
function FastParticlePool.ReviveOne() end

---@return userdata
function FastParticlePool.GetType() end

---@return string
function FastParticlePool.ToString() end

---@param obj userdata
---@return boolean
function FastParticlePool.Equals(obj) end

---@return number
function FastParticlePool.GetHashCode() end


