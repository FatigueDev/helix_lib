---@meta

-- Special version of CollisionTester for BehaviorControlledPhysics, which does not re-do the WalkBlocks() call and re-generate the CollisionBoxList more than once in the same entity tick
---@class CachingCollisionTester: CollisionTester, CollisionTester
---@field CollisionBoxList CachedCuboidList
---@field entityBox Cuboidd
---@field tmpPos BlockPos
---@field tmpPosDelta Vec3d
CachingCollisionTester = {}

---@return CachingCollisionTester
function CachingCollisionTester.ctor() end

function CachingCollisionTester.NewTick() end

---@param entity Entity The basic class for all entities in the game
---@param entitypos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param dtFac number
---@param outposition Vec3d&
---@param stepHeight? number
---@param YExtra? number
function CachingCollisionTester.ApplyTerrainCollision(entity, entitypos, dtFac, outposition, stepHeight, YExtra) end

-- Tests given cuboidf collides with the terrain. By default also checks if the cuboid is merely touching the terrain, set alsoCheckTouch to disable that.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param entityBoxRel Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param alsoCheckTouch? boolean
---@return boolean
function CachingCollisionTester.IsColliding(blockAccessor, entityBoxRel, pos, alsoCheckTouch) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param entityBoxRel Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param alsoCheckTouch? boolean
---@return Block # Basic class for a placeable block
function CachingCollisionTester.GetCollidingBlock(blockAccessor, entityBoxRel, pos, alsoCheckTouch) end

-- Tests given cuboidf collides with the terrain. By default also checks if the cuboid is merely touching the terrain, set alsoCheckTouch to disable that.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param entityBoxRel Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param alsoCheckTouch? boolean
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function CachingCollisionTester.GetCollidingCollisionBox(blockAccessor, entityBoxRel, pos, alsoCheckTouch) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param entityBoxRel Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param intoCubuid Cuboidd&
---@param alsoCheckTouch? boolean
---@return boolean
function CachingCollisionTester.GetCollidingCollisionBox(blockAccessor, entityBoxRel, pos, intoCubuid, alsoCheckTouch) end

---@return userdata
function CachingCollisionTester.GetType() end

---@return string
function CachingCollisionTester.ToString() end

---@param obj userdata
---@return boolean
function CachingCollisionTester.Equals(obj) end

---@return number
function CachingCollisionTester.GetHashCode() end


