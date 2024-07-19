---@meta

---@class AirBubbleParticles:  IParticlePropertiesProvider
---@field Async boolean
---@field SecondaryParticles IParticlePropertiesProvider[] Gets the secondary particles
---@field DeathParticles IParticlePropertiesProvider[] Gets the death particles.
---@field Bounciness number
---@field DieInAir boolean Whether or not the bubbles die in air.
---@field DieInLiquid boolean Whether or not the bubbles die in liquid.
---@field SwimOnLiquid boolean Whether or not the bubbles die in liquid.
---@field VertexFlags number Gets the glow level of the bubbles.
---@field GravityEffect number Gets the gravity applied to the particle.
---@field TerrainCollision boolean Whether or not the bubble collides with the terrain.
---@field LifeLength number Gets the length of life for the particle.
---@field OpacityEvolve EvolvingNatFloat
---@field RedEvolve EvolvingNatFloat
---@field GreenEvolve EvolvingNatFloat
---@field BlueEvolve EvolvingNatFloat
---@field RandomVelocityChange boolean
---@field Pos Vec3d
---@field Quantity number
---@field Size number
---@field SizeEvolve EvolvingNatFloat
---@field VelocityEvolve EvolvingNatFloat[]
---@field ParticleModel EnumParticleModel The base model of the particle.
---@field SelfPropelled boolean This particle is not self propelled.
---@field SecondarySpawnInterval number
---@field DieOnRainHeightmap boolean
---@field ParentVelocity Vec3f
---@field BasePos Vec3d The base position of the bubble particle.
---@field AddVelocity Vec3f The velocity to add to the bubble particle.
---@field Range number
---@field quantity number
---@field horVelocityMul number
AirBubbleParticles = {}

---@return AirBubbleParticles
function AirBubbleParticles.ctor() end

---@return boolean
function AirBubbleParticles.get_Async() end

-- Initializes the bubble particle.
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function AirBubbleParticles.Init(api) end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function AirBubbleParticles.get_SecondaryParticles() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function AirBubbleParticles.get_DeathParticles() end

---@return number
function AirBubbleParticles.get_Bounciness() end

---@param value number
function AirBubbleParticles.set_Bounciness(value) end

---@return boolean
function AirBubbleParticles.get_DieInAir() end

---@return boolean
function AirBubbleParticles.get_DieInLiquid() end

---@return boolean
function AirBubbleParticles.get_SwimOnLiquid() end

---@param value boolean
function AirBubbleParticles.set_SwimOnLiquid(value) end

---@return number
function AirBubbleParticles.get_VertexFlags() end

---@return number
function AirBubbleParticles.get_GravityEffect() end

---@return boolean
function AirBubbleParticles.get_TerrainCollision() end

---@return number
function AirBubbleParticles.get_LifeLength() end

---@param value number
function AirBubbleParticles.set_LifeLength(value) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function AirBubbleParticles.get_OpacityEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function AirBubbleParticles.get_RedEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function AirBubbleParticles.get_GreenEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function AirBubbleParticles.get_BlueEvolve() end

---@return boolean
function AirBubbleParticles.get_RandomVelocityChange() end

---@param value boolean
function AirBubbleParticles.set_RandomVelocityChange(value) end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function AirBubbleParticles.get_Pos() end

---@return number
function AirBubbleParticles.get_Quantity() end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function AirBubbleParticles.GetRgbaColor(capi) end

---@return number
function AirBubbleParticles.get_Size() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function AirBubbleParticles.get_SizeEvolve() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function AirBubbleParticles.GetVelocity(pos) end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function AirBubbleParticles.get_VelocityEvolve() end

---@return EnumParticleModel
function AirBubbleParticles.get_ParticleModel() end

---@return boolean
function AirBubbleParticles.get_SelfPropelled() end

-- This particle does not save to file.
---@param writer BinaryWriter
function AirBubbleParticles.ToBytes(writer) end

-- This particle does not load from file.
---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function AirBubbleParticles.FromBytes(reader, resolver) end

function AirBubbleParticles.BeginParticle() end

---@return number
function AirBubbleParticles.get_SecondarySpawnInterval() end

---@return boolean
function AirBubbleParticles.get_DieOnRainHeightmap() end

---@param particleInstance ParticleBase Represents a particle that has been spawned
function AirBubbleParticles.PrepareForSecondarySpawn(particleInstance) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function AirBubbleParticles.get_ParentVelocity() end

---@return userdata
function AirBubbleParticles.GetType() end

---@return string
function AirBubbleParticles.ToString() end

---@param obj userdata
---@return boolean
function AirBubbleParticles.Equals(obj) end

---@return number
function AirBubbleParticles.GetHashCode() end


