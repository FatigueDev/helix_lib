---@meta OggDecoder
---@class OggDecoder: Object
---@field ctor fun(): OggDecoder
---@field OggToWav fun(ogg: Stream, asset: IAsset): AudioMetaData
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
OggDecoder = {}
