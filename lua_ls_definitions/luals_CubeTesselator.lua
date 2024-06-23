---@meta CubeTesselator
---@class CubeTesselator: Object
---@field ctor fun(blockHeight: Single): CubeTesselator
---@field Tesselate fun(vars: TCTCache): nil
---@field DrawBlockFace fun(vars: TCTCache, tileSide: number, quadOffsets: FastVec3f[], texPos: TextureAtlasPosition, flags: number, colorMapDataValue: number, meshPools: MeshData[], blockHeight: Single): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
CubeTesselator = {}
