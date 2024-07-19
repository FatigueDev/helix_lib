---@meta

-- Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@class Size2i
---@field Width number
---@field Height number
Size2i = {}

---@return Size2i
function Size2i.ctor() end
---@param width number
---@param height number
---@return Size2i
function Size2i.ctor(width, height) end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Size2i.Clone() end

---@return userdata
function Size2i.GetType() end

---@return string
function Size2i.ToString() end

---@param obj userdata
---@return boolean
function Size2i.Equals(obj) end

---@return number
function Size2i.GetHashCode() end


