---@meta ITerrainMeshPool
---@class ITerrainMeshPool
---@field AddMeshData fun(data: MeshData, lodLevel: number): nil
---@overload fun(data: MeshData, tfMatrix: Single[], lodLevel: number): nil
---@overload fun(data: MeshData, colorMapData: ColorMapData, lodLevel: number): nil
ITerrainMeshPool = {}
