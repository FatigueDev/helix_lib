---@meta

---@class StackCubeParticles: CollectibleParticleProperties, CollectibleParticleProperties, IParticlePropertiesProvider
---@field DieInLiquid boolean
---@field SwimOnLiquid boolean
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
---@field collisionPos Vec3d The position of the collision to create these particles.
---@field stack ItemStack The contents that the particles are built off of.
---@field quantity number The amount of particles to be released.
---@field radius number The radius to release the particles.
---@field scale number The scale of the particles.
---@field velocity Vec3f
---@field rand Random
---@field api ICoreAPI
StackCubeParticles = {}

---@return StackCubeParticles
function StackCubeParticles.ctor() end
---@param collisionPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param stack ItemStack
---@param radius number
---@param quantity number
---@param scale number
---@param velocity? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return StackCubeParticles
function StackCubeParticles.ctor(collisionPos, stack, radius, quantity, scale, velocity) end

---@return boolean
function StackCubeParticles.get_DieInLiquid() end

---@return boolean
function StackCubeParticles.get_SwimOnLiquid() end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return number
function StackCubeParticles.GetRgbaColor(capi) end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function StackCubeParticles.get_Pos() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function StackCubeParticles.GetVelocity(pos) end

---@return number
function StackCubeParticles.get_Size() end

---@return EnumParticleModel
function StackCubeParticles.get_ParticleModel() end

---@return number
function StackCubeParticles.get_Quantity() end

---@return number
function StackCubeParticles.get_LifeLength() end

---@return number
function StackCubeParticles.get_VertexFlags() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function StackCubeParticles.get_SecondaryParticles() end

---@param writer BinaryWriter
function StackCubeParticles.ToBytes(writer) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function StackCubeParticles.FromBytes(reader, resolver) end

---@return boolean
function StackCubeParticles.get_Async() end

---@return number
function StackCubeParticles.get_Bounciness() end

---@param value number
function StackCubeParticles.set_Bounciness(value) end

---@return boolean
function StackCubeParticles.get_DieOnRainHeightmap() end

---@param value boolean
function StackCubeParticles.set_DieOnRainHeightmap(value) end

---@return boolean
function StackCubeParticles.get_RandomVelocityChange() end

---@param value boolean
function StackCubeParticles.set_RandomVelocityChange(value) end

---@return boolean
function StackCubeParticles.get_DieInAir() end

---@return boolean
function StackCubeParticles.get_SelfPropelled() end

---@return boolean
function StackCubeParticles.get_TerrainCollision() end

---@return number
function StackCubeParticles.get_GravityEffect() end

---@return boolean
function StackCubeParticles.UseLighting() end

---@param blockAccess IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param block Block Basic class for a placeable block
---@param facing? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function StackCubeParticles.RandomBlockPos(blockAccess, pos, block, facing) end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function StackCubeParticles.get_OpacityEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function StackCubeParticles.get_RedEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function StackCubeParticles.get_GreenEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function StackCubeParticles.get_BlueEvolve() end

---@return EvolvingNatFloat # A number generator whose return value changes over time, parametrized by a transform function and some constants
function StackCubeParticles.get_SizeEvolve() end

---@return Block # Basic class for a placeable block
function StackCubeParticles.ColorByBlock() end

function StackCubeParticles.BeginParticle() end

---@return EvolvingNatFloat[] # A number generator whose return value changes over time, parametrized by a transform function and some constants
function StackCubeParticles.get_VelocityEvolve() end

---@return IParticlePropertiesProvider[] # Represents a provider of particle properties to be used when generating a particle
function StackCubeParticles.get_DeathParticles() end

---@return number
function StackCubeParticles.get_SecondarySpawnInterval() end

---@param particleInstance ParticleBase Represents a particle that has been spawned
function StackCubeParticles.PrepareForSecondarySpawn(particleInstance) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function StackCubeParticles.Init(api) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function StackCubeParticles.get_ParentVelocity() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function StackCubeParticles.set_ParentVelocity(value) end

---@return number
function StackCubeParticles.get_ParentVelocityWeight() end

---@param value number
function StackCubeParticles.set_ParentVelocityWeight(value) end

---@return userdata
function StackCubeParticles.GetType() end

---@return string
function StackCubeParticles.ToString() end

---@param obj userdata
---@return boolean
function StackCubeParticles.Equals(obj) end

---@return number
function StackCubeParticles.GetHashCode() end


