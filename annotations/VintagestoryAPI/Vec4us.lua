---@meta

-- Represents a vector of 4 unsigned shorts. Go bug Tyron if you need more utility methods in this class.
---@class Vec4us
---@field X number
---@field Y number
---@field Z number
---@field W number
Vec4us = {}

---@return Vec4us
function Vec4us.ctor() end
---@param x number
---@param y number
---@param z number
---@param w number
---@return Vec4us
function Vec4us.ctor(x, y, z, w) end

---@param other Vec4us Represents a vector of 4 unsigned shorts. Go bug Tyron if you need more utility methods in this class.
---@return boolean
function Vec4us.Equals(other) end

---@return number
function Vec4us.GetHashCode() end

---@return userdata
function Vec4us.GetType() end

---@return string
function Vec4us.ToString() end

---@param obj userdata
---@return boolean
function Vec4us.Equals(obj) end


