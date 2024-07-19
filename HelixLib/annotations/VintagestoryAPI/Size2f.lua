---@meta

-- Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@class Size2f
---@field Width number
---@field Height number
Size2f = {}

---@return Size2f
function Size2f.ctor() end
---@param width number
---@param height number
---@return Size2f
function Size2f.ctor(width, height) end

---@return Size2f # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Size2f.Clone() end

---@return userdata
function Size2f.GetType() end

---@return string
function Size2f.ToString() end

---@param obj userdata
---@return boolean
function Size2f.Equals(obj) end

---@return number
function Size2f.GetHashCode() end


