---@meta

---@class TerrainMesherHelper:  IMeshPoolSupplier, ITerrainMeshPool
TerrainMesherHelper = {}

---@return TerrainMesherHelper
function TerrainMesherHelper.ctor() end

---@param sourceMesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param transformationMatrix number
---@param lodLevel? number
function TerrainMesherHelper.AddMeshData(sourceMesh, transformationMatrix, lodLevel) end

---@param sourceMesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param lodLevel? number
function TerrainMesherHelper.AddMeshData(sourceMesh, lodLevel) end

---@param sourceMesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param colorMapData ColorMapData
---@param lodlevel? number
function TerrainMesherHelper.AddMeshData(sourceMesh, colorMapData, lodlevel) end

---@param textureId number
---@param forRenderPass EnumChunkRenderPass The various render passes available for rendering blocks
---@param lodLevel number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function TerrainMesherHelper.GetMeshPoolForPass(textureId, forRenderPass, lodLevel) end

---@return userdata
function TerrainMesherHelper.GetType() end

---@return string
function TerrainMesherHelper.ToString() end

---@param obj userdata
---@return boolean
function TerrainMesherHelper.Equals(obj) end

---@return number
function TerrainMesherHelper.GetHashCode() end


