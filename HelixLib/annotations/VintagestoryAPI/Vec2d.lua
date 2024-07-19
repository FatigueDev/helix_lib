---@meta

-- Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@class Vec2d
---@field X number
---@field Y number
Vec2d = {}

---@return Vec2d
function Vec2d.ctor() end
---@param x number
---@param y number
---@return Vec2d
function Vec2d.ctor(x, y) end

---@param x number
---@param z number
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.Set(x, z) end

---@param a Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec2d.Dot(a) end

---@param x number
---@param y number
---@return number
function Vec2d.Dot(x, y) end

---@return number
function Vec2d.Length() end

---@return number
function Vec2d.LengthSq() end

---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.Normalize() end

---@param pos Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec2d.DistanceTo(pos) end

---@param targetX number
---@param targetY number
---@return number
function Vec2d.DistanceTo(targetX, targetY) end

---@param obj userdata
---@return boolean
function Vec2d.Equals(obj) end

---@return number
function Vec2d.GetHashCode() end

---@param left Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.op_Subtraction(left, right) end

---@param left Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.op_Addition(left, right) end

---@param left Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.op_Addition(left, right) end

---@param left Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.op_Subtraction(left, right) end

---@param left number
---@param right Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.op_Subtraction(left, right) end

---@param left Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.op_Addition(left, right) end

---@param left Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.op_Multiply(left, right) end

---@param left number
---@param right Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.op_Multiply(left, right) end

---@param left Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.op_Multiply(left, right) end

---@param left number
---@param right Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.op_Multiply(left, right) end

---@param left Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec2d.op_Multiply(left, right) end

---@param left Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec2d.op_Division(left, right) end

---@param left Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Vec2d.op_Equality(left, right) end

---@param left Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right Vec2d Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Vec2d.op_Inequality(left, right) end

---@return userdata
function Vec2d.GetType() end

---@return string
function Vec2d.ToString() end


