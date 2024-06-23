---@meta SurfaceLayerTesselator
---@class SurfaceLayerTesselator: Object
---@field ctor fun(): SurfaceLayerTesselator
---@field Tesselate fun(vars: TCTCache): nil
---@field DrawBlockFace fun(vars: TCTCache, tileSide: number, quadOffsets: FastVec3f[], texPos: TextureAtlasPosition, flags: number, colorMapDataValue: number, meshPools: MeshData[], blockHeight: Single, rotIndex: number): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
SurfaceLayerTesselator = {}
