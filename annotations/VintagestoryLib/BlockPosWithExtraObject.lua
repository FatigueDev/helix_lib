---@meta

---@class BlockPosWithExtraObject
---@field pos BlockPos
---@field extra userdata
BlockPosWithExtraObject = {}

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param extra userdata
---@return BlockPosWithExtraObject
function BlockPosWithExtraObject.ctor(pos, extra) end

---@return userdata
function BlockPosWithExtraObject.GetType() end

---@return string
function BlockPosWithExtraObject.ToString() end

---@param obj userdata
---@return boolean
function BlockPosWithExtraObject.Equals(obj) end

---@return number
function BlockPosWithExtraObject.GetHashCode() end


