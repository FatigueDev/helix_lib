---@meta

-- Handles the smoke particles of where the explosion was.
---@class ExplosionSmokeParticles:  IParticlePropertiesProvider
---@field Async boolean
---@field Bounciness number
---@field RandomVelocityChange boolean
---@field DieOnRainHeightmap boolean
---@field DieInAir boolean
---@field DieInLiquid boolean
---@field SwimOnLiquid boolean
---@field VertexFlags number
---@field GravityEffect number
---@field TerrainCollision boolean
---@field LifeLength number
---@field OpacityEvolve EvolvingNatFloat
---@field RedEvolve EvolvingNatFloat
---@field GreenEvolve EvolvingNatFloat
---@field BlueEvolve EvolvingNatFloat
---@field Pos Vec3d
---@field Quantity number
---@field Size number
---@field SizeEvolve EvolvingNatFloat
---@field VelocityEvolve EvolvingNatFloat[]
---@field ParticleModel EnumParticleModel
---@field SelfPropelled boolean
---@field SecondarySpawnInterval number
---@field SecondaryParticles IParticlePropertiesProvider[]
---@field DeathParticles IParticlePropertiesProvider[]
---@field ParentVelocity Vec3f
---@field ParentVelocityWeight number
---@field basePos Vec3d
ExplosionSmokeParticles = {}

---@return ExplosionSmokeParticles
function ExplosionSmokeParticles.ctor() end

---@return boolean
function ExplosionSmokeParticles.get_Async() end

---@return number
function ExplosionSmokeParticles.get_Bounciness() end

---@param value number
function ExplosionSmokeParticles.set_Bounciness(value) end

---@return boolean
function ExplosionSmokeParticles.get_RandomVelocityChange() end

---@param value boolean
function ExplosionSmokeParticles.set_RandomVelocityChange(value) end

---@return boolean
function ExplosionSmokeParticles.get_DieOnRainHeightmap() end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function ExplosionSmokeParticles.Init(api) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ExplosionSmokeParticles.AddBlock(pos) end

function ExplosionSmokeParticles.BeginParticle() end

---@return boolean
function ExplosionSmokeParticles.get_DieInAir() end

---@return boolean
function ExplosionSmokeParticles.get_DieInLiquid() end

---@return boolean
function ExplosionSmokeParticles.get_SwimOnLiquid() end

---@return number
function ExplosionSmokeParticles.get_VertexFlags() end

---@return number
function ExplosionSmokeParticles.get_GravityEffect() end

---@return boolean
function ExplosionSmokeParticles.get_TerrainCollision() end

---@return number
function ExplosionSmokeParticles.get_LifeLength() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function ExplosionSmokeParticles.get_OpacityEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function ExplosionSmokeParticles.get_RedEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function ExplosionSmokeParticles.get_GreenEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function ExplosionSmokeParticles.get_BlueEvolve() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function ExplosionSmokeParticles.get_Pos() end

---@return number
function ExplosionSmokeParticles.get_Quantity() end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function ExplosionSmokeParticles.GetRgbaColor(capi) end

---@return number
function ExplosionSmokeParticles.get_Size() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function ExplosionSmokeParticles.get_SizeEvolve() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ExplosionSmokeParticles.GetVelocity(pos) end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function ExplosionSmokeParticles.get_VelocityEvolve() end

---@return EnumParticleModel
function ExplosionSmokeParticles.get_ParticleModel() end

---@return boolean
function ExplosionSmokeParticles.get_SelfPropelled() end

---@param writer BinaryWriter
function ExplosionSmokeParticles.ToBytes(writer) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function ExplosionSmokeParticles.FromBytes(reader, resolver) end

---@param explodedBlocks table
function ExplosionSmokeParticles.AddBlocks(explodedBlocks) end

---@return number
function ExplosionSmokeParticles.get_SecondarySpawnInterval() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function ExplosionSmokeParticles.get_SecondaryParticles() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function ExplosionSmokeParticles.get_DeathParticles() end

---@param particleInstance ParticleBase Represents a particle that has been spawned
function ExplosionSmokeParticles.PrepareForSecondarySpawn(particleInstance) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ExplosionSmokeParticles.get_ParentVelocity() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ExplosionSmokeParticles.set_ParentVelocity(value) end

---@return number
function ExplosionSmokeParticles.get_ParentVelocityWeight() end

---@param value number
function ExplosionSmokeParticles.set_ParentVelocityWeight(value) end

---@return userdata
function ExplosionSmokeParticles.GetType() end

---@return string
function ExplosionSmokeParticles.ToString() end

---@param obj userdata
---@return boolean
function ExplosionSmokeParticles.Equals(obj) end

---@return number
function ExplosionSmokeParticles.GetHashCode() end


