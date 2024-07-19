---@meta

---@class BlockBrokenParticleProps: BlockBreakingParticleProps, BlockBreakingParticleProps, CollectibleParticleProperties, IParticlePropertiesProvider
---@field Pos Vec3d
---@field Size number
---@field SwimOnLiquid boolean
---@field SizeEvolve EvolvingNatFloat
---@field Quantity number
---@field VertexFlags number
---@field LifeLength number
---@field ParticleModel EnumParticleModel
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
BlockBrokenParticleProps = {}

---@return BlockBrokenParticleProps
function BlockBrokenParticleProps.ctor() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockBrokenParticleProps.get_Pos() end

---@return number
function BlockBrokenParticleProps.get_Size() end

---@return boolean
function BlockBrokenParticleProps.get_SwimOnLiquid() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockBrokenParticleProps.get_SizeEvolve() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function BlockBrokenParticleProps.GetVelocity(pos) end

---@return number
function BlockBrokenParticleProps.get_Quantity() end

---@return number
function BlockBrokenParticleProps.get_VertexFlags() end

---@return number
function BlockBrokenParticleProps.get_LifeLength() end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function BlockBrokenParticleProps.GetRgbaColor(capi) end

---@return EnumParticleModel
function BlockBrokenParticleProps.get_ParticleModel() end

---@param writer BinaryWriter
function BlockBrokenParticleProps.ToBytes(writer) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function BlockBrokenParticleProps.FromBytes(reader, resolver) end

---@return boolean
function BlockBrokenParticleProps.get_Async() end

---@return number
function BlockBrokenParticleProps.get_Bounciness() end

---@param value number
function BlockBrokenParticleProps.set_Bounciness(value) end

---@return boolean
function BlockBrokenParticleProps.get_DieOnRainHeightmap() end

---@param value boolean
function BlockBrokenParticleProps.set_DieOnRainHeightmap(value) end

---@return boolean
function BlockBrokenParticleProps.get_RandomVelocityChange() end

---@param value boolean
function BlockBrokenParticleProps.set_RandomVelocityChange(value) end

---@return boolean
function BlockBrokenParticleProps.get_DieInLiquid() end

---@return boolean
function BlockBrokenParticleProps.get_DieInAir() end

---@return boolean
function BlockBrokenParticleProps.get_SelfPropelled() end

---@return boolean
function BlockBrokenParticleProps.get_TerrainCollision() end

---@return number
function BlockBrokenParticleProps.get_GravityEffect() end

---@return boolean
function BlockBrokenParticleProps.UseLighting() end

---@param blockAccess IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param block Block Basic class for a placeable block
---@param facing? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockBrokenParticleProps.RandomBlockPos(blockAccess, pos, block, facing) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockBrokenParticleProps.get_OpacityEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockBrokenParticleProps.get_RedEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockBrokenParticleProps.get_GreenEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockBrokenParticleProps.get_BlueEvolve() end

---@return Block # Basic class for a placeable block
function BlockBrokenParticleProps.ColorByBlock() end

function BlockBrokenParticleProps.BeginParticle() end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockBrokenParticleProps.get_VelocityEvolve() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function BlockBrokenParticleProps.get_SecondaryParticles() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function BlockBrokenParticleProps.get_DeathParticles() end

---@return number
function BlockBrokenParticleProps.get_SecondarySpawnInterval() end

---@param particleInstance ParticleBase Represents a particle that has been spawned
function BlockBrokenParticleProps.PrepareForSecondarySpawn(particleInstance) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function BlockBrokenParticleProps.Init(api) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function BlockBrokenParticleProps.get_ParentVelocity() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function BlockBrokenParticleProps.set_ParentVelocity(value) end

---@return number
function BlockBrokenParticleProps.get_ParentVelocityWeight() end

---@param value number
function BlockBrokenParticleProps.set_ParentVelocityWeight(value) end

---@return userdata
function BlockBrokenParticleProps.GetType() end

---@return string
function BlockBrokenParticleProps.ToString() end

---@param obj userdata
---@return boolean
function BlockBrokenParticleProps.Equals(obj) end

---@return number
function BlockBrokenParticleProps.GetHashCode() end


