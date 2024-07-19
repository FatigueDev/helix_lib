---@meta

-- You can export one of these by making a selection with worldedit, looking at the center block (which should be your controller/master) then typing /we mgencode. Please note, air blocks are not exported
---@class MultiblockStructure
---@field BlockNumbers table
---@field Offsets table
---@field OffsetsOrientation string
---@field HighlightSlotId number
MultiblockStructure = {}

---@return MultiblockStructure
function MultiblockStructure.ctor() end

---@param block Block Basic class for a placeable block
---@return number
function MultiblockStructure.GetOrCreateBlockNumber(block) end

---@param rotateYDeg number
function MultiblockStructure.InitForUse(rotateYDeg) end

---@param world IWorldAccessor Important interface to access the game world.
---@param centerPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onBlock function
function MultiblockStructure.WalkMatchingBlocks(world, centerPos, onBlock) end

-- Check if the multiblock structure is complete. Ignores air blocks
---@param world IWorldAccessor Important interface to access the game world.
---@param centerPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param onMismatch? PositionMismatchDelegate
---@return number
function MultiblockStructure.InCompleteBlockCount(world, centerPos, onMismatch) end

---@param world IWorldAccessor Important interface to access the game world.
---@param player IPlayer Represents a player
function MultiblockStructure.ClearHighlights(world, player) end

---@param world IWorldAccessor Important interface to access the game world.
---@param player IPlayer Represents a player
---@param centerPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function MultiblockStructure.HighlightIncompleteParts(world, player, centerPos) end

---@return userdata
function MultiblockStructure.GetType() end

---@return string
function MultiblockStructure.ToString() end

---@param obj userdata
---@return boolean
function MultiblockStructure.Equals(obj) end

---@return number
function MultiblockStructure.GetHashCode() end


