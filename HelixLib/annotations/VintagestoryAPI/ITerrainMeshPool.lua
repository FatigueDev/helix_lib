---@meta

---@class ITerrainMeshPool
ITerrainMeshPool = {}


-- Requires xyz, uv, rgba, indices, flags and xyzFaces to be set
---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param lodLevel? number
function ITerrainMeshPool.AddMeshData(data, lodLevel) end

-- Add mesh data, but first transformed with tfMatrix
---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param tfMatrix number
---@param lodLevel? number
function ITerrainMeshPool.AddMeshData(data, tfMatrix, lodLevel) end

-- Requires xyz, uv, rgba, indices, flags and xyzFaces to be set
---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param colorMapData ColorMapData
---@param lodLevel? number
function ITerrainMeshPool.AddMeshData(data, colorMapData, lodLevel) end


