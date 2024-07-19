---@meta

-- Represents a provider of particle properties to be used when generating a particle
---@class IParticlePropertiesProvider
---@field Async boolean If true, will be be spawned in the async particle system, which does not affect main game performance, recommended for large quantities of particles, slightly less optimal for particles that spawn very often
---@field ParentVelocityWeight number
---@field DieInLiquid boolean Whether the particle should despawn when in contact with liquids
---@field SwimOnLiquid boolean
---@field Bounciness number
---@field DieInAir boolean Whether the particle should despawn when in contact with air (e.g. for water bubbles)
---@field DieOnRainHeightmap boolean If true, particle dies if it falls below the rain height at its given location
---@field Quantity number How many particles should spawn? For every particle spawned, all of belows methods are called once. E.g. if quantity is 10, GetPos(), GetVelocity(),... is called 10 times. 
---@field Pos Vec3d Position in the world where the particle should spawn
---@field ParentVelocity Vec3f
---@field OpacityEvolve EvolvingNatFloat Return null or 1 if opacity should remain unchanged over time. lifetimeLeft is always a value between 0 and 1
---@field RedEvolve EvolvingNatFloat Return null or 1 if opacity should remain unchanged over time. lifetimeLeft is always a value between 0 and 1
---@field GreenEvolve EvolvingNatFloat Return null or 1 if opacity should remain unchanged over time. lifetimeLeft is always a value between 0 and 1
---@field BlueEvolve EvolvingNatFloat Return null or 1 if opacity should remain unchanged over time. lifetimeLeft is always a value between 0 and 1
---@field ParticleModel EnumParticleModel Cube or Quad?
---@field Size number Size of the particle
---@field SizeEvolve EvolvingNatFloat Size change over time
---@field VelocityEvolve EvolvingNatFloat[] Velocity change over time (acts as a multiplier to the velocity)
---@field GravityEffect number How strongly the particle is affected by gravity (0 = no gravity applied)
---@field LifeLength number How long the particle should live (default = 1)
---@field VertexFlags number See also VertexFlags
---@field SelfPropelled boolean If true, a particle will restore it's initial velocity once it's obstruction has been cleared e.g. Smokes will start flying upwards again if is currently stuck under a block and the block is removed
---@field TerrainCollision boolean If true, the particle will collide with the terrain
---@field SecondarySpawnInterval number Determines the interval of time that must elapse during it's parent particle's lifetime before this one will spawn. This is only honored if this particle is defined as a secondary particle.
---@field SecondaryParticles IParticlePropertiesProvider[] The secondary particle properties. Secondary particles are particles that are emitted from an in-flight particle.
---@field DeathParticles IParticlePropertiesProvider[] The particle to spawn upon the particle death.
---@field RandomVelocityChange boolean
IParticlePropertiesProvider = {}


---@return boolean
function IParticlePropertiesProvider.get_Async() end

-- Called before the particle provider is used for particle creation
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function IParticlePropertiesProvider.Init(api) end

-- Called just before a new particle is being created. You can use this to produce e.g. alternating kinds of particles
function IParticlePropertiesProvider.BeginParticle() end

---@return number
function IParticlePropertiesProvider.get_ParentVelocityWeight() end

---@return boolean
function IParticlePropertiesProvider.get_DieInLiquid() end

---@return boolean
function IParticlePropertiesProvider.get_SwimOnLiquid() end

---@return number
function IParticlePropertiesProvider.get_Bounciness() end

---@return boolean
function IParticlePropertiesProvider.get_DieInAir() end

---@return boolean
function IParticlePropertiesProvider.get_DieOnRainHeightmap() end

---@return number
function IParticlePropertiesProvider.get_Quantity() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function IParticlePropertiesProvider.get_Pos() end

-- In what direction should the particle fly/fall
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IParticlePropertiesProvider.GetVelocity(pos) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IParticlePropertiesProvider.get_ParentVelocity() end

-- The particles Rgba Color
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function IParticlePropertiesProvider.GetRgbaColor(capi) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function IParticlePropertiesProvider.get_OpacityEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function IParticlePropertiesProvider.get_RedEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function IParticlePropertiesProvider.get_GreenEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function IParticlePropertiesProvider.get_BlueEvolve() end

---@return EnumParticleModel
function IParticlePropertiesProvider.get_ParticleModel() end

---@return number
function IParticlePropertiesProvider.get_Size() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function IParticlePropertiesProvider.get_SizeEvolve() end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function IParticlePropertiesProvider.get_VelocityEvolve() end

---@return number
function IParticlePropertiesProvider.get_GravityEffect() end

---@return number
function IParticlePropertiesProvider.get_LifeLength() end

---@return number
function IParticlePropertiesProvider.get_VertexFlags() end

---@return boolean
function IParticlePropertiesProvider.get_SelfPropelled() end

---@return boolean
function IParticlePropertiesProvider.get_TerrainCollision() end

-- For sending over the network
---@param writer BinaryWriter
function IParticlePropertiesProvider.ToBytes(writer) end

-- For reading from the network
---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function IParticlePropertiesProvider.FromBytes(reader, resolver) end

---@return number
function IParticlePropertiesProvider.get_SecondarySpawnInterval() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function IParticlePropertiesProvider.get_SecondaryParticles() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function IParticlePropertiesProvider.get_DeathParticles() end

-- Updates instance related state for secondary particles based on the given parent particle instance
---@param particleInstance ParticleBase Represents a particle that has been spawned
function IParticlePropertiesProvider.PrepareForSecondarySpawn(particleInstance) end

---@return boolean
function IParticlePropertiesProvider.get_RandomVelocityChange() end


