---@meta

---@class ChunkTesselator:  IMeshPoolSupplier
---@field jsonTesselator JsonTesselator
---@field ReloadLock userdata
---@field LODPOOLS number
ChunkTesselator = {}

---@param game ClientMain
---@return ChunkTesselator
function ChunkTesselator.ctor(game) end

function ChunkTesselator.LightlevelsReceived() end

function ChunkTesselator.BlockTexturesLoaded() end

function ChunkTesselator.Start() end

function ChunkTesselator.ReloadTextures() end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param chunk ClientChunk
---@param skipChunkCenter boolean
---@return boolean
function ChunkTesselator.BeginProcessChunk(chunkX, chunkY, chunkZ, chunk, skipChunkCenter) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param tessChunk TesselatedChunk
---@param skipChunkCenter boolean
---@return number
function ChunkTesselator.NowProcessChunk(chunkX, chunkY, chunkZ, tessChunk, skipChunkCenter) end

---@param skipChunkCenter boolean
---@param baseX number
---@param baseY number
---@param baseZ number
---@return boolean
function ChunkTesselator.CalculateVisibleFaces(skipChunkCenter, baseX, baseY, baseZ) end

---@param skipChunkCenter boolean
---@param baseX number
---@param baseY number
---@param baseZ number
---@return boolean
function ChunkTesselator.CalculateVisibleFaces_Fluids(skipChunkCenter, baseX, baseY, baseZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
function ChunkTesselator.BuildBlockPolygons(chunkX, chunkY, chunkZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
function ChunkTesselator.BuildBlockPolygons_EdgeOnly(chunkX, chunkY, chunkZ) end

---@param textureid number
---@param renderPass EnumChunkRenderPass The various render passes available for rendering blocks
---@param lodLevel number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ChunkTesselator.GetMeshPoolForPass(textureid, renderPass, lodLevel) end

---@param renderPass EnumChunkRenderPass The various render passes available for rendering blocks
---@param lodLevel number
---@return MeshData[] # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ChunkTesselator.GetPoolForPass(renderPass, lodLevel) end

---@return userdata
function ChunkTesselator.GetType() end

---@return string
function ChunkTesselator.ToString() end

---@param obj userdata
---@return boolean
function ChunkTesselator.Equals(obj) end

---@return number
function ChunkTesselator.GetHashCode() end


