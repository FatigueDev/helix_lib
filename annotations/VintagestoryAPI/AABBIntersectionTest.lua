---@meta

---@class AABBIntersectionTest
---@field blockSelectionTester IWorldIntersectionSupplier
---@field hitPosition Vec3d
---@field ray Ray
---@field pos BlockPos
---@field hitOnBlockFace BlockFacing
---@field hitOnSelectionBox number
AABBIntersectionTest = {}

---@param blockSelectionTester IWorldIntersectionSupplier
---@return AABBIntersectionTest
function AABBIntersectionTest.ctor(blockSelectionTester) end

---@param line3d Line3D
function AABBIntersectionTest.LoadRayAndPos(line3d) end

---@param ray Ray
function AABBIntersectionTest.LoadRayAndPos(ray) end

---@param from Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param to Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param filter? BlockFilter
---@return BlockSelection # Contains all the information for a players block selection event
function AABBIntersectionTest.GetSelectedBlock(from, to, filter) end

---@param maxDistance number
---@param filter? BlockFilter
---@return BlockSelection # Contains all the information for a players block selection event
function AABBIntersectionTest.GetSelectedBlock(maxDistance, filter) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param filter BlockFilter
---@return boolean
function AABBIntersectionTest.RayIntersectsBlockSelectionBox(pos, filter) end

---@param selectionBox Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function AABBIntersectionTest.RayIntersectsWithCuboid(selectionBox, posX, posY, posZ) end

---@param selectionBox Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@param hitOnBlockFace BlockFacing&
---@param hitPosition Vec3d&
---@return boolean
function AABBIntersectionTest.RayIntersectsWithCuboid(selectionBox, hitOnBlockFace, hitPosition) end

---@param b Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@param r Ray
---@return boolean
function AABBIntersectionTest.RayInteresectWithCuboidSlabMethod(b, r) end

---@return userdata
function AABBIntersectionTest.GetType() end

---@return string
function AABBIntersectionTest.ToString() end

---@param obj userdata
---@return boolean
function AABBIntersectionTest.Equals(obj) end

---@return number
function AABBIntersectionTest.GetHashCode() end


