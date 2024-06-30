---@meta

-- A base class for all particle providers.
---@class ParticlesProviderBase:  IParticlePropertiesProvider
---@field Async boolean
---@field Bounciness number
---@field RandomVelocityChange boolean
---@field DieOnRainHeightmap boolean
---@field DieInLiquid boolean Determines whether or not the particle dies in liquid
---@field SwimOnLiquid boolean
---@field DieInAir boolean Whether or not the particle dies in air.
---@field Quantity number Gets the quantity of particles.
---@field Pos Vec3d Gets the position of particles.
---@field OpacityEvolve EvolvingNatFloat Gets the evolving opacity value of the particle.
---@field RedEvolve EvolvingNatFloat Gets the evolving red value of the particle.
---@field GreenEvolve EvolvingNatFloat Gets the evolving green value of the particle.
---@field BlueEvolve EvolvingNatFloat Gets the evolving blue value of the particle.
---@field ParticleModel EnumParticleModel Gets the model type of the particle.
---@field Size number gets the size of the particle.
---@field SizeEvolve EvolvingNatFloat gets the dynamic size of the particle.
---@field VelocityEvolve EvolvingNatFloat[] Get the dynamic speeds of the particle.
---@field GravityEffect number Gets the gravity effect on the particle.
---@field LifeLength number gets the life length of the particle.
---@field VertexFlags number gets the glow level of the particle.
---@field SelfPropelled boolean Whether or not the particle is self-propelled.
---@field TerrainCollision boolean Whether or not the particle collides with the terrain or not.
---@field SecondarySpawnInterval number Gets the secondary particle spawn interval.
---@field SecondaryParticles IParticlePropertiesProvider[] Gets the secondary particle type for this particle.
---@field DeathParticles IParticlePropertiesProvider[] Gets the death particle for this type of particle.
---@field ParentVelocity Vec3f
---@field WindAffected boolean
---@field ParentVelocityWeight number
ParticlesProviderBase = {}


---@return boolean
function ParticlesProviderBase.get_Async() end

---@return number
function ParticlesProviderBase.get_Bounciness() end

---@param value number
function ParticlesProviderBase.set_Bounciness(value) end

---@return boolean
function ParticlesProviderBase.get_RandomVelocityChange() end

---@param value boolean
function ParticlesProviderBase.set_RandomVelocityChange(value) end

---@return boolean
function ParticlesProviderBase.get_DieOnRainHeightmap() end

---@param value boolean
function ParticlesProviderBase.set_DieOnRainHeightmap(value) end

---@return boolean
function ParticlesProviderBase.get_DieInLiquid() end

---@return boolean
function ParticlesProviderBase.get_SwimOnLiquid() end

---@return boolean
function ParticlesProviderBase.get_DieInAir() end

---@return number
function ParticlesProviderBase.get_Quantity() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function ParticlesProviderBase.get_Pos() end

-- Gets the velocity of the particles.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ParticlesProviderBase.GetVelocity(pos) end

-- Gets the color of the particle.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function ParticlesProviderBase.GetRgbaColor(capi) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function ParticlesProviderBase.get_OpacityEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function ParticlesProviderBase.get_RedEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function ParticlesProviderBase.get_GreenEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function ParticlesProviderBase.get_BlueEvolve() end

---@return EnumParticleModel
function ParticlesProviderBase.get_ParticleModel() end

---@return number
function ParticlesProviderBase.get_Size() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function ParticlesProviderBase.get_SizeEvolve() end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function ParticlesProviderBase.get_VelocityEvolve() end

---@return number
function ParticlesProviderBase.get_GravityEffect() end

---@return number
function ParticlesProviderBase.get_LifeLength() end

---@return number
function ParticlesProviderBase.get_VertexFlags() end

---@return boolean
function ParticlesProviderBase.get_SelfPropelled() end

---@return boolean
function ParticlesProviderBase.get_TerrainCollision() end

-- How the particle is written to the save. (if it is)
---@param writer BinaryWriter
function ParticlesProviderBase.ToBytes(writer) end

-- How the particle is read from the save.
---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function ParticlesProviderBase.FromBytes(reader, resolver) end

---@return number
function ParticlesProviderBase.get_SecondarySpawnInterval() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function ParticlesProviderBase.get_SecondaryParticles() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function ParticlesProviderBase.get_DeathParticles() end

function ParticlesProviderBase.BeginParticle() end

---@param particleInstance ParticleBase Represents a particle that has been spawned
function ParticlesProviderBase.PrepareForSecondarySpawn(particleInstance) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function ParticlesProviderBase.Init(api) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ParticlesProviderBase.get_ParentVelocity() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ParticlesProviderBase.set_ParentVelocity(value) end

---@return boolean
function ParticlesProviderBase.get_WindAffected() end

---@param value boolean
function ParticlesProviderBase.set_WindAffected(value) end

---@return number
function ParticlesProviderBase.get_ParentVelocityWeight() end

---@param value number
function ParticlesProviderBase.set_ParentVelocityWeight(value) end

---@return userdata
function ParticlesProviderBase.GetType() end

---@return string
function ParticlesProviderBase.ToString() end

---@param obj userdata
---@return boolean
function ParticlesProviderBase.Equals(obj) end

---@return number
function ParticlesProviderBase.GetHashCode() end


