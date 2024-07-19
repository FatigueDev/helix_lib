---@meta

-- Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@class Size2d
---@field Width number
---@field Height number
Size2d = {}

---@return Size2d
function Size2d.ctor() end
---@param width number
---@param height number
---@return Size2d
function Size2d.ctor(width, height) end

---@return Size2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Size2d.Clone() end

---@return userdata
function Size2d.GetType() end

---@return string
function Size2d.ToString() end

---@param obj userdata
---@return boolean
function Size2d.Equals(obj) end

---@return number
function Size2d.GetHashCode() end


