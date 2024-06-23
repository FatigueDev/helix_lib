---@meta QuadMeshUtilExt
---@class QuadMeshUtilExt: Object
---@field ctor fun(): QuadMeshUtilExt
---@field GetQuadModelData fun(): MeshData
---@field GetCustomQuadModelData fun(x: Single, y: Single, z: Single, dw: Single, dh: Single, r: number, g: number, b: number, a: number, textureId: number): MeshData
---@field GetCustomQuadModelDataHorizontal fun(x: Single, y: Single, z: Single, dw: Single, dl: Single, r: number, g: number, b: number, a: number): MeshData
---@field GetCustomQuadModelData fun(u: Single, v: Single, uWidth: Single, vHeight: Single, x: Single, y: Single, dw: Single, dh: Single, r: number, g: number, b: number, a: number): MeshData
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
QuadMeshUtilExt = {}
