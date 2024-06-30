---@meta

---@class NewSimplexNoiseLayer
---@field OldToNewFrequency number
---@field MaxYSlope_ImprovedXZ number
NewSimplexNoiseLayer = {}


---@param seed number
---@param x number
---@param y number
---@param z number
---@return number
function NewSimplexNoiseLayer.Evaluate_ImprovedXZ(seed, x, y, z) end

---@param seed number
---@param x number
---@param y number
---@param z number
---@return number
function NewSimplexNoiseLayer.Evaluate_FallbackOrientation(seed, x, y, z) end

---@return userdata
function NewSimplexNoiseLayer.GetType() end

---@return string
function NewSimplexNoiseLayer.ToString() end

---@param obj userdata
---@return boolean
function NewSimplexNoiseLayer.Equals(obj) end

---@return number
function NewSimplexNoiseLayer.GetHashCode() end


