---@meta

-- Abstract class used for BlockVoxelParticles and ItemVoxelParticles
---@class CollectibleParticleProperties:  IParticlePropertiesProvider
---@field Async boolean
---@field Bounciness number
---@field DieOnRainHeightmap boolean
---@field RandomVelocityChange boolean
---@field DieInLiquid boolean
---@field SwimOnLiquid boolean
---@field DieInAir boolean
---@field Quantity number
---@field Pos Vec3d
---@field VertexFlags number
---@field ParticleModel EnumParticleModel
---@field SelfPropelled boolean
---@field TerrainCollision boolean
---@field Size number
---@field GravityEffect number
---@field LifeLength number
---@field OpacityEvolve EvolvingNatFloat
---@field RedEvolve EvolvingNatFloat
---@field GreenEvolve EvolvingNatFloat
---@field BlueEvolve EvolvingNatFloat
---@field SizeEvolve EvolvingNatFloat
---@field VelocityEvolve EvolvingNatFloat[]
---@field SecondaryParticles IParticlePropertiesProvider[]
---@field DeathParticles IParticlePropertiesProvider[]
---@field SecondarySpawnInterval number
---@field ParentVelocity Vec3f
---@field ParentVelocityWeight number
---@field rand Random
---@field api ICoreAPI
CollectibleParticleProperties = {}


---@return boolean
function CollectibleParticleProperties.get_Async() end

---@return number
function CollectibleParticleProperties.get_Bounciness() end

---@param value number
function CollectibleParticleProperties.set_Bounciness(value) end

---@return boolean
function CollectibleParticleProperties.get_DieOnRainHeightmap() end

---@param value boolean
function CollectibleParticleProperties.set_DieOnRainHeightmap(value) end

---@return boolean
function CollectibleParticleProperties.get_RandomVelocityChange() end

---@param value boolean
function CollectibleParticleProperties.set_RandomVelocityChange(value) end

---@return boolean
function CollectibleParticleProperties.get_DieInLiquid() end

---@return boolean
function CollectibleParticleProperties.get_SwimOnLiquid() end

---@return boolean
function CollectibleParticleProperties.get_DieInAir() end

---@return number
function CollectibleParticleProperties.get_Quantity() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function CollectibleParticleProperties.get_Pos() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function CollectibleParticleProperties.GetVelocity(pos) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function CollectibleParticleProperties.GetRgbaColor(capi) end

---@return number
function CollectibleParticleProperties.get_VertexFlags() end

---@return EnumParticleModel
function CollectibleParticleProperties.get_ParticleModel() end

---@return boolean
function CollectibleParticleProperties.get_SelfPropelled() end

---@return boolean
function CollectibleParticleProperties.get_TerrainCollision() end

---@return number
function CollectibleParticleProperties.get_Size() end

---@return number
function CollectibleParticleProperties.get_GravityEffect() end

---@return number
function CollectibleParticleProperties.get_LifeLength() end

---@return boolean
function CollectibleParticleProperties.UseLighting() end

---@param blockAccess IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param block Block Basic class for a placeable block
---@param facing? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function CollectibleParticleProperties.RandomBlockPos(blockAccess, pos, block, facing) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function CollectibleParticleProperties.get_OpacityEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function CollectibleParticleProperties.get_RedEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function CollectibleParticleProperties.get_GreenEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function CollectibleParticleProperties.get_BlueEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function CollectibleParticleProperties.get_SizeEvolve() end

---@return Block # Basic class for a placeable block
function CollectibleParticleProperties.ColorByBlock() end

---@param writer BinaryWriter
function CollectibleParticleProperties.ToBytes(writer) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function CollectibleParticleProperties.FromBytes(reader, resolver) end

function CollectibleParticleProperties.BeginParticle() end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function CollectibleParticleProperties.get_VelocityEvolve() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function CollectibleParticleProperties.get_SecondaryParticles() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function CollectibleParticleProperties.get_DeathParticles() end

---@return number
function CollectibleParticleProperties.get_SecondarySpawnInterval() end

---@param particleInstance ParticleBase Represents a particle that has been spawned
function CollectibleParticleProperties.PrepareForSecondarySpawn(particleInstance) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function CollectibleParticleProperties.Init(api) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function CollectibleParticleProperties.get_ParentVelocity() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function CollectibleParticleProperties.set_ParentVelocity(value) end

---@return number
function CollectibleParticleProperties.get_ParentVelocityWeight() end

---@param value number
function CollectibleParticleProperties.set_ParentVelocityWeight(value) end

---@return userdata
function CollectibleParticleProperties.GetType() end

---@return string
function CollectibleParticleProperties.ToString() end

---@param obj userdata
---@return boolean
function CollectibleParticleProperties.Equals(obj) end

---@return number
function CollectibleParticleProperties.GetHashCode() end


