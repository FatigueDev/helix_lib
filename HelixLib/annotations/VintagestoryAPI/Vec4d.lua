---@meta

---@class Vec4d
---@field Item number
---@field XYZ Vec3d
---@field X number
---@field Y number
---@field Z number
---@field W number
Vec4d = {}

---@return Vec4d
function Vec4d.ctor() end
---@param x number
---@param y number
---@param z number
---@param w number
---@return Vec4d
function Vec4d.ctor(x, y, z, w) end

---@param index number
---@return number
function Vec4d.get_Item(index) end

---@param index number
---@param value number
function Vec4d.set_Item(index, value) end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec4d.get_XYZ() end

---@param x number
---@param y number
---@param z number
---@param w number
function Vec4d.Set(x, y, z, w) end

---@param x number
---@param y number
---@param z number
---@return number
function Vec4d.SquareDistanceTo(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return number
function Vec4d.SquareDistanceTo(x, y, z) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec4d.SquareDistanceTo(pos) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec4d.HorizontalSquareDistanceTo(pos) end

---@param x number
---@param z number
---@return number
function Vec4d.HorizontalSquareDistanceTo(x, z) end

---@return userdata
function Vec4d.GetType() end

---@return string
function Vec4d.ToString() end

---@param obj userdata
---@return boolean
function Vec4d.Equals(obj) end

---@return number
function Vec4d.GetHashCode() end


