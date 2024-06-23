---@meta NormalUtil
---@class NormalUtil: Object
---@field FromPackedNormal fun(normal: number, toFill: Vec4f&): nil
---@overload fun(normal: number, toFill: Single[]&): nil
---@field PackNormal fun(normal: Vec4f): number
---@overload fun(x: Single, y: Single, z: Single): number
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
NormalUtil = {}