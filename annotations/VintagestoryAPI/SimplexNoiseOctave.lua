---@meta

-- OpenSimplex Noise in C# Ported from https://gist.github.com/KdotJPG/b1270127455a94ac5d19 by KdotJPG and heavily refactored to improve performance.
---@class SimplexNoiseOctave
---@field MAX_VALUE_2D number
---@field MAX_VALUE_3D number
---@field MAX_VALUE_4D number
---@field MAX_VALUE_2D_WARP number
SimplexNoiseOctave = {}

---@return SimplexNoiseOctave
function SimplexNoiseOctave.ctor() end
---@param seed number
---@return SimplexNoiseOctave
function SimplexNoiseOctave.ctor(seed) end

---@param x number
---@param y number
---@return number
function SimplexNoiseOctave.Evaluate(x, y) end

---@param originalWarpX SimplexNoiseOctave OpenSimplex Noise in C# Ported from https://gist.github.com/KdotJPG/b1270127455a94ac5d19 by KdotJPG and heavily refactored to improve performance.
---@param originalWarpZ SimplexNoiseOctave OpenSimplex Noise in C# Ported from https://gist.github.com/KdotJPG/b1270127455a94ac5d19 by KdotJPG and heavily refactored to improve performance.
---@param x number
---@param y number
---@param distX number
---@param distY number
function SimplexNoiseOctave.EvaluateFairWarpVector(originalWarpX, originalWarpZ, x, y, distX, distY) end

---@param x number
---@param y number
---@param z number
---@return number
function SimplexNoiseOctave.Evaluate(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param w number
---@return number
function SimplexNoiseOctave.Evaluate(x, y, z, w) end

---@return userdata
function SimplexNoiseOctave.GetType() end

---@return string
function SimplexNoiseOctave.ToString() end

---@param obj userdata
---@return boolean
function SimplexNoiseOctave.Equals(obj) end

---@return number
function SimplexNoiseOctave.GetHashCode() end


