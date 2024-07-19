---@meta

---@class BlockChunkDataLayer: ChunkDataLayer, ChunkDataLayer
---@field blocksByPaletteIndex Block[]
---@field palette number
---@field paletteCount number
---@field readWriteLock FastRWLock
---@field Get Func`2
BlockChunkDataLayer = {}

---@param chunkDataPool ChunkDataPool
---@return BlockChunkDataLayer
function BlockChunkDataLayer.ctor(chunkDataPool) end

---@param getBlockAir Func`2
---@return Func`2
function BlockChunkDataLayer.SelectDelegateBlockClient(getBlockAir) end

function BlockChunkDataLayer.Dispose() end

---@param index3d number
---@return number
function BlockChunkDataLayer.GetUnsafe_PaletteCheck(index3d) end

---@param index3d number
---@return number
function BlockChunkDataLayer.GetUnsafe(index3d) end

---@param index3d number
---@param value number
function BlockChunkDataLayer.Set(index3d, value) end

---@param index3d number
---@param value number
function BlockChunkDataLayer.SetUnsafe(index3d, value) end

---@param index3d number
function BlockChunkDataLayer.SetZero(index3d) end

---@param index3d number
---@param lenX number
---@param lenZ number
---@param value number
function BlockChunkDataLayer.SetBulk(index3d, lenX, lenZ, value) end

---@param datas table
function BlockChunkDataLayer.Clear(datas) end

function BlockChunkDataLayer.PopulateWithAir() end

---@param maxValue number
function BlockChunkDataLayer.ClearPaletteOutsideMaxValue(maxValue) end

---@return userdata
function BlockChunkDataLayer.GetType() end

---@return string
function BlockChunkDataLayer.ToString() end

---@param obj userdata
---@return boolean
function BlockChunkDataLayer.Equals(obj) end

---@return number
function BlockChunkDataLayer.GetHashCode() end


