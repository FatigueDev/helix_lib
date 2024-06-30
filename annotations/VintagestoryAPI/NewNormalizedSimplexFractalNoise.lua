---@meta

---@class NewNormalizedSimplexFractalNoise
---@field scaledAmplitudes2D number
---@field scaledAmplitudes3D number
---@field inputAmplitudes number
---@field frequencies number
---@field octaveSeeds number
---@field ColumnNoise nil
NewNormalizedSimplexFractalNoise = {}

---@param inputAmplitudes number
---@param frequencies number
---@param seed number
---@return NewNormalizedSimplexFractalNoise
function NewNormalizedSimplexFractalNoise.ctor(inputAmplitudes, frequencies, seed) end

-- Generates the octaves and frequencies using following formulas 
-- freq[i] = baseFrequency * 2^i
-- amp[i] = persistence^i
---@param quantityOctaves number
---@param baseFrequency number
---@param persistence number
---@param seed number
---@return NewNormalizedSimplexFractalNoise
function NewNormalizedSimplexFractalNoise.FromDefaultOctaves(quantityOctaves, baseFrequency, persistence, seed) end

---@param x number
---@param y number
---@param z number
---@param amplitudes number
---@param thresholds number
---@return number
function NewNormalizedSimplexFractalNoise.Noise(x, y, z, amplitudes, thresholds) end

---@param value number
---@return number
function NewNormalizedSimplexFractalNoise.NoiseValueCurve(value) end

---@param value number
---@return number
function NewNormalizedSimplexFractalNoise.NoiseValueCurveInverse(value) end

---@param relativeYFrequency number
---@param amplitudes number
---@param thresholds number
---@param noiseX number
---@param noiseZ number
---@return ColumnNoise
function NewNormalizedSimplexFractalNoise.ForColumn(relativeYFrequency, amplitudes, thresholds, noiseX, noiseZ) end

---@return userdata
function NewNormalizedSimplexFractalNoise.GetType() end

---@return string
function NewNormalizedSimplexFractalNoise.ToString() end

---@param obj userdata
---@return boolean
function NewNormalizedSimplexFractalNoise.Equals(obj) end

---@return number
function NewNormalizedSimplexFractalNoise.GetHashCode() end


