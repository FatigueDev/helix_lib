---@meta

---@class ParticlePool2D
---@field RenderTransparent boolean
---@field Model MeshRef
---@field QuantityAlive number
---@field ParticlesPool FastParticlePool
ParticlePool2D = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param poolSize number
---@return ParticlePool2D
function ParticlePool2D.ctor(capi, poolSize) end

---@return boolean
function ParticlePool2D.get_RenderTransparent() end

---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function ParticlePool2D.get_Model() end

---@return number
function ParticlePool2D.get_QuantityAlive() end

---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ParticlePool2D.LoadModel() end

---@param particleProperties IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
---@return number
function ParticlePool2D.Spawn(particleProperties) end

---@return boolean
function ParticlePool2D.ShouldRender() end

---@param dt number
function ParticlePool2D.OnNewFrame(dt) end

function ParticlePool2D.Dispose() end

---@return userdata
function ParticlePool2D.GetType() end

---@return string
function ParticlePool2D.ToString() end

---@param obj userdata
---@return boolean
function ParticlePool2D.Equals(obj) end

---@return number
function ParticlePool2D.GetHashCode() end


