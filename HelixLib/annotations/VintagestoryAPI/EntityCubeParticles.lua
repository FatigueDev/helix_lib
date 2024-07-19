---@meta

---@class EntityCubeParticles: CollectibleParticleProperties, CollectibleParticleProperties, IParticlePropertiesProvider
---@field DieInLiquid boolean
---@field Pos Vec3d
---@field Size number
---@field ParticleModel EnumParticleModel
---@field Quantity number
---@field LifeLength number
---@field VertexFlags number
---@field SecondaryParticles IParticlePropertiesProvider[]
---@field Async boolean
---@field Bounciness number
---@field DieOnRainHeightmap boolean
---@field RandomVelocityChange boolean
---@field SwimOnLiquid boolean
---@field DieInAir boolean
---@field SelfPropelled boolean
---@field TerrainCollision boolean
---@field GravityEffect number
---@field OpacityEvolve EvolvingNatFloat
---@field RedEvolve EvolvingNatFloat
---@field GreenEvolve EvolvingNatFloat
---@field BlueEvolve EvolvingNatFloat
---@field SizeEvolve EvolvingNatFloat
---@field VelocityEvolve EvolvingNatFloat[]
---@field DeathParticles IParticlePropertiesProvider[]
---@field SecondarySpawnInterval number
---@field ParentVelocity Vec3f
---@field ParentVelocityWeight number
---@field particlePos Vec3d
---@field quantity number
---@field radius number
---@field minScale number
---@field maxScale number
---@field rand Random
---@field api ICoreAPI
EntityCubeParticles = {}

---@return EntityCubeParticles
function EntityCubeParticles.ctor() end
---@param world IWorldAccessor Important interface to access the game world.
---@param entityId number
---@param particlePos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param radius number
---@param quantity number
---@param minScale number
---@param maxScale number
---@return EntityCubeParticles
function EntityCubeParticles.ctor(world, entityId, particlePos, radius, quantity, minScale, maxScale) end

---@return boolean
function EntityCubeParticles.get_DieInLiquid() end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function EntityCubeParticles.Init(api) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function EntityCubeParticles.GetRgbaColor(capi) end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityCubeParticles.get_Pos() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function EntityCubeParticles.GetVelocity(pos) end

---@return number
function EntityCubeParticles.get_Size() end

---@return EnumParticleModel
function EntityCubeParticles.get_ParticleModel() end

---@return number
function EntityCubeParticles.get_Quantity() end

---@return number
function EntityCubeParticles.get_LifeLength() end

---@return number
function EntityCubeParticles.get_VertexFlags() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function EntityCubeParticles.get_SecondaryParticles() end

---@param writer BinaryWriter
function EntityCubeParticles.ToBytes(writer) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function EntityCubeParticles.FromBytes(reader, resolver) end

---@return boolean
function EntityCubeParticles.get_Async() end

---@return number
function EntityCubeParticles.get_Bounciness() end

---@param value number
function EntityCubeParticles.set_Bounciness(value) end

---@return boolean
function EntityCubeParticles.get_DieOnRainHeightmap() end

---@param value boolean
function EntityCubeParticles.set_DieOnRainHeightmap(value) end

---@return boolean
function EntityCubeParticles.get_RandomVelocityChange() end

---@param value boolean
function EntityCubeParticles.set_RandomVelocityChange(value) end

---@return boolean
function EntityCubeParticles.get_SwimOnLiquid() end

---@return boolean
function EntityCubeParticles.get_DieInAir() end

---@return boolean
function EntityCubeParticles.get_SelfPropelled() end

---@return boolean
function EntityCubeParticles.get_TerrainCollision() end

---@return number
function EntityCubeParticles.get_GravityEffect() end

---@return boolean
function EntityCubeParticles.UseLighting() end

---@param blockAccess IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param block Block Basic class for a placeable block
---@param facing? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityCubeParticles.RandomBlockPos(blockAccess, pos, block, facing) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function EntityCubeParticles.get_OpacityEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function EntityCubeParticles.get_RedEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function EntityCubeParticles.get_GreenEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function EntityCubeParticles.get_BlueEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function EntityCubeParticles.get_SizeEvolve() end

---@return Block # Basic class for a placeable block
function EntityCubeParticles.ColorByBlock() end

function EntityCubeParticles.BeginParticle() end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function EntityCubeParticles.get_VelocityEvolve() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function EntityCubeParticles.get_DeathParticles() end

---@return number
function EntityCubeParticles.get_SecondarySpawnInterval() end

---@param particleInstance ParticleBase Represents a particle that has been spawned
function EntityCubeParticles.PrepareForSecondarySpawn(particleInstance) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function EntityCubeParticles.get_ParentVelocity() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function EntityCubeParticles.set_ParentVelocity(value) end

---@return number
function EntityCubeParticles.get_ParentVelocityWeight() end

---@param value number
function EntityCubeParticles.set_ParentVelocityWeight(value) end

---@return userdata
function EntityCubeParticles.GetType() end

---@return string
function EntityCubeParticles.ToString() end

---@param obj userdata
---@return boolean
function EntityCubeParticles.Equals(obj) end

---@return number
function EntityCubeParticles.GetHashCode() end


