---@meta

---@class BlockHighlight
---@field modelRef MeshRef
---@field origin BlockPos
---@field attachmentPoints BlockPos[]
---@field mode EnumHighlightBlocksMode
---@field shape EnumHighlightShape
---@field Scale number
BlockHighlight = {}

---@return BlockHighlight
function BlockHighlight.ctor() end

---@param game ClientMain
---@param positions BlockPos[] A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param colors number
function BlockHighlight.TesselateModel(game, positions, colors) end

---@return userdata
function BlockHighlight.GetType() end

---@return string
function BlockHighlight.ToString() end

---@param obj userdata
---@return boolean
function BlockHighlight.Equals(obj) end

---@return number
function BlockHighlight.GetHashCode() end


