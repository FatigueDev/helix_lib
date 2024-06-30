---@meta

---@class CollisionTester
---@field CollisionBoxList CachedCuboidList
---@field entityBox Cuboidd
---@field tmpPos BlockPos
---@field tmpPosDelta Vec3d
CollisionTester = {}

---@return CollisionTester
function CollisionTester.ctor() end

---@param entity Entity The basic class for all entities in the game
---@param entitypos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param dtFac number
---@param outposition Vec3d&
---@param stepHeight? number
---@param YExtra? number
function CollisionTester.ApplyTerrainCollision(entity, entitypos, dtFac, outposition, stepHeight, YExtra) end

-- Tests given cuboidf collides with the terrain. By default also checks if the cuboid is merely touching the terrain, set alsoCheckTouch to disable that.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param entityBoxRel Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param alsoCheckTouch? boolean
---@return boolean
function CollisionTester.IsColliding(blockAccessor, entityBoxRel, pos, alsoCheckTouch) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param entityBoxRel Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param alsoCheckTouch? boolean
---@return Block # Basic class for a placeable block
function CollisionTester.GetCollidingBlock(blockAccessor, entityBoxRel, pos, alsoCheckTouch) end

-- Tests given cuboidf collides with the terrain. By default also checks if the cuboid is merely touching the terrain, set alsoCheckTouch to disable that.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param entityBoxRel Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param alsoCheckTouch? boolean
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function CollisionTester.GetCollidingCollisionBox(blockAccessor, entityBoxRel, pos, alsoCheckTouch) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param entityBoxRel Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param intoCubuid Cuboidd&
---@param alsoCheckTouch? boolean
---@return boolean
function CollisionTester.GetCollidingCollisionBox(blockAccessor, entityBoxRel, pos, intoCubuid, alsoCheckTouch) end

---@param aabb Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param x number
---@param y number
---@param z number
---@param aabb2 Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function CollisionTester.AabbIntersect(aabb, x, y, z, aabb2, pos) end

---@param aabb Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@param aabb2 Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@param motion Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return EnumIntersect
function CollisionTester.AabbIntersect(aabb, aabb2, motion) end

---@return userdata
function CollisionTester.GetType() end

---@return string
function CollisionTester.ToString() end

---@param obj userdata
---@return boolean
function CollisionTester.Equals(obj) end

---@return number
function CollisionTester.GetHashCode() end


