---@meta ClampedSimplexNoise
---@class ClampedSimplexNoise: Object
---@field ctor fun(amplitudes: Double[], frequencies: Double[], seed: Int64): ClampedSimplexNoise
---@field Noise fun(x: Double, y: Double, offset: Double): Double
---@field Clone fun(): ClampedSimplexNoise
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ClampedSimplexNoise = {}
