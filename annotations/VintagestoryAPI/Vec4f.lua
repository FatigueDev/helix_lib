---@meta

---@class Vec4f
---@field R number Synonum for X
---@field G number Synonum for Y
---@field B number Synonum for Z
---@field A number Synonum for W
---@field XYZ Vec3f
---@field Item number
---@field X number
---@field Y number
---@field Z number
---@field W number
Vec4f = {}

---@return Vec4f
function Vec4f.ctor() end
---@param x number
---@param y number
---@param z number
---@param w number
---@return Vec4f
function Vec4f.ctor(x, y, z, w) end

---@return number
function Vec4f.get_R() end

---@param value number
function Vec4f.set_R(value) end

---@return number
function Vec4f.get_G() end

---@param value number
function Vec4f.set_G(value) end

---@return number
function Vec4f.get_B() end

---@param value number
function Vec4f.set_B(value) end

---@return number
function Vec4f.get_A() end

---@param value number
function Vec4f.set_A(value) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec4f.get_XYZ() end

---@param index number
---@return number
function Vec4f.get_Item(index) end

---@param index number
---@param value number
function Vec4f.set_Item(index, value) end

---@param vec number
---@return Vec4f
function Vec4f.Set(vec) end

---@param vec Vec4f
---@return Vec4f
function Vec4f.Set(vec) end

---@param vec Vec4f
---@return Vec4f
function Vec4f.Mul(vec) end

---@param x number
---@param y number
---@param z number
---@param w number
---@return Vec4f
function Vec4f.Set(x, y, z, w) end

---@return Vec4f
function Vec4f.Clone() end

-- Turns the vector into a unit vector with length 1, but only if length is non-zero
---@return Vec4f
function Vec4f.NormalizeXYZ() end

-- Returns the length of this vector
---@return number
function Vec4f.LengthXYZ() end

---@param left Vec4f
---@param right Vec4f
---@return Vec4f
function Vec4f.op_Subtraction(left, right) end

---@param left Vec4f
---@param right Vec4f
---@return Vec4f
function Vec4f.op_Addition(left, right) end

---@param left Vec4f
---@param right Vec4i Represents a vector of 4 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec4f
function Vec4f.op_Addition(left, right) end

---@param left Vec4f
---@param right number
---@return Vec4f
function Vec4f.op_Subtraction(left, right) end

---@param left number
---@param right Vec4f
---@return Vec4f
function Vec4f.op_Subtraction(left, right) end

---@param left Vec4f
---@param right number
---@return Vec4f
function Vec4f.op_Addition(left, right) end

---@param left Vec4f
---@param right number
---@return Vec4f
function Vec4f.op_Multiply(left, right) end

---@param left number
---@param right Vec4f
---@return Vec4f
function Vec4f.op_Multiply(left, right) end

---@param left Vec4f
---@param right Vec4f
---@return number
function Vec4f.op_Multiply(left, right) end

---@param left Vec4f
---@param right number
---@return Vec4f
function Vec4f.op_Division(left, right) end

---@return userdata
function Vec4f.GetType() end

---@return string
function Vec4f.ToString() end

---@param obj userdata
---@return boolean
function Vec4f.Equals(obj) end

---@return number
function Vec4f.GetHashCode() end


