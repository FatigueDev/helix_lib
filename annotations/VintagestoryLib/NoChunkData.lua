---@meta

---@class NoChunkData:  IChunkBlocks
---@field Item number
---@field Length number
NoChunkData = {}

---@return NoChunkData
function NoChunkData.ctor() end

---@param index3d number
---@return number
function NoChunkData.get_Item(index3d) end

---@param index3d number
---@param value number
function NoChunkData.set_Item(index3d, value) end

---@return number
function NoChunkData.get_Length() end

---@param value number
function NoChunkData.set_Length(value) end

---@param chunksize number
---@return NoChunkData
function NoChunkData.CreateNew(chunksize) end

function NoChunkData.ClearBlocks() end

function NoChunkData.ClearBlocksAndPrepare() end

---@param index3d number
---@param lenX number
---@param lenZ number
---@param value number
function NoChunkData.SetBlockBulk(index3d, lenX, lenZ, value) end

---@param index3d number
---@param blockId number
function NoChunkData.SetBlockUnsafe(index3d, blockId) end

---@param index3d number
function NoChunkData.SetBlockAir(index3d) end

---@param index number
---@param layer number
---@return number
function NoChunkData.GetBlockId(index, layer) end

---@param index3d number
---@return number
function NoChunkData.GetBlockIdUnsafe(index3d) end

---@param index3d number
---@param value number
function NoChunkData.SetFluid(index3d, value) end

---@param index3d number
---@return number
function NoChunkData.GetFluid(index3d) end

function NoChunkData.TakeBulkReadLock() end

function NoChunkData.ReleaseBulkReadLock() end

---@param id number
---@return boolean
function NoChunkData.ContainsBlock(id) end

---@param reusableList table
function NoChunkData.FuzzyListBlockIds(reusableList) end

---@return userdata
function NoChunkData.GetType() end

---@return string
function NoChunkData.ToString() end

---@param obj userdata
---@return boolean
function NoChunkData.Equals(obj) end

---@return number
function NoChunkData.GetHashCode() end


