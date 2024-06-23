---@meta BitmapInternal
---@class BitmapInternal: Object
---@field ctor fun(): BitmapInternal
---@field Create fun(width: number, height: number): BitmapInternal
---@field CreateFromBitmap fun(platform: ClientPlatformAbstract, bitmapref: BitmapRef): BitmapInternal
---@field SetPixel fun(x: number, y: number, color: number): nil
---@field GetPixel fun(x: number, y: number): number
---@field ToBitmap fun(platform: ClientPlatformAbstract): BitmapRef
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
BitmapInternal = {}