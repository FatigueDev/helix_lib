---@meta ITesselatorManager
---@class ITesselatorManager
---@field GetDefaultBlockMesh fun(block: Block): MeshData
---@field GetDefaultBlockMeshRef fun(block: Block): MultiTextureMeshRef
---@field GetDefaultItemMeshRef fun(block: Item): MultiTextureMeshRef
---@field GetCachedShape fun(location: AssetLocation): Shape
---@field ThreadDispose fun(): nil
ITesselatorManager = {}
