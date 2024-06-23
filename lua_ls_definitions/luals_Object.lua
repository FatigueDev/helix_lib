---@meta Object
---@class Object
---@field ctor fun(): Object
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@overload fun(objA: table, objB: table): boolean
---@field ReferenceEquals fun(objA: table, objB: table): boolean
---@field GetHashCode fun(): number
Object = {}
