---@meta

---@class BlockBreakTask
---@field Pos BlockPos
---@field byPlayer IPlayer
---@field DropQuantityMultiplier number
BlockBreakTask = {}

---@return BlockBreakTask
function BlockBreakTask.ctor() end

---@return userdata
function BlockBreakTask.GetType() end

---@return string
function BlockBreakTask.ToString() end

---@param obj userdata
---@return boolean
function BlockBreakTask.Equals(obj) end

---@return number
function BlockBreakTask.GetHashCode() end


