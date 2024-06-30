---@meta

---@class ParticleRenderer2D
---@field Pool ParticlePool2D
---@field mvMatrix number
---@field pMatrix number
---@field oitPass number
---@field heldItemMode number
ParticleRenderer2D = {}

---@param screenManager ScreenManager
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param poolSize? number
---@return ParticleRenderer2D
function ParticleRenderer2D.ctor(screenManager, api, poolSize) end

---@param texture string
function ParticleRenderer2D.Compose(texture) end

---@param prop IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
function ParticleRenderer2D.Spawn(prop) end

---@param dt number
function ParticleRenderer2D.Render(dt) end

function ParticleRenderer2D.Dispose() end

---@return userdata
function ParticleRenderer2D.GetType() end

---@return string
function ParticleRenderer2D.ToString() end

---@param obj userdata
---@return boolean
function ParticleRenderer2D.Equals(obj) end

---@return number
function ParticleRenderer2D.GetHashCode() end


