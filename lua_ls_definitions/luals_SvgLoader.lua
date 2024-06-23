---@meta SvgLoader
---@class SvgLoader: Object
---@field ctor fun(_capi: ICoreClientAPI): SvgLoader
---@field DrawSvg fun(svgAsset: IAsset, intoSurface: ImageSurface, posx: number, posy: number, width: number, height: number, color: Nullable`1): nil
---@overload fun(svgAsset: IAsset, intoSurface: ImageSurface, matrix: Matrix, posx: number, posy: number, width: number, height: number, color: Nullable`1): nil
---@field LoadSvg fun(svgAsset: IAsset, textureWidth: number, textureHeight: number, width: number, height: number, color: Nullable`1): LoadedTexture
---@field rasterizeSvg fun(svgAsset: IAsset, textureWidth: number, textureHeight: number, width: number, height: number, color: Nullable`1): number[]
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
SvgLoader = {}