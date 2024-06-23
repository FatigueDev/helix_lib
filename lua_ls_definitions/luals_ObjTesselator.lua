---@meta ObjTesselator
---@class ObjTesselator: Object
---@field ctor fun(): ObjTesselator
---@field Load fun(asset: IAsset, mesh: MeshData&, pos: TextureAtlasPosition, meta: TesselationMetaData, renderPass: Int16): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ObjTesselator = {}
