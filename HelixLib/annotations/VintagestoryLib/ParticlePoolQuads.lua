---@meta

---@class ParticlePoolQuads:  IParticlePool
---@field Model MeshRef
---@field QuantityAlive number
---@field BlockAccess IBlockAccessor
---@field ParticlesPool FastParticlePool
ParticlePoolQuads = {}

---@param poolSize number
---@param game ClientMain
---@param offthread boolean
---@return ParticlePoolQuads
function ParticlePoolQuads.ctor(poolSize, game, offthread) end

---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function ParticlePoolQuads.get_Model() end

---@return number
function ParticlePoolQuads.get_QuantityAlive() end

---@param value number
function ParticlePoolQuads.set_QuantityAlive(value) end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function ParticlePoolQuads.get_BlockAccess() end

---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ParticlePoolQuads.LoadModel() end

---@param particleProperties IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
---@return number
function ParticlePoolQuads.SpawnParticles(particleProperties) end

---@return boolean
function ParticlePoolQuads.ShouldRender() end

---@param dt number
---@param cameraPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function ParticlePoolQuads.OnNewFrame(dt, cameraPos) end

---@param dt number
---@param cameraPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function ParticlePoolQuads.OnNewFrameOffThread(dt, cameraPos) end

function ParticlePoolQuads.Dipose() end

---@return userdata
function ParticlePoolQuads.GetType() end

---@return string
function ParticlePoolQuads.ToString() end

---@param obj userdata
---@return boolean
function ParticlePoolQuads.Equals(obj) end

---@return number
function ParticlePoolQuads.GetHashCode() end


