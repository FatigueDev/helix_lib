---@meta

-- Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@class Size3d
---@field Width number
---@field Height number
---@field Length number
Size3d = {}

---@return Size3d
function Size3d.ctor() end
---@param width number
---@param height number
---@param length number
---@return Size3d
function Size3d.ctor(width, height, length) end

---@return Size3d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Size3d.Clone() end

---@param obj Size3d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Size3d.CanContain(obj) end

---@return userdata
function Size3d.GetType() end

---@return string
function Size3d.ToString() end

---@param obj userdata
---@return boolean
function Size3d.Equals(obj) end

---@return number
function Size3d.GetHashCode() end


