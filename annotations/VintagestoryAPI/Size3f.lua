---@meta

-- Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@class Size3f
---@field Width number
---@field Height number
---@field Length number
Size3f = {}

---@return Size3f
function Size3f.ctor() end
---@param width number
---@param height number
---@param length number
---@return Size3f
function Size3f.ctor(width, height, length) end

---@return Size3f # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Size3f.Clone() end

---@param obj Size3f Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Size3f.CanContain(obj) end

---@return userdata
function Size3f.GetType() end

---@return string
function Size3f.ToString() end

---@param obj userdata
---@return boolean
function Size3f.Equals(obj) end

---@return number
function Size3f.GetHashCode() end


