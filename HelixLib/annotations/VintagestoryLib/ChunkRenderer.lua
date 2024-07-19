---@meta

---@class ChunkRenderer
---@field poolsByRenderPass MeshDataPoolManager[][]
---@field QuantityRenderingChunks number
ChunkRenderer = {}

---@param textureIds number
---@param game ClientMain
---@return ChunkRenderer
function ChunkRenderer.ctor(textureIds, game) end

---@param dt number
function ChunkRenderer.OnSeperateThreadTick(dt) end

---@param dt number
function ChunkRenderer.PrepareFrame(dt) end

---@param dt number
function ChunkRenderer.OnBeginFrame(dt) end

---@param dt number
function ChunkRenderer.RenderShadow(dt) end

---@param dt number
function ChunkRenderer.RenderOpaque(dt) end

function ChunkRenderer.Dispose() end

---@param tesschunk TesselatedChunk
---@param hostChunk ClientChunk
function ChunkRenderer.AddTesselatedChunk(tesschunk, hostChunk) end

---@param locations ModelDataPoolLocation[] Contains all the data for the given model pool.
function ChunkRenderer.RemoveDataPoolLocations(locations) end

---@param usedVideoMemory number
---@param renderedTris number
---@param allocatedTris number
function ChunkRenderer.GetStats(usedVideoMemory, renderedTris, allocatedTris) end

---@return number
function ChunkRenderer.CalcFragmentation() end

---@return number
function ChunkRenderer.QuantityModelDataPools() end

---@return userdata
function ChunkRenderer.GetType() end

---@return string
function ChunkRenderer.ToString() end

---@param obj userdata
---@return boolean
function ChunkRenderer.Equals(obj) end

---@return number
function ChunkRenderer.GetHashCode() end


