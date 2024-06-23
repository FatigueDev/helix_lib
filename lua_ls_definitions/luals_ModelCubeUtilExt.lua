---@meta ModelCubeUtilExt
---@class ModelCubeUtilExt: CubeMeshUtil
---@field ctor fun(): ModelCubeUtilExt
---@field AddFace fun(modeldata: MeshData, face: BlockFacing, centerXyz: Vec3f, sizeXyz: Vec3f, originUv: Vec2f, sizeUv: Vec2f, textureId: number, color: number, shade: EnumShadeMode, vertexFlags: number[], brightness: Single, uvRotation: number, climateColorMapId: number, seasonColorMapId: number, renderPass: Int16): nil
---@field AddFaceSkipTex fun(modeldata: MeshData, face: BlockFacing, centerXyz: Vec3f, sizeXyz: Vec3f, color: number, brightness: Single): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ModelCubeUtilExt = {}
