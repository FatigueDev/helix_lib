---@meta RunningAnimation
---@class RunningAnimation: Object
---@field ctor fun(): RunningAnimation
---@field get_AnimProgress fun(): Single
---@field LoadWeights fun(rootElements: ShapeElement[]): nil
---@field Progress fun(dt: Single, walkspeed: Single): nil
---@field Stop fun(): nil
---@field EaseOut fun(dt: Single): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field AnimProgress Single
---@field meta Single
---@field CurrentFrame Single
---@field Animation Single
---@field Active Single
---@field Running Single
---@field Iterations Single
---@field ShouldRewind Single
---@field ShouldPlayTillEnd Single
---@field EasingFactor Single
---@field BlendedWeight Single
---@field ElementWeights Single
RunningAnimation = {}
