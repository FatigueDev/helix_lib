---@meta

---@class PathfinderTask
---@field startBlockPos BlockPos
---@field targetBlockPos BlockPos
---@field maxFallHeight number
---@field stepHeight number
---@field collisionBox Cuboidf
---@field searchDepth number
---@field mhdistanceTolerance number
---@field waypoints table
---@field Finished boolean
PathfinderTask = {}

---@param startBlockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param targetBlockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxFallHeight number
---@param stepHeight number
---@param collisionBox Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param searchDepth number
---@param mhdistanceTolerance? number
---@return PathfinderTask
function PathfinderTask.ctor(startBlockPos, targetBlockPos, maxFallHeight, stepHeight, collisionBox, searchDepth, mhdistanceTolerance) end

---@return userdata
function PathfinderTask.GetType() end

---@return string
function PathfinderTask.ToString() end

---@param obj userdata
---@return boolean
function PathfinderTask.Equals(obj) end

---@return number
function PathfinderTask.GetHashCode() end


