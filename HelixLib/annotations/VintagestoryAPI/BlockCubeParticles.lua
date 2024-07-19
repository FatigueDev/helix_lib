---@meta

---@class BlockCubeParticles: CollectibleParticleProperties, CollectibleParticleProperties, IParticlePropertiesProvider
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
---@field particlePos Vec3d The position of the particle
---@field quantity number The amount of particles.
---@field radius number The radius of the particle emission.
---@field scale number The scale of the particles.
---@field velocity Vec3f
---@field rand Random
---@field api ICoreAPI
BlockCubeParticles = {}

---@return BlockCubeParticles
function BlockCubeParticles.ctor() end
---@param world IWorldAccessor Important interface to access the game world.
---@param blockpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param particlePos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param radius number
---@param quantity number
---@param scale number
---@param velocity? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return BlockCubeParticles
function BlockCubeParticles.ctor(world, blockpos, particlePos, radius, quantity, scale, velocity) end

---@return boolean
function BlockCubeParticles.get_DieInLiquid() end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function BlockCubeParticles.Init(api) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function BlockCubeParticles.GetRgbaColor(capi) end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockCubeParticles.get_Pos() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function BlockCubeParticles.GetVelocity(pos) end

---@return number
function BlockCubeParticles.get_Size() end

---@return EnumParticleModel
function BlockCubeParticles.get_ParticleModel() end

---@return number
function BlockCubeParticles.get_Quantity() end

---@return number
function BlockCubeParticles.get_LifeLength() end

---@return number
function BlockCubeParticles.get_VertexFlags() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function BlockCubeParticles.get_SecondaryParticles() end

---@param writer BinaryWriter
function BlockCubeParticles.ToBytes(writer) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function BlockCubeParticles.FromBytes(reader, resolver) end

---@return boolean
function BlockCubeParticles.get_Async() end

---@return number
function BlockCubeParticles.get_Bounciness() end

---@param value number
function BlockCubeParticles.set_Bounciness(value) end

---@return boolean
function BlockCubeParticles.get_DieOnRainHeightmap() end

---@param value boolean
function BlockCubeParticles.set_DieOnRainHeightmap(value) end

---@return boolean
function BlockCubeParticles.get_RandomVelocityChange() end

---@param value boolean
function BlockCubeParticles.set_RandomVelocityChange(value) end

---@return boolean
function BlockCubeParticles.get_SwimOnLiquid() end

---@return boolean
function BlockCubeParticles.get_DieInAir() end

---@return boolean
function BlockCubeParticles.get_SelfPropelled() end

---@return boolean
function BlockCubeParticles.get_TerrainCollision() end

---@return number
function BlockCubeParticles.get_GravityEffect() end

---@return boolean
function BlockCubeParticles.UseLighting() end

---@param blockAccess IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param block Block Basic class for a placeable block
---@param facing? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockCubeParticles.RandomBlockPos(blockAccess, pos, block, facing) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockCubeParticles.get_OpacityEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockCubeParticles.get_RedEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockCubeParticles.get_GreenEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockCubeParticles.get_BlueEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockCubeParticles.get_SizeEvolve() end

---@return Block # Basic class for a placeable block
function BlockCubeParticles.ColorByBlock() end

function BlockCubeParticles.BeginParticle() end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function BlockCubeParticles.get_VelocityEvolve() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function BlockCubeParticles.get_DeathParticles() end

---@return number
function BlockCubeParticles.get_SecondarySpawnInterval() end

---@param particleInstance ParticleBase Represents a particle that has been spawned
function BlockCubeParticles.PrepareForSecondarySpawn(particleInstance) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function BlockCubeParticles.get_ParentVelocity() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function BlockCubeParticles.set_ParentVelocity(value) end

---@return number
function BlockCubeParticles.get_ParentVelocityWeight() end

---@param value number
function BlockCubeParticles.set_ParentVelocityWeight(value) end

---@return userdata
function BlockCubeParticles.GetType() end

---@return string
function BlockCubeParticles.ToString() end

---@param obj userdata
---@return boolean
function BlockCubeParticles.Equals(obj) end

---@return number
function BlockCubeParticles.GetHashCode() end


