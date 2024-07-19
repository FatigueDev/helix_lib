---@meta

-- OpenSimplex noise of supplied amplitude and frequency. 
---@class SimplexNoise
---@field octaves SimplexNoiseOctave[]
---@field amplitudes number
---@field frequencies number
SimplexNoise = {}

---@param amplitudes number
---@param frequencies number
---@param seed number
---@return SimplexNoise
function SimplexNoise.ctor(amplitudes, frequencies, seed) end

-- Generates the octaves and frequencies using following formulas 
-- freq[i] = baseFrequency * 2^i
-- amp[i] = persistence^i
---@param quantityOctaves number
---@param baseFrequency number
---@param persistence number
---@param seed number
---@return SimplexNoise # OpenSimplex noise of supplied amplitude and frequency. 
function SimplexNoise.FromDefaultOctaves(quantityOctaves, baseFrequency, persistence, seed) end

---@param x number
---@param y number
---@return number
function SimplexNoise.Noise(x, y) end

---@param originalWarpX SimplexNoise OpenSimplex noise of supplied amplitude and frequency. 
---@param originalWarpY SimplexNoise OpenSimplex noise of supplied amplitude and frequency. 
---@param x number
---@param y number
---@param distX number
---@param distY number
function SimplexNoise.NoiseFairWarpVector(originalWarpX, originalWarpY, x, y, distX, distY) end

---@param x number
---@param y number
---@param thresholds number
---@return number
function SimplexNoise.Noise(x, y, thresholds) end

---@param x number
---@param y number
---@param threshold number
---@return number
function SimplexNoise.NoiseWithThreshold(x, y, threshold) end

---@param x number
---@param y number
---@param z number
---@return number
function SimplexNoise.Noise(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return number
function SimplexNoise.AbsNoise(x, y, z) end

---@return SimplexNoise # OpenSimplex noise of supplied amplitude and frequency. 
function SimplexNoise.Clone() end

---@return userdata
function SimplexNoise.GetType() end

---@return string
function SimplexNoise.ToString() end

---@param obj userdata
---@return boolean
function SimplexNoise.Equals(obj) end

---@return number
function SimplexNoise.GetHashCode() end


