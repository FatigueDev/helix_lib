---@meta StackMatrix4
---@class StackMatrix4: Object
---@field ctor fun(max: number): StackMatrix4
---@field get_Top fun(): Double[]
---@field get_Count fun(): number
---@field PushIdentity fun(): nil
---@field Push fun(p: Double[]): nil
---@overload fun(): nil
---@field Pop fun(): Double[]
---@field Clear fun(): nil
---@field Rotate fun(rad: Double, x: Double, y: Double, z: Double): nil
---@field Translate fun(x: Double, y: Double, z: Double): nil
---@field Scale fun(x: Double, y: Double, z: Double): nil
---@field Translate fun(rotationOrigin: Double[]): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Top Double[]
---@field Count Double[]
StackMatrix4 = {}
