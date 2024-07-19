---@meta

-- Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@class Vec2i
---@field Zero Vec2i
---@field Item number
---@field X number
---@field Y number
Vec2i = {}

---@return Vec2i
function Vec2i.ctor() end
---@param x number
---@param y number
---@return Vec2i
function Vec2i.ctor(x, y) end
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec2i
function Vec2i.ctor(pos) end

---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.get_Zero() end

---@param other Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return boolean
function Vec2i.Equals(other) end

---@param obj userdata
---@return boolean
function Vec2i.Equals(obj) end

---@return number
function Vec2i.GetHashCode() end

---@param index number
---@return number
function Vec2i.get_Item(index) end

---@param index number
---@param value number
function Vec2i.set_Item(index, value) end

---@param point Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return number
function Vec2i.ManhattenDistance(point) end

---@param x number
---@param y number
---@return number
function Vec2i.ManhattenDistance(x, y) end

---@param x number
---@param y number
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.Set(x, y) end

---@param vec Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.Set(vec) end

---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.Copy() end

---@return string
function Vec2i.ToString() end

---@param dx number
---@param dy number
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.Add(dx, dy) end

-- 27 lowest bits for X Coordinate, then 27 bits for Z coordinate
---@return number
function Vec2i.ToChunkIndex() end

---@param left Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param right Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.op_Subtraction(left, right) end

---@param left Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param right Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.op_Addition(left, right) end

---@param left Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param right number
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.op_Subtraction(left, right) end

---@param left number
---@param right Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.op_Subtraction(left, right) end

---@param left Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param right number
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.op_Addition(left, right) end

---@param left Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param right number
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.op_Multiply(left, right) end

---@param left number
---@param right Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.op_Multiply(left, right) end

---@param left Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param right number
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.op_Multiply(left, right) end

---@param left number
---@param right Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.op_Multiply(left, right) end

---@param left Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param right Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return number
function Vec2i.op_Multiply(left, right) end

---@param left Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param right number
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.op_Division(left, right) end

---@param left Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param right number
---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec2i.op_Division(left, right) end

---@param left Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param right Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return boolean
function Vec2i.op_Equality(left, right) end

---@param left Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param right Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return boolean
function Vec2i.op_Inequality(left, right) end

---@return userdata
function Vec2i.GetType() end


