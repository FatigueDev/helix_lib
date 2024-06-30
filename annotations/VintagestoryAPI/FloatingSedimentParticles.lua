---@meta

---@class FloatingSedimentParticles: ParticlesProviderBase, IParticlePropertiesProvider, ParticlesProviderBase
---@field ParticleModel EnumParticleModel
---@field DieInLiquid boolean
---@field DieInAir boolean
---@field GravityEffect number
---@field LifeLength number
---@field SwimOnLiquid boolean
---@field Pos Vec3d
---@field Quantity number
---@field Size number
---@field VertexFlags number
---@field SizeEvolve EvolvingNatFloat
---@field OpacityEvolve EvolvingNatFloat
---@field Async boolean
---@field Bounciness number
---@field RandomVelocityChange boolean
---@field DieOnRainHeightmap boolean
---@field RedEvolve EvolvingNatFloat Gets the evolving red value of the particle.
---@field GreenEvolve EvolvingNatFloat Gets the evolving green value of the particle.
---@field BlueEvolve EvolvingNatFloat Gets the evolving blue value of the particle.
---@field VelocityEvolve EvolvingNatFloat[] Get the dynamic speeds of the particle.
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
---@field SedimentBlock Block
---@field SedimentPos BlockPos
---@field quantity number
---@field waterColor number
FloatingSedimentParticles = {}

---@return FloatingSedimentParticles
function FloatingSedimentParticles.ctor() end

---@return EnumParticleModel
function FloatingSedimentParticles.get_ParticleModel() end

---@return boolean
function FloatingSedimentParticles.get_DieInLiquid() end

---@return boolean
function FloatingSedimentParticles.get_DieInAir() end

---@return number
function FloatingSedimentParticles.get_GravityEffect() end

---@return number
function FloatingSedimentParticles.get_LifeLength() end

---@return boolean
function FloatingSedimentParticles.get_SwimOnLiquid() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function FloatingSedimentParticles.get_Pos() end

---@return number
function FloatingSedimentParticles.get_Quantity() end

---@return number
function FloatingSedimentParticles.get_Size() end

---@return number
function FloatingSedimentParticles.get_VertexFlags() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function FloatingSedimentParticles.get_SizeEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function FloatingSedimentParticles.get_OpacityEvolve() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function FloatingSedimentParticles.GetVelocity(pos) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function FloatingSedimentParticles.GetRgbaColor(capi) end

---@return boolean
function FloatingSedimentParticles.get_Async() end

---@return number
function FloatingSedimentParticles.get_Bounciness() end

---@param value number
function FloatingSedimentParticles.set_Bounciness(value) end

---@return boolean
function FloatingSedimentParticles.get_RandomVelocityChange() end

---@param value boolean
function FloatingSedimentParticles.set_RandomVelocityChange(value) end

---@return boolean
function FloatingSedimentParticles.get_DieOnRainHeightmap() end

---@param value boolean
function FloatingSedimentParticles.set_DieOnRainHeightmap(value) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function FloatingSedimentParticles.get_RedEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function FloatingSedimentParticles.get_GreenEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function FloatingSedimentParticles.get_BlueEvolve() end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function FloatingSedimentParticles.get_VelocityEvolve() end

---@return boolean
function FloatingSedimentParticles.get_SelfPropelled() end

---@return boolean
function FloatingSedimentParticles.get_TerrainCollision() end

-- How the particle is written to the save. (if it is)
---@param writer BinaryWriter
function FloatingSedimentParticles.ToBytes(writer) end

-- How the particle is read from the save.
---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function FloatingSedimentParticles.FromBytes(reader, resolver) end

---@return number
function FloatingSedimentParticles.get_SecondarySpawnInterval() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function FloatingSedimentParticles.get_SecondaryParticles() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function FloatingSedimentParticles.get_DeathParticles() end

function FloatingSedimentParticles.BeginParticle() end

---@param particleInstance ParticleBase Represents a particle that has been spawned
function FloatingSedimentParticles.PrepareForSecondarySpawn(particleInstance) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function FloatingSedimentParticles.Init(api) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function FloatingSedimentParticles.get_ParentVelocity() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function FloatingSedimentParticles.set_ParentVelocity(value) end

---@return boolean
function FloatingSedimentParticles.get_WindAffected() end

---@param value boolean
function FloatingSedimentParticles.set_WindAffected(value) end

---@return number
function FloatingSedimentParticles.get_ParentVelocityWeight() end

---@param value number
function FloatingSedimentParticles.set_ParentVelocityWeight(value) end

---@return userdata
function FloatingSedimentParticles.GetType() end

---@return string
function FloatingSedimentParticles.ToString() end

---@param obj userdata
---@return boolean
function FloatingSedimentParticles.Equals(obj) end

---@return number
function FloatingSedimentParticles.GetHashCode() end


