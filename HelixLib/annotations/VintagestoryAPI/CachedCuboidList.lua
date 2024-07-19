---@meta

---@class CachedCuboidList:  IEnumerable
---@field cuboids Cuboidd[]
---@field positions BlockPos[]
---@field blocks Block[]
---@field Count number
CachedCuboidList = {}

---@return CachedCuboidList
function CachedCuboidList.ctor() end

function CachedCuboidList.Clear() end

---@param cuboids Cuboidf[] Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param x number
---@param y number
---@param z number
---@param block? Block Basic class for a placeable block
function CachedCuboidList.Add(cuboids, x, y, z, block) end

---@param cuboid Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param x number
---@param y number
---@param z number
---@param block? Block Basic class for a placeable block
function CachedCuboidList.Add(cuboid, x, y, z, block) end

---@return function
function CachedCuboidList.GetEnumerator() end

---@return userdata
function CachedCuboidList.GetType() end

---@return string
function CachedCuboidList.ToString() end

---@param obj userdata
---@return boolean
function CachedCuboidList.Equals(obj) end

---@return number
function CachedCuboidList.GetHashCode() end


