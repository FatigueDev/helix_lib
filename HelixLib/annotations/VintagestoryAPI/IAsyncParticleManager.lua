---@meta

---@class IAsyncParticleManager
---@field BlockAccess IBlockAccessor
IAsyncParticleManager = {}


---@param particleProperties IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
---@return number
function IAsyncParticleManager.Spawn(particleProperties) end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function IAsyncParticleManager.get_BlockAccess() end

---@param model EnumParticleModel
---@return number
function IAsyncParticleManager.ParticlesAlive(model) end


