---@meta

-- Represents a vector of 4 shorts. Go bug Tyron if you need more utility methods in this class.
---@class Vec4s
---@field X number
---@field Y number
---@field Z number
---@field W number
Vec4s = {}

---@return Vec4s
function Vec4s.ctor() end
---@param x number
---@param y number
---@param z number
---@param w number
---@return Vec4s
function Vec4s.ctor(x, y, z, w) end

---@param other Vec4s Represents a vector of 4 shorts. Go bug Tyron if you need more utility methods in this class.
---@return boolean
function Vec4s.Equals(other) end

---@return number
function Vec4s.GetHashCode() end

---@return userdata
function Vec4s.GetType() end

---@return string
function Vec4s.ToString() end

---@param obj userdata
---@return boolean
function Vec4s.Equals(obj) end


