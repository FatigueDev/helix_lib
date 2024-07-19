---@meta

---@class ChunkData:  IEnumerable, IChunkBlocks, IChunkLight
---@field Item number
---@field Length number
---@field blocksLayer BlockChunkDataLayer
---@field fluidsLayer BlockChunkDataLayer
---@field lightLayer ChunkDataLayer
---@field NON_LIGHTSAT_MASK_INT number
ChunkData = {}


---@param chunksize number
---@param chunkDataPool ChunkDataPool
---@return ChunkData
function ChunkData.CreateNew(chunksize, chunkDataPool) end

---@param index number
---@param layer number
---@return number
function ChunkData.GetBlockId(index, layer) end

---@param index3d number
---@return number
function ChunkData.GetSolidBlock(index3d) end

---@param index3d number
---@return number
function ChunkData.get_Item(index3d) end

---@param index3d number
---@param value number
function ChunkData.set_Item(index3d, value) end

---@param index3d number
---@return number
function ChunkData.GetFluid(index3d) end

---@param index3d number
---@param value number
function ChunkData.SetFluid(index3d, value) end

---@param index3d number
---@param value number
function ChunkData.SetLight(index3d, value) end

---@param index3d number
---@return number
function ChunkData.GetBlockIdUnsafe(index3d) end

---@param index3d number
---@param layer number
---@return number
function ChunkData.GetBlockIdUnsafe(index3d, layer) end

function ChunkData.TakeBulkReadLock() end

function ChunkData.ReleaseBulkReadLock() end

---@param index3d number
---@param lenX number
---@param lenZ number
---@param value number
function ChunkData.SetBlockBulk(index3d, lenX, lenZ, value) end

---@param index3d number
---@param value number
function ChunkData.SetBlockUnsafe(index3d, value) end

---@param index3d number
function ChunkData.SetBlockAir(index3d) end

---@return number
function ChunkData.get_Length() end

function ChunkData.ClearBlocks() end

function ChunkData.ClearBlocksAndPrepare() end

---@param sunlight number
function ChunkData.ClearWithSunlight(sunlight) end

---@param sunlight number
function ChunkData.FloodWithSunlight(sunlight) end

function ChunkData.ClearAllSunlight() end

function ChunkData.ClearLight() end

---@return function
function ChunkData.GetEnumerator() end

---@param index3d number
---@return number
function ChunkData.GetSunlight(index3d) end

---@param index3d number
---@param sunLevel number
function ChunkData.SetSunlight(index3d, sunLevel) end

---@param index3d number
---@param sunLevel number
function ChunkData.SetSunlight_Buffered(index3d, sunLevel) end

---@param index3d number
---@return number
function ChunkData.GetBlocklight(index3d) end

---@param index3d number
---@param lightLevel number
function ChunkData.SetBlocklight(index3d, lightLevel) end

---@param index3d number
---@param lightLevel number
function ChunkData.SetBlocklight_Buffered(index3d, lightLevel) end

---@param id number
---@return boolean
function ChunkData.ContainsBlock(id) end

---@param reusableList table
function ChunkData.FuzzyListBlockIds(reusableList) end

---@return userdata
function ChunkData.GetType() end

---@return string
function ChunkData.ToString() end

---@param obj userdata
---@return boolean
function ChunkData.Equals(obj) end

---@return number
function ChunkData.GetHashCode() end


