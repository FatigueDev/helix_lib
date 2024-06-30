---@meta

---@class ParticlePhysics
---@field BlockAccess IBlockAccessor
---@field PhysicsTickTime number
---@field CollisionBoxList CachedCuboidList
---@field MotionCap number
---@field AsyncSpawnTime number
ParticlePhysics = {}

---@param blockAccess IBlockAccessor Provides read/write access to the blocks of a world
---@return ParticlePhysics
function ParticlePhysics.ctor(blockAccess) end

---@param velocitybefore Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param velocitynow Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param gravityStrength number
---@param deltatime number
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ParticlePhysics.CollisionStrength(velocitybefore, velocitynow, gravityStrength, deltatime) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param velocity Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param boyant boolean
---@param gravityStrength number
---@param deltatime number
---@param height number
function ParticlePhysics.HandleBoyancy(pos, velocity, boyant, gravityStrength, deltatime, height) end

-- Updates the velocity vector according to the amount of passed time, gravity and terrain collision.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param motion Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param size number
---@return EnumCollideFlags
function ParticlePhysics.UpdateMotion(pos, motion, size) end

---@return userdata
function ParticlePhysics.GetType() end

---@return string
function ParticlePhysics.ToString() end

---@param obj userdata
---@return boolean
function ParticlePhysics.Equals(obj) end

---@return number
function ParticlePhysics.GetHashCode() end


