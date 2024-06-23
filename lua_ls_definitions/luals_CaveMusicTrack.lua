---@meta CaveMusicTrack
---@class CaveMusicTrack: Object
---@field ctor fun(): CaveMusicTrack
---@field get_Name fun(): string
---@field get_IsActive fun(): boolean
---@field get_PositionString fun(): string
---@field get_StartPriority fun(): Single
---@field Initialize fun(assetManager: IAssetManager, capi: ICoreClientAPI, musicEngine: IMusicEngine): nil
---@field ShouldPlay fun(props: TrackedPlayerProperties, conds: ClimateCondition, pos: BlockPos): boolean
---@field BeginPlay fun(props: TrackedPlayerProperties): nil
---@field ContinuePlay fun(dt: Single, props: TrackedPlayerProperties): boolean
---@field FadeOut fun(seconds: Single, onFadedOut: Action): nil
---@field UpdateVolume fun(): nil
---@field FastForward fun(seconds: Single): nil
---@field BeginSort fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Name string
---@field IsActive string
---@field PositionString string
---@field StartPriority string
---@field ShouldPlayCaveMusic string
CaveMusicTrack = {}
