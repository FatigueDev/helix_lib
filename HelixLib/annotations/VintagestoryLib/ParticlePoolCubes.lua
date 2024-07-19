---@meta

---@class ParticlePoolCubes: ParticlePoolQuads, IParticlePool, ParticlePoolQuads
---@field Model MeshRef
---@field QuantityAlive number
---@field BlockAccess IBlockAccessor
---@field ParticlesPool FastParticlePool
ParticlePoolCubes = {}

---@param capacity number
---@param game ClientMain
---@param offthread boolean
---@return ParticlePoolCubes
function ParticlePoolCubes.ctor(capacity, game, offthread) end

---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ParticlePoolCubes.LoadModel() end

---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function ParticlePoolCubes.get_Model() end

---@return number
function ParticlePoolCubes.get_QuantityAlive() end

---@param value number
function ParticlePoolCubes.set_QuantityAlive(value) end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function ParticlePoolCubes.get_BlockAccess() end

---@param particleProperties IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
---@return number
function ParticlePoolCubes.SpawnParticles(particleProperties) end

---@return boolean
function ParticlePoolCubes.ShouldRender() end

---@param dt number
---@param cameraPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function ParticlePoolCubes.OnNewFrame(dt, cameraPos) end

---@param dt number
---@param cameraPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function ParticlePoolCubes.OnNewFrameOffThread(dt, cameraPos) end

function ParticlePoolCubes.Dipose() end

---@return userdata
function ParticlePoolCubes.GetType() end

---@return string
function ParticlePoolCubes.ToString() end

---@param obj userdata
---@return boolean
function ParticlePoolCubes.Equals(obj) end

---@return number
function ParticlePoolCubes.GetHashCode() end


