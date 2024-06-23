---@meta OggPage
---@class OggPage: Page
---@field ctor fun(): OggPage
---@field bos fun(): number
---@field eos fun(): number
---@field granulepos fun(): Int64
---@field serialno fun(): number
---@overload fun(): number
---@overload fun(): number
---@overload fun(): Int64
---@overload fun(): number
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
OggPage = {}