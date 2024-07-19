---@meta

-- Represents a vector of 4 ints. Go bug Tyron if you need more utility methods in this class.
---@class Vec4i
---@field X number
---@field Y number
---@field Z number
---@field W number
Vec4i = {}

---@return Vec4i
function Vec4i.ctor() end
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param w number
---@return Vec4i
function Vec4i.ctor(pos, w) end
---@param x number
---@param y number
---@param z number
---@param w number
---@return Vec4i
function Vec4i.ctor(x, y, z, w) end

---@param other Vec4i Represents a vector of 4 ints. Go bug Tyron if you need more utility methods in this class.
---@return boolean
function Vec4i.Equals(other) end

---@return number
function Vec4i.GetHashCode() end

-- Returns the squared Euclidean horizontal distance to between this and given position
---@param x number
---@param z number
---@return number
function Vec4i.HorDistanceSqTo(x, z) end

---@return userdata
function Vec4i.GetType() end

---@return string
function Vec4i.ToString() end

---@param obj userdata
---@return boolean
function Vec4i.Equals(obj) end


