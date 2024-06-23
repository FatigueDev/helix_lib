---@meta AnimationFrame
---@class AnimationFrame: Object
---@field ctor fun(): AnimationFrame
---@field SetTransform fun(jointId: number, modelTransform: Single[]): nil
---@field FinalizeMatrices fun(jointsById: table<any, any>): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
AnimationFrame = {}
