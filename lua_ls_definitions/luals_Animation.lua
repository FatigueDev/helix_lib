---@meta Animation
---@class Animation: Object
---@field ctor fun(): Animation
---@field GenerateAllFrames fun(rootElements: ShapeElement[], jointsById: table<any, any>, recursive: boolean): nil
---@field Clone fun(): Animation
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Animation = {}
