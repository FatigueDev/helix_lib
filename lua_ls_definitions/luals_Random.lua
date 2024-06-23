---@meta Random
---@class Random: Object
---@field ctor fun(): Random
---@overload fun(Seed: number): Random
---@field get_Shared fun(): Random
---@field Next fun(): number
---@overload fun(maxValue: number): number
---@overload fun(minValue: number, maxValue: number): number
---@field NextInt64 fun(): Int64
---@overload fun(maxValue: Int64): Int64
---@overload fun(minValue: Int64, maxValue: Int64): Int64
---@field NextSingle fun(): Single
---@field NextDouble fun(): Double
---@field NextBytes fun(buffer: number[]): nil
---@overload fun(buffer: Span`1): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Shared Random
Random = {}
