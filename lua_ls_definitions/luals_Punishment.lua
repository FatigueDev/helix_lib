---@meta Punishment
---@class Punishment: Object
---@field ctor fun(duration: TimeSpan): Punishment
---@overload fun(): Punishment
---@field Active fun(): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Punishment = {}
