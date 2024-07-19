---@meta

-- A configurable implementation of IParticlePropertiesProvider
---@class SimpleParticleProperties:  IParticlePropertiesProvider
---@field rand Random
---@field ParentVelocity Vec3f
---@field ParentVelocityWeight number
---@field GravityEffect number
---@field VertexFlags number
---@field Async boolean
---@field Bounciness number
---@field ShouldDieInAir boolean
---@field ShouldDieInLiquid boolean
---@field ShouldSwimOnLiquid boolean
---@field WithTerrainCollision boolean
---@field OpacityEvolve EvolvingNatFloat
---@field RedEvolve EvolvingNatFloat
---@field GreenEvolve EvolvingNatFloat
---@field BlueEvolve EvolvingNatFloat
---@field SizeEvolve EvolvingNatFloat
---@field RandomVelocityChange boolean
---@field DieInAir boolean
---@field DieInLiquid boolean
---@field SwimOnLiquid boolean
---@field Quantity number
---@field Pos Vec3d
---@field Size number
---@field ParticleModel EnumParticleModel
---@field VelocityEvolve EvolvingNatFloat[]
---@field TerrainCollision boolean
---@field SecondaryParticles IParticlePropertiesProvider[]
---@field DeathParticles IParticlePropertiesProvider[]
---@field SecondarySpawnInterval number
---@field DieOnRainHeightmap boolean
---@field WindAffected boolean
---@field MinQuantity number
---@field AddQuantity number
---@field WindAffectednes number
---@field MinPos Vec3d
---@field AddPos Vec3d
---@field MinVelocity Vec3f
---@field AddVelocity Vec3f
---@field LifeLength number
---@field addLifeLength number
---@field MinSize number
---@field MaxSize number
---@field Color number
---@field SelfPropelled boolean
---@field ColorByBlock Block
---@field ClimateColorMap string The color map for climate color mapping. Leave null for no coloring by climate
---@field SeasonColorMap string The color map for season color mapping. Leave null for no coloring by season
---@field randTL ThreadLocal`1
SimpleParticleProperties = {}

---@return SimpleParticleProperties
function SimpleParticleProperties.ctor() end
---@param minQuantity number
---@param maxQuantity number
---@param color number
---@param minPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param maxPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param minVelocity Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param maxVelocity Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param lifeLength? number
---@param gravityEffect? number
---@param minSize? number
---@param maxSize? number
---@param model? EnumParticleModel
---@return SimpleParticleProperties
function SimpleParticleProperties.ctor(minQuantity, maxQuantity, color, minPos, maxPos, minVelocity, maxVelocity, lifeLength, gravityEffect, minSize, maxSize, model) end

---@return Random
function SimpleParticleProperties.get_rand() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function SimpleParticleProperties.get_ParentVelocity() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function SimpleParticleProperties.set_ParentVelocity(value) end

---@return number
function SimpleParticleProperties.get_ParentVelocityWeight() end

---@param value number
function SimpleParticleProperties.set_ParentVelocityWeight(value) end

---@return number
function SimpleParticleProperties.get_GravityEffect() end

---@param value number
function SimpleParticleProperties.set_GravityEffect(value) end

---@return number
function SimpleParticleProperties.get_VertexFlags() end

---@param value number
function SimpleParticleProperties.set_VertexFlags(value) end

---@return boolean
function SimpleParticleProperties.get_Async() end

---@param value boolean
function SimpleParticleProperties.set_Async(value) end

---@return number
function SimpleParticleProperties.get_Bounciness() end

---@param value number
function SimpleParticleProperties.set_Bounciness(value) end

---@return boolean
function SimpleParticleProperties.get_ShouldDieInAir() end

---@param value boolean
function SimpleParticleProperties.set_ShouldDieInAir(value) end

---@return boolean
function SimpleParticleProperties.get_ShouldDieInLiquid() end

---@param value boolean
function SimpleParticleProperties.set_ShouldDieInLiquid(value) end

---@return boolean
function SimpleParticleProperties.get_ShouldSwimOnLiquid() end

---@param value boolean
function SimpleParticleProperties.set_ShouldSwimOnLiquid(value) end

---@return boolean
function SimpleParticleProperties.get_WithTerrainCollision() end

---@param value boolean
function SimpleParticleProperties.set_WithTerrainCollision(value) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function SimpleParticleProperties.get_OpacityEvolve() end

---@param value EvolvingNatFloat A number generator whose return value changes over time, parametrized by a transform function and some constants
function SimpleParticleProperties.set_OpacityEvolve(value) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function SimpleParticleProperties.get_RedEvolve() end

---@param value EvolvingNatFloat A number generator whose return value changes over time, parametrized by a transform function and some constants
function SimpleParticleProperties.set_RedEvolve(value) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function SimpleParticleProperties.get_GreenEvolve() end

---@param value EvolvingNatFloat A number generator whose return value changes over time, parametrized by a transform function and some constants
function SimpleParticleProperties.set_GreenEvolve(value) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function SimpleParticleProperties.get_BlueEvolve() end

---@param value EvolvingNatFloat A number generator whose return value changes over time, parametrized by a transform function and some constants
function SimpleParticleProperties.set_BlueEvolve(value) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function SimpleParticleProperties.get_SizeEvolve() end

---@param value EvolvingNatFloat A number generator whose return value changes over time, parametrized by a transform function and some constants
function SimpleParticleProperties.set_SizeEvolve(value) end

---@return boolean
function SimpleParticleProperties.get_RandomVelocityChange() end

---@param value boolean
function SimpleParticleProperties.set_RandomVelocityChange(value) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function SimpleParticleProperties.Init(api) end

---@return boolean
function SimpleParticleProperties.get_DieInAir() end

---@return boolean
function SimpleParticleProperties.get_DieInLiquid() end

---@return boolean
function SimpleParticleProperties.get_SwimOnLiquid() end

---@return number
function SimpleParticleProperties.get_Quantity() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function SimpleParticleProperties.get_Pos() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function SimpleParticleProperties.GetVelocity(pos) end

---@return number
function SimpleParticleProperties.get_Size() end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function SimpleParticleProperties.GetRgbaColor(capi) end

---@return EnumParticleModel
function SimpleParticleProperties.get_ParticleModel() end

---@param value EnumParticleModel
function SimpleParticleProperties.set_ParticleModel(value) end

---@return boolean
function SimpleParticleProperties.UseLighting() end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function SimpleParticleProperties.get_VelocityEvolve() end

---@return boolean
function SimpleParticleProperties.get_TerrainCollision() end

---@param writer BinaryWriter
function SimpleParticleProperties.ToBytes(writer) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function SimpleParticleProperties.FromBytes(reader, resolver) end

function SimpleParticleProperties.BeginParticle() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function SimpleParticleProperties.get_SecondaryParticles() end

---@param value IParticlePropertiesProvider[] Represents a provider of particle properties to be used when generating a particle
function SimpleParticleProperties.set_SecondaryParticles(value) end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function SimpleParticleProperties.get_DeathParticles() end

---@param value IParticlePropertiesProvider[] Represents a provider of particle properties to be used when generating a particle
function SimpleParticleProperties.set_DeathParticles(value) end

---@return number
function SimpleParticleProperties.get_SecondarySpawnInterval() end

---@return boolean
function SimpleParticleProperties.get_DieOnRainHeightmap() end

---@param value boolean
function SimpleParticleProperties.set_DieOnRainHeightmap(value) end

---@return boolean
function SimpleParticleProperties.get_WindAffected() end

---@param value boolean
function SimpleParticleProperties.set_WindAffected(value) end

---@param particleInstance ParticleBase Represents a particle that has been spawned
function SimpleParticleProperties.PrepareForSecondarySpawn(particleInstance) end

---@param worldForResovle IWorldAccessor Important interface to access the game world.
---@return SimpleParticleProperties # A configurable implementation of IParticlePropertiesProvider
function SimpleParticleProperties.Clone(worldForResovle) end

---@return userdata
function SimpleParticleProperties.GetType() end

---@return string
function SimpleParticleProperties.ToString() end

---@param obj userdata
---@return boolean
function SimpleParticleProperties.Equals(obj) end

---@return number
function SimpleParticleProperties.GetHashCode() end


