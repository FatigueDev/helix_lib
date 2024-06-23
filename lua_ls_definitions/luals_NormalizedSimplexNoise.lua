---@meta NormalizedSimplexNoise
---@class NormalizedSimplexNoise: Object
---@field ctor fun(inputAmplitudes: Double[], frequencies: Double[], seed: Int64): NormalizedSimplexNoise
---@field FromDefaultOctaves fun(quantityOctaves: number, baseFrequency: Double, persistence: Double, seed: Int64): NormalizedSimplexNoise
---@field Noise fun(x: Double, y: Double): Double
---@overload fun(x: Double, y: Double, thresholds: Double[]): Double
---@overload fun(x: Double, y: Double, z: Double): Double
---@overload fun(x: Double, y: Double, z: Double, amplitudes: Double[]): Double
---@overload fun(x: Double, y: Double, z: Double, amplitudes: Double[], thresholds: Double[]): Double
---@field NoiseValueCurve fun(value: Double): Double
---@field NoiseValueCurveInverse fun(value: Double): Double
---@field ForColumn fun(relativeYFrequency: Double, amplitudes: Double[], thresholds: Double[], noiseX: Double, noiseZ: Double): ColumnNoise
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
NormalizedSimplexNoise = {}
