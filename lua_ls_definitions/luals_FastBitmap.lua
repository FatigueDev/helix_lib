---@meta FastBitmap
---@class FastBitmap: Object
---@field ctor fun(): FastBitmap
---@field get_bmp fun(): SKBitmap
---@field set_bmp fun(value: SKBitmap): nil
---@field get_Stride fun(): number
---@field GetPixel fun(x: number, y: number): number
---@field SetPixel fun(x: number, y: number, color: number): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field bmp SKBitmap
---@field Stride SKBitmap
---@field _bmp SKBitmap
FastBitmap = {}