---@meta

-- It's generally pretty hard to get a neatly normalized coherent noise function due to the way perlin/open simplex works (gauss curve) and how random numbers are generated. So instead of trying to find the perfect normalization factor and instead try to perform some approximate normalization this class allows a small overflow and brings it down very close to the [0, 1] range using tanh().  Returns values in a range of [0..1]
---@class NormalizedSimplexNoise
---@field scaledAmplitudes2D number
---@field scaledAmplitudes3D number
---@field inputAmplitudes number
---@field frequencies number
---@field octaves SimplexNoiseOctave[]
---@field ColumnNoise nil
NormalizedSimplexNoise = {}

---@param inputAmplitudes number
---@param frequencies number
---@param seed number
---@return NormalizedSimplexNoise
function NormalizedSimplexNoise.ctor(inputAmplitudes, frequencies, seed) end

-- Generates the octaves and frequencies using following formulas 
-- freq[i] = baseFrequency * 2^i
-- amp[i] = persistence^i
---@param quantityOctaves number
---@param baseFrequency number
---@param persistence number
---@param seed number
---@return NormalizedSimplexNoise # It's generally pretty hard to get a neatly normalized coherent noise function due to the way perlin/open simplex works (gauss curve) and how random numbers are generated. So instead of trying to find the perfect normalization factor and instead try to perform some approximate normalization this class allows a small overflow and brings it down very close to the [0, 1] range using tanh().  Returns values in a range of [0..1]
function NormalizedSimplexNoise.FromDefaultOctaves(quantityOctaves, baseFrequency, persistence, seed) end

-- 2d noise
---@param x number
---@param y number
---@return number
function NormalizedSimplexNoise.Noise(x, y) end

---@param x number
---@param y number
---@param thresholds number
---@return number
function NormalizedSimplexNoise.Noise(x, y, thresholds) end

-- 3d noise
---@param x number
---@param y number
---@param z number
---@return number
function NormalizedSimplexNoise.Noise(x, y, z) end

-- 3d Noise using custom amplitudes
---@param x number
---@param y number
---@param z number
---@param amplitudes number
---@return number
function NormalizedSimplexNoise.Noise(x, y, z, amplitudes) end

---@param x number
---@param y number
---@param z number
---@param amplitudes number
---@param thresholds number
---@return number
function NormalizedSimplexNoise.Noise(x, y, z, amplitudes, thresholds) end

---@param value number
---@return number
function NormalizedSimplexNoise.NoiseValueCurve(value) end

---@param value number
---@return number
function NormalizedSimplexNoise.NoiseValueCurveInverse(value) end

---@param relativeYFrequency number
---@param amplitudes number
---@param thresholds number
---@param noiseX number
---@param noiseZ number
---@return ColumnNoise
function NormalizedSimplexNoise.ForColumn(relativeYFrequency, amplitudes, thresholds, noiseX, noiseZ) end

---@return userdata
function NormalizedSimplexNoise.GetType() end

---@return string
function NormalizedSimplexNoise.ToString() end

---@param obj userdata
---@return boolean
function NormalizedSimplexNoise.Equals(obj) end

---@return number
function NormalizedSimplexNoise.GetHashCode() end


