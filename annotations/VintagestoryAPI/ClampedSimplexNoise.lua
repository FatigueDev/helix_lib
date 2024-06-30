---@meta

-- Perlin noise of supplied amplitude and frequency. The resulting value is clamped to 0...1
---@class ClampedSimplexNoise
---@field octaves SimplexNoiseOctave[]
---@field amplitudes number
---@field frequencies number
ClampedSimplexNoise = {}

---@param amplitudes number
---@param frequencies number
---@param seed number
---@return ClampedSimplexNoise
function ClampedSimplexNoise.ctor(amplitudes, frequencies, seed) end

---@param x number
---@param y number
---@param offset? number
---@return number
function ClampedSimplexNoise.Noise(x, y, offset) end

---@return ClampedSimplexNoise # Perlin noise of supplied amplitude and frequency. The resulting value is clamped to 0...1
function ClampedSimplexNoise.Clone() end

---@return userdata
function ClampedSimplexNoise.GetType() end

---@return string
function ClampedSimplexNoise.ToString() end

---@param obj userdata
---@return boolean
function ClampedSimplexNoise.Equals(obj) end

---@return number
function ClampedSimplexNoise.GetHashCode() end


