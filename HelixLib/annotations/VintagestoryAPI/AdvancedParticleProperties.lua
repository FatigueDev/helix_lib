---@meta

---@class AdvancedParticleProperties:  IParticlePropertiesProvider
---@field Async boolean
---@field RandomVelocityChange boolean
---@field DieOnRainHeightmap boolean
---@field SecondaryParticles AdvancedParticleProperties[] The Secondary particles for the JsonObject.
---@field DeathParticles AdvancedParticleProperties[] The death particles for the JsonObject.
---@field SecondarySpawnInterval NatFloat The inverval that the secondary particles spawn.
---@field Bounciness number
---@field DieInAir boolean Whether or not the entity dies in air.
---@field DieInLiquid boolean Whether or not the entity dies in water.
---@field SwimOnLiquid boolean
---@field ColorByBlock boolean Whether or not to color the particle by the block it's on.
---@field OpacityEvolve EvolvingNatFloat a transforming opacity value.
---@field RedEvolve EvolvingNatFloat A transforming Red value.
---@field GreenEvolve EvolvingNatFloat A transforming Green value.
---@field BlueEvolve EvolvingNatFloat A transforming Blue value.
---@field GravityEffect NatFloat The gravity effect on the particle.
---@field LifeLength NatFloat The life length of the particle.
---@field Quantity NatFloat The quantity of the particles given.
---@field Size NatFloat The size of the particles given.
---@field SizeEvolve EvolvingNatFloat a transforming Size value.
---@field Velocity NatFloat[] The velocity of the particles.
---@field VelocityEvolve EvolvingNatFloat[] A dynamic velocity value.
---@field ParticleModel EnumParticleModel Sets the base model for the particle.
---@field VertexFlags number The level of glow in the particle.
---@field SelfPropelled boolean Whether or not the particle is self propelled.
---@field TerrainCollision boolean Whether or not the particle collides with the terrain.
---@field WindAffectednes number
---@field Pos Vec3d
---@field ParentVelocity Vec3f
---@field WindAffectednesAtPos number
---@field ParentVelocityWeight number
---@field HsvaColor NatFloat[] The Hue/Saturation/Value/Alpha for the color of the particle.
---@field PosOffset NatFloat[] Offset from the blocks hitboxes top middle position
---@field basePos Vec3d The base position for the particles.
---@field baseVelocity Vec3f
---@field block Block The base block for the particle.
---@field Color number When HsvaColor is null, this is used
AdvancedParticleProperties = {}

---@return AdvancedParticleProperties
function AdvancedParticleProperties.ctor() end

---@return boolean
function AdvancedParticleProperties.get_Async() end

---@return boolean
function AdvancedParticleProperties.get_RandomVelocityChange() end

---@param value boolean
function AdvancedParticleProperties.set_RandomVelocityChange(value) end

---@return boolean
function AdvancedParticleProperties.get_DieOnRainHeightmap() end

---@param value boolean
function AdvancedParticleProperties.set_DieOnRainHeightmap(value) end

---@return AdvancedParticleProperties[]
function AdvancedParticleProperties.get_SecondaryParticles() end

---@param value AdvancedParticleProperties[]
function AdvancedParticleProperties.set_SecondaryParticles(value) end

---@return AdvancedParticleProperties[]
function AdvancedParticleProperties.get_DeathParticles() end

---@param value AdvancedParticleProperties[]
function AdvancedParticleProperties.set_DeathParticles(value) end

---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function AdvancedParticleProperties.get_SecondarySpawnInterval() end

---@param value NatFloat A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function AdvancedParticleProperties.set_SecondarySpawnInterval(value) end

---@return number
function AdvancedParticleProperties.get_Bounciness() end

---@param value number
function AdvancedParticleProperties.set_Bounciness(value) end

---@return boolean
function AdvancedParticleProperties.get_DieInAir() end

---@param value boolean
function AdvancedParticleProperties.set_DieInAir(value) end

---@return boolean
function AdvancedParticleProperties.get_DieInLiquid() end

---@param value boolean
function AdvancedParticleProperties.set_DieInLiquid(value) end

---@return boolean
function AdvancedParticleProperties.get_SwimOnLiquid() end

---@param value boolean
function AdvancedParticleProperties.set_SwimOnLiquid(value) end

---@return boolean
function AdvancedParticleProperties.get_ColorByBlock() end

---@param value boolean
function AdvancedParticleProperties.set_ColorByBlock(value) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function AdvancedParticleProperties.get_OpacityEvolve() end

