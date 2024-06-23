---@meta LoadedTexture
---@class LoadedTexture: Object
---@field ctor fun(capi: ICoreClientAPI): LoadedTexture
---@overload fun(capi: ICoreClientAPI, textureId: number, width: number, height: number): LoadedTexture
---@field get_Disposed fun(): boolean
---@field get_IgnoreUndisposed fun(): boolean
---@field set_IgnoreUndisposed fun(value: boolean): nil
---@field Dispose fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Disposed boolean
---@field IgnoreUndisposed boolean
---@field TextureId boolean
---@field Width boolean
---@field Height boolean
LoadedTexture = {}