---@meta

-- Provides read/write access to the blocks of a world. 
---@class IBlockAccessorRevertable:  IBlockAccessor, IBulkBlockAccessor
---@field Relight boolean Whether or not to do relighting on the chunk
---@field CurrentHistoryState number 0 = working on latest version, 1 = undo used one time, 2 = undo used 2 times, etc.
---@field QuantityHistoryStates number Maximum Amount of undos you can perform. More states means more memory usage.
---@field AvailableHistoryStates number Amount of currently stored history states
---@field OnStoreHistoryState function
---@field OnRestoreHistoryState function
IBlockAccessorRevertable = {}


---@param value function
function IBlockAccessorRevertable.add_OnStoreHistoryState(value) end

---@param value function
function IBlockAccessorRevertable.remove_OnStoreHistoryState(value) end

---@param value function
function IBlockAccessorRevertable.add_OnRestoreHistoryState(value) end

---@param value function
function IBlockAccessorRevertable.remove_OnRestoreHistoryState(value) end

---@return boolean
function IBlockAccessorRevertable.get_Relight() end

---@param value boolean
function IBlockAccessorRevertable.set_Relight(value) end

---@return number
function IBlockAccessorRevertable.get_CurrentHistoryState() end

-- 1 = perform 1 undo 
-- -1 = perform 1 redo
---@param quantity? number
function IBlockAccessorRevertable.ChangeHistoryState(quantity) end

---@return number
function IBlockAccessorRevertable.get_QuantityHistoryStates() end

---@param value number
function IBlockAccessorRevertable.set_QuantityHistoryStates(value) end

---@return number
function IBlockAccessorRevertable.get_AvailableHistoryStates() end

-- Manually set the history state of a block for the to-be-comitted history state
---@param posX number
---@param posY number
---@param posZ number
---@param oldBlockId number
---@param newBlockId number
function IBlockAccessorRevertable.SetHistoryStateBlock(posX, posY, posZ, oldBlockId, newBlockId) end

function IBlockAccessorRevertable.CommitBlockEntityData() end

function IBlockAccessorRevertable.BeginMultiEdit() end

function IBlockAccessorRevertable.EndMultiEdit() end

---@param state HistoryState
function IBlockAccessorRevertable.StoreHistoryState(state) end

---@param entity Entity The basic class for all entities in the game
function IBlockAccessorRevertable.StoreEntitySpawnToHistory(entity) end

---@param start BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param end BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param offset Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function IBlockAccessorRevertable.StoreEntityMoveToHistory(start, end, offset) end