---@param value EvolvingNatFloat A number generator whose return value changes over time, parametrized by a transform function and some constants
function AdvancedParticleProperties.set_OpacityEvolve(value) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function AdvancedParticleProperties.get_RedEvolve() end

---@param value EvolvingNatFloat A number generator whose return value changes over time, parametrized by a transform function and some constants
function AdvancedParticleProperties.set_RedEvolve(value) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function AdvancedParticleProperties.get_GreenEvolve() end

---@param value EvolvingNatFloat A number generator whose return value changes over time, parametrized by a transform function and some constants
function AdvancedParticleProperties.set_GreenEvolve(value) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function AdvancedParticleProperties.get_BlueEvolve() end

---@param value EvolvingNatFloat A number generator whose return value changes over time, parametrized by a transform function and some constants
function AdvancedParticleProperties.set_BlueEvolve(value) end

---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function AdvancedParticleProperties.get_GravityEffect() end

---@param value NatFloat A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function AdvancedParticleProperties.set_GravityEffect(value) end

---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function AdvancedParticleProperties.get_LifeLength() end

---@param value NatFloat A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function AdvancedParticleProperties.set_LifeLength(value) end

---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function AdvancedParticleProperties.get_Quantity() end

---@param value NatFloat A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function AdvancedParticleProperties.set_Quantity(value) end

---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function AdvancedParticleProperties.get_Size() end

---@param value NatFloat A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function AdvancedParticleProperties.set_Size(value) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function AdvancedParticleProperties.get_SizeEvolve() end

---@param value EvolvingNatFloat A number generator whose return value changes over time, parametrized by a transform function and some constants
function AdvancedParticleProperties.set_SizeEvolve(value) end

---@return NatFloat[] # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function AdvancedParticleProperties.get_Velocity() end

---@param value NatFloat[] A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function AdvancedParticleProperties.set_Velocity(value) end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function AdvancedParticleProperties.get_VelocityEvolve() end

---@param value EvolvingNatFloat[] A number generator whose return value changes over time, parametrized by a transform function and some constants
function AdvancedParticleProperties.set_VelocityEvolve(value) end

---@return EnumParticleModel
function AdvancedParticleProperties.get_ParticleModel() end

---@param value EnumParticleModel
function AdvancedParticleProperties.set_ParticleModel(value) end

---@return number
function AdvancedParticleProperties.get_VertexFlags() end

---@param value number
function AdvancedParticleProperties.set_VertexFlags(value) end

---@return boolean
function AdvancedParticleProperties.get_SelfPropelled() end

---@param value boolean
function AdvancedParticleProperties.set_SelfPropelled(value) end

---@return boolean
function AdvancedParticleProperties.get_TerrainCollision() end

---@param value boolean
function AdvancedParticleProperties.set_TerrainCollision(value) end

---@return number
function AdvancedParticleProperties.get_WindAffectednes() end

---@param value number
function AdvancedParticleProperties.set_WindAffectednes(value) end

-- Initializes the particle.
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function AdvancedParticleProperties.Init(api) end

-- Converts the color to RGBA.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function AdvancedParticleProperties.GetRgbaColor(capi) end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function AdvancedParticleProperties.get_Pos() end

-- Gets the velocity of the particle.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function AdvancedParticleProperties.GetVelocity(pos) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function AdvancedParticleProperties.get_ParentVelocity() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function AdvancedParticleProperties.set_ParentVelocity(value) end

---@return number
function AdvancedParticleProperties.get_WindAffectednesAtPos() end

---@param value number
function AdvancedParticleProperties.set_WindAffectednesAtPos(value) end

---@return number
function AdvancedParticleProperties.get_ParentVelocityWeight() end

---@param value number
function AdvancedParticleProperties.set_ParentVelocityWeight(value) end

---@param writer BinaryWriter
function AdvancedParticleProperties.ToBytes(writer) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function AdvancedParticleProperties.FromBytes(reader, resolver) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
---@return AdvancedParticleProperties
function AdvancedParticleProperties.createFromBytes(reader, resolver) end

---@return AdvancedParticleProperties
function AdvancedParticleProperties.Clone() end

-- Begins the advanced particle.
function AdvancedParticleProperties.BeginParticle() end

-- prepares the particle for secondary spawning.
---@param particleInstance ParticleBase Represents a particle that has been spawned
function AdvancedParticleProperties.PrepareForSecondarySpawn(particleInstance) end

---@return userdata
function AdvancedParticleProperties.GetType() end

---@return string
function AdvancedParticleProperties.ToString() end

---@param obj userdata
---@return boolean
function AdvancedParticleProperties.Equals(obj) end

---@return number
function AdvancedParticleProperties.GetHashCode() end


