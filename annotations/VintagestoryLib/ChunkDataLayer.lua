---@meta

---@class ChunkDataLayer
---@field palette number
---@field paletteCount number
---@field readWriteLock FastRWLock
---@field Get Func`2
---@field INTSIZE number
---@field SLICESIZE number
---@field DATASLICES number
ChunkDataLayer = {}

---@param chunkDataPool ChunkDataPool
---@return ChunkDataLayer
function ChunkDataLayer.ctor(chunkDataPool) end

---@param index3d number
---@return number
function ChunkDataLayer.GetUnsafe_PaletteCheck(index3d) end

---@param index3d number
---@return number
function ChunkDataLayer.GetUnsafe(index3d) end

---@param index3d number
---@param value number
function ChunkDataLayer.Set(index3d, value) end

---@param index3d number
---@param value number
function ChunkDataLayer.SetUnsafe(index3d, value) end

---@param index3d number
function ChunkDataLayer.SetZero(index3d) end

---@param index3d number
---@param lenX number
---@param lenZ number
---@param value number
function ChunkDataLayer.SetBulk(index3d, lenX, lenZ, value) end

---@param datas table
function ChunkDataLayer.Clear(datas) end

function ChunkDataLayer.PopulateWithAir() end

---@param layer ChunkDataLayer
---@param arrayStatic number
---@return number
function ChunkDataLayer.Compress(layer, arrayStatic) end

---@param maxValue number
function ChunkDataLayer.ClearPaletteOutsideMaxValue(maxValue) end

---@return userdata
function ChunkDataLayer.GetType() end

---@return string
function ChunkDataLayer.ToString() end

---@param obj userdata
---@return boolean
function ChunkDataLayer.Equals(obj) end

---@return number
function ChunkDataLayer.GetHashCode() end


