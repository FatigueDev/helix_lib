---@meta

-- Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@class Size3i
---@field Width number
---@field Height number
---@field Length number
Size3i = {}

---@return Size3i
function Size3i.ctor() end
---@param width number
---@param height number
---@param length number
---@return Size3i
function Size3i.ctor(width, height, length) end

---@return Size3i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Size3i.Clone() end

---@param obj Size3i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Size3i.CanContain(obj) end

---@return userdata
function Size3i.GetType() end

---@return string
function Size3i.ToString() end

---@param obj userdata
---@return boolean
function Size3i.Equals(obj) end

---@return number
function Size3i.GetHashCode() end


