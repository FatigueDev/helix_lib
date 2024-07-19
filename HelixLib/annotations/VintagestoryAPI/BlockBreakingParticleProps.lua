---@meta

---@class BlockBreakingParticleProps: CollectibleParticleProperties, CollectibleParticleProperties, IParticlePropertiesProvider
---@field Pos Vec3d
---@field Size number
---@field SizeEvolve EvolvingNatFloat
---@field SwimOnLiquid boolean
---@field ParticleModel EnumParticleModel
---@field Quantity number
---@field VertexFlags number
---@field LifeLength number
---@field Async boolean
---@field Bounciness number
---@field DieOnRainHeightmap boolean
---@field RandomVelocityChange boolean
---@field DieInLiquid boolean
---@field DieInAir boolean
---@field SelfPropelled boolean
---@field TerrainCollision boolean
---@field GravityEffect number
---@field OpacityEvolve EvolvingNatFloat
---@field RedEvolve EvolvingNatFloat
---@field GreenEvolve EvolvingNatFloat
---@field BlueEvolve EvolvingNatFloat
---@field VelocityEvolve EvolvingNatFloat[]
---@field SecondaryParticles IParticlePropertiesProvider[]
---@field DeathParticles IParticlePropertiesProvider[]
---@field SecondarySpawnInterval number
---@field ParentVelocity Vec3f
---@field ParentVelocityWeight number
---@field boyant boolean
---@field rand Random
---@field api ICoreAPI
BlockBreakingParticleProps = {}

---@return BlockBreakingParticleProps
function BlockBreakingParticleProps.ctor() end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function BlockBreakingParticleProps.GetRgbaColor(capi) end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockBreakingParticleProps.get_Pos() end

---@return number
function BlockBreakingParticleProps.get_Size() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockBreakingParticleProps.get_SizeEvolve() end

---@return boolean
function BlockBreakingParticleProps.get_SwimOnLiquid() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function BlockBreakingParticleProps.GetVelocity(pos) end

---@return EnumParticleModel
function BlockBreakingParticleProps.get_ParticleModel() end

---@return number
function BlockBreakingParticleProps.get_Quantity() end

---@return number
function BlockBreakingParticleProps.get_VertexFlags() end

---@return number
function BlockBreakingParticleProps.get_LifeLength() end

---@param writer BinaryWriter
function BlockBreakingParticleProps.ToBytes(writer) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function BlockBreakingParticleProps.FromBytes(reader, resolver) end

---@return boolean
function BlockBreakingParticleProps.get_Async() end

---@return number
function BlockBreakingParticleProps.get_Bounciness() end

---@param value number
function BlockBreakingParticleProps.set_Bounciness(value) end

---@return boolean
function BlockBreakingParticleProps.get_DieOnRainHeightmap() end

---@param value boolean
function BlockBreakingParticleProps.set_DieOnRainHeightmap(value) end

---@return boolean
function BlockBreakingParticleProps.get_RandomVelocityChange() end

---@param value boolean
function BlockBreakingParticleProps.set_RandomVelocityChange(value) end

---@return boolean
function BlockBreakingParticleProps.get_DieInLiquid() end

---@return boolean
function BlockBreakingParticleProps.get_DieInAir() end

---@return boolean
function BlockBreakingParticleProps.get_SelfPropelled() end

---@return boolean
function BlockBreakingParticleProps.get_TerrainCollision() end

---@return number
function BlockBreakingParticleProps.get_GravityEffect() end

---@return boolean
function BlockBreakingParticleProps.UseLighting() end

---@param blockAccess IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param block Block Basic class for a placeable block
---@param facing? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockBreakingParticleProps.RandomBlockPos(blockAccess, pos, block, facing) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockBreakingParticleProps.get_OpacityEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockBreakingParticleProps.get_RedEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockBreakingParticleProps.get_GreenEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockBreakingParticleProps.get_BlueEvolve() end

---@return Block # Basic class for a placeable block
function BlockBreakingParticleProps.ColorByBlock() end

function BlockBreakingParticleProps.BeginParticle() end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockBreakingParticleProps.get_VelocityEvolve() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function BlockBreakingParticleProps.get_SecondaryParticles() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function BlockBreakingParticleProps.get_DeathParticles() end

---@return number
function BlockBreakingParticleProps.get_SecondarySpawnInterval() end

---@param particleInstance ParticleBase Represents a particle that has been spawned
function BlockBreakingParticleProps.PrepareForSecondarySpawn(particleInstance) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function BlockBreakingParticleProps.Init(api) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function BlockBreakingParticleProps.get_ParentVelocity() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function BlockBreakingParticleProps.set_ParentVelocity(value) end

---@return number
function BlockBreakingParticleProps.get_ParentVelocityWeight() end

---@param value number
function BlockBreakingParticleProps.set_ParentVelocityWeight(value) end

---@return userdata
function BlockBreakingParticleProps.GetType() end

---@return string
function BlockBreakingParticleProps.ToString() end

---@param obj userdata
---@return boolean
function BlockBreakingParticleProps.Equals(obj) end

---@return number
function BlockBreakingParticleProps.GetHashCode() end


