---@meta Screenshot
---@class Screenshot: Object
---@field ctor fun(): Screenshot
---@field SaveScreenshot fun(platform: ClientPlatformAbstract, size: Size2i, path: string, filename: string, withAlpha: boolean, flip: boolean, metadataStr: string): string
---@field GrabScreenshot fun(size: Size2i, scaleScreenshot: boolean, flip: boolean, withAlpha: boolean): SKBitmap
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Screenshot = {}
