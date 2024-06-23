---@meta LCGRandom
---@class LCGRandom: Object
---@field ctor fun(worldSeed: Int64): LCGRandom
---@overload fun(): LCGRandom
---@field SetWorldSeed fun(worldSeed: Int64): nil
---@field InitPositionSeed fun(xPos: number, zPos: number): nil
---@overload fun(xPos: number, yPos: number, zPos: number): nil
---@field NextInt fun(max: number): number
---@overload fun(): number
---@field NextFloat fun(): Single
---@field NextFloatMinusToPlusOne fun(): Single
---@field NextDouble fun(): Double
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
LCGRandom = {}