---@meta

-- Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@class Vec2f
---@field X number
---@field Y number
---@field Zero Vec2f
Vec2f = {}

---@return Vec2f
function Vec2f.ctor() end
---@param x number
---@param y number
---@return Vec2f
function Vec2f.ctor(x, y) end
---@param size Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec2f
function Vec2f.ctor(size) end

---@return string
function Vec2f.ToString() end

---@return number
function Vec2f.Length() end

---@param x number
---@param y number
---@return number
function Vec2f.DistanceTo(x, y) end

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return number
function Vec2f.Distance(x1, y1, x2, y2) end

---@return Vec2f # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function Vec2f.Clone() end

---@param obj userdata
---@return boolean
function Vec2f.Equals(obj) end

---@return number
function Vec2f.GetHashCode() end

---@param left Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param right Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec2f # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function Vec2f.op_Subtraction(left, right) end

---@param left Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param right Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec2f # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function Vec2f.op_Addition(left, right) end

---@param left Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec2f # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function Vec2f.op_Subtraction(left, right) end

---@param left number
---@param right Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec2f # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function Vec2f.op_Subtraction(left, right) end

---@param left Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec2f # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function Vec2f.op_Addition(left, right) end

---@param left Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec2f # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function Vec2f.op_Multiply(left, right) end

---@param left number
---@param right Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec2f # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function Vec2f.op_Multiply(left, right) end

---@param left Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec2f # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function Vec2f.op_Multiply(left, right) end

---@param left number
---@param right Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec2f # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function Vec2f.op_Multiply(left, right) end

---@param left Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param right Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec2f.op_Multiply(left, right) end

---@param left Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec2f # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function Vec2f.op_Division(left, right) end

---@param left Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param right Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec2f # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function Vec2f.op_Addition(left, right) end

---@param left Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param right Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Vec2f.op_Equality(left, right) end

---@param left Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param right Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Vec2f.op_Inequality(left, right) end

---@return userdata
function Vec2f.GetType() end


