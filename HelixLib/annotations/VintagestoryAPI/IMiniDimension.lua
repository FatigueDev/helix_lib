---@meta

-- Provides read/write access to the blocks of a movable mini-dimension. 
---@class IMiniDimension:  IBlockAccessor
---@field subDimensionId number
---@field CurrentPos EntityPos
---@field Dirty boolean
---@field TrackSelection boolean
---@field selectionTrackingOriginalPos BlockPos
IMiniDimension = {}


---@return number
function IMiniDimension.get_subDimensionId() end

---@param value number
function IMiniDimension.set_subDimensionId(value) end

---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function IMiniDimension.get_CurrentPos() end

---@param value EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
function IMiniDimension.set_CurrentPos(value) end

---@return boolean
function IMiniDimension.get_Dirty() end

---@param value boolean
function IMiniDimension.set_Dirty(value) end

---@return boolean
function IMiniDimension.get_TrackSelection() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IMiniDimension.get_selectionTrackingOriginalPos() end

---@param value BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IMiniDimension.set_selectionTrackingOriginalPos(value) end

-- Sends dirty chunks to nearby clients
---@param players IPlayer[] Represents a player
function IMiniDimension.CollectChunksForSending(players) end

-- Clears this mini-dimension (and empties any chunks but does not unload them) ready for re-use
function IMiniDimension.ClearChunks() end

-- Unload any chunks which are still empty after the dimension has been re-used
function IMiniDimension.UnloadUnusedServerChunks() end

-- Used when rendering
---@param dt number
---@return FastVec3d # Represents a vector of 3 doubles
function IMiniDimension.GetRenderOffset(dt) end

---@param currentModelViewMatrix number
---@param playerPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function IMiniDimension.GetRenderTransformMatrix(currentModelViewMatrix, playerPos) end

---@param chunkIndex3d number
---@param chunk IWorldChunk
---@param world IWorldAccessor Important interface to access the game world.
function IMiniDimension.ReceiveClientChunk(chunkIndex3d, chunk, world) end

---@param dimensionId number
function IMiniDimension.SetSubDimensionId(dimensionId) end

---@param dimensionId number
function IMiniDimension.SetSelectionTrackingSubId_Server(dimensionId) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IMiniDimension.AdjustPosForSubDimension(pos) end


