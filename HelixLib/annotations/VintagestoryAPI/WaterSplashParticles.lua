---@meta

---@class WaterSplashParticles: ParticlesProviderBase, IParticlePropertiesProvider, ParticlesProviderBase
---@field DieInLiquid boolean
---@field GravityEffect number
---@field LifeLength number
---@field SwimOnLiquid boolean
---@field Pos Vec3d
---@field Quantity number
---@field Size number
---@field SizeEvolve EvolvingNatFloat
---@field OpacityEvolve EvolvingNatFloat
---@field Async boolean
---@field Bounciness number
---@field RandomVelocityChange boolean
---@field DieOnRainHeightmap boolean
---@field DieInAir boolean Whether or not the particle dies in air.
---@field RedEvolve EvolvingNatFloat Gets the evolving red value of the particle.
---@field GreenEvolve EvolvingNatFloat Gets the evolving green value of the particle.
---@field BlueEvolve EvolvingNatFloat Gets the evolving blue value of the particle.
---@field ParticleModel EnumParticleModel Gets the model type of the particle.
---@field VelocityEvolve EvolvingNatFloat[] Get the dynamic speeds of the particle.
---@field VertexFlags number gets the glow level of the particle.
---@field SelfPropelled boolean Whether or not the particle is self-propelled.
---@field TerrainCollision boolean Whether or not the particle collides with the terrain or not.
---@field SecondarySpawnInterval number Gets the secondary particle spawn interval.
---@field SecondaryParticles IParticlePropertiesProvider[] Gets the secondary particle type for this particle.
---@field DeathParticles IParticlePropertiesProvider[] Gets the death particle for this type of particle.
---@field ParentVelocity Vec3f
---@field WindAffected boolean
---@field ParentVelocityWeight number
---@field BasePos Vec3d
---@field AddPos Vec3d
---@field AddVelocity Vec3f
---@field QuantityMul number
WaterSplashParticles = {}

---@return WaterSplashParticles
function WaterSplashParticles.ctor() end

---@return boolean
function WaterSplashParticles.get_DieInLiquid() end

---@return number
function WaterSplashParticles.get_GravityEffect() end

---@return number
function WaterSplashParticles.get_LifeLength() end

---@return boolean
function WaterSplashParticles.get_SwimOnLiquid() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function WaterSplashParticles.get_Pos() end

---@return number
function WaterSplashParticles.get_Quantity() end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function WaterSplashParticles.GetRgbaColor(capi) end

---@return number
function WaterSplashParticles.get_Size() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function WaterSplashParticles.get_SizeEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function WaterSplashParticles.get_OpacityEvolve() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function WaterSplashParticles.GetVelocity(pos) end

---@return boolean
function WaterSplashParticles.get_Async() end

---@return number
function WaterSplashParticles.get_Bounciness() end

---@param value number
function WaterSplashParticles.set_Bounciness(value) end

---@return boolean
function WaterSplashParticles.get_RandomVelocityChange() end

---@param value boolean
function WaterSplashParticles.set_RandomVelocityChange(value) end

---@return boolean
function WaterSplashParticles.get_DieOnRainHeightmap() end

---@param value boolean
function WaterSplashParticles.set_DieOnRainHeightmap(value) end

---@return boolean
function WaterSplashParticles.get_DieInAir() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function WaterSplashParticles.get_RedEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function WaterSplashParticles.get_GreenEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function WaterSplashParticles.get_BlueEvolve() end

---@return EnumParticleModel
function WaterSplashParticles.get_ParticleModel() end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function WaterSplashParticles.get_VelocityEvolve() end

---@return number
function WaterSplashParticles.get_VertexFlags() end

---@return boolean
function WaterSplashParticles.get_SelfPropelled() end

---@return boolean
function WaterSplashParticles.get_TerrainCollision() end

-- How the particle is written to the save. (if it is)
---@param writer BinaryWriter
function WaterSplashParticles.ToBytes(writer) end

-- How the particle is read from the save.
---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function WaterSplashParticles.FromBytes(reader, resolver) end

---@return number
function WaterSplashParticles.get_SecondarySpawnInterval() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function WaterSplashParticles.get_SecondaryParticles() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function WaterSplashParticles.get_DeathParticles() end

function WaterSplashParticles.BeginParticle() end

---@param particleInstance ParticleBase Represents a particle that has been spawned
function WaterSplashParticles.PrepareForSecondarySpawn(particleInstance) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function WaterSplashParticles.Init(api) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function WaterSplashParticles.get_ParentVelocity() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function WaterSplashParticles.set_ParentVelocity(value) end

---@return boolean
function WaterSplashParticles.get_WindAffected() end

---@param value boolean
function WaterSplashParticles.set_WindAffected(value) end

---@return number
function WaterSplashParticles.get_ParentVelocityWeight() end

---@param value number
function WaterSplashParticles.set_ParentVelocityWeight(value) end

---@return userdata
function WaterSplashParticles.GetType() end

---@return string
function WaterSplashParticles.ToString() end

---@param obj userdata
---@return boolean
function WaterSplashParticles.Equals(obj) end

---@return number
function WaterSplashParticles.GetHashCode() end


