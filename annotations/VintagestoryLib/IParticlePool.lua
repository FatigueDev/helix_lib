---@meta

---@class IParticlePool
---@field Model MeshRef
---@field QuantityAlive number
IParticlePool = {}


---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function IParticlePool.get_Model() end

---@return number
function IParticlePool.get_QuantityAlive() end

---@param properties IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
---@return number
function IParticlePool.SpawnParticles(properties) end

---@return boolean
function IParticlePool.ShouldRender() end

---@param dt number
---@param playerPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function IParticlePool.OnNewFrame(dt, playerPos) end

---@param dt number
---@param playerPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function IParticlePool.OnNewFrameOffThread(dt, playerPos) end

function IParticlePool.Dipose() end


