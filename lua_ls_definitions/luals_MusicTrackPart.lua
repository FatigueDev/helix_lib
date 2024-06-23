---@meta MusicTrackPart
---@class MusicTrackPart: Object
---@field ctor fun(): MusicTrackPart
---@field get_IsPlaying fun(): boolean
---@field Applicable fun(world: IWorldAccessor, props: TrackedPlayerProperties): boolean
---@field CurrentVolume fun(world: IWorldAccessor, props: TrackedPlayerProperties): Single
---@field CurrentSuitability fun(world: IWorldAccessor, props: TrackedPlayerProperties): Single
---@field ExpandFiles fun(assetManager: IAssetManager): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field IsPlaying boolean
---@field MinSuitability boolean
---@field MaxSuitability boolean
---@field MinVolumne boolean
---@field MaxVolumne boolean
---@field PosY boolean
---@field Sunlight boolean
---@field Files boolean
---@field Sound boolean
---@field StartedMs boolean
---@field Loading boolean
MusicTrackPart = {}