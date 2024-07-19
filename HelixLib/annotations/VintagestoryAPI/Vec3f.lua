---@meta

-- Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@class Vec3f:  IVec3
---@field Zero Vec3f Create a new instance with x/y/z set to 0
---@field Half Vec3f
---@field One Vec3f
---@field R number Synonum for X
---@field G number Synonum for Y
---@field B number Synonum for Z
---@field IsZero boolean
---@field Item number
---@field AsVec3i Vec3i
---@field X number The X-Component of the vector
---@field Y number The Y-Component of the vector
---@field Z number The Z-Component of the vector
Vec3f = {}

---@return Vec3f
function Vec3f.ctor() end
---@param x number
---@param y number
---@param z number
---@return Vec3f
function Vec3f.ctor(x, y, z) end
---@param vec Vec4f
---@return Vec3f
function Vec3f.ctor(vec) end
---@param values number
---@return Vec3f
function Vec3f.ctor(values) end
---@param vec3i Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3f
function Vec3f.ctor(vec3i) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.get_Zero() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.get_Half() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.get_One() end

---@return number
function Vec3f.get_R() end

---@param value number
function Vec3f.set_R(value) end

---@return number
function Vec3f.get_G() end

---@param value number
function Vec3f.set_G(value) end

---@return number
function Vec3f.get_B() end

---@param value number
function Vec3f.set_B(value) end

---@return boolean
function Vec3f.get_IsZero() end

---@param index number
---@return number
function Vec3f.get_Item(index) end

---@param index number
---@param value number
function Vec3f.set_Item(index, value) end

-- Returns the length of this vector
---@return number
function Vec3f.Length() end

function Vec3f.Negate() end

-- Returns the dot product with given vector
---@param a Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec3f.Dot(a) end

---@param a FastVec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec3f.Dot(a) end

-- Returns the dot product with given vector
---@param a Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec3f.Dot(a) end

-- Returns the dot product with given vector
---@param pos number
---@return number
function Vec3f.Dot(pos) end

-- Returns the dot product with given vector
---@param pos number
---@return number
function Vec3f.Dot(pos) end

---@param vec Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Cross(vec) end

---@return number
function Vec3f.ToDoubleArray() end

-- Creates the cross product from a and b and sets own values accordingly
---@param a Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param b Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Cross(a, b) end

-- Creates the cross product from a and b and sets own values accordingly
---@param a Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param b Vec4f
function Vec3f.Cross(a, b) end

-- Adds given x/y/z coordinates to the vector
---@param x number
---@param y number
---@param z number
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Add(x, y, z) end

-- Adds given x/y/z coordinates to the vector
---@param vec Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Add(vec) end

-- Substracts given x/y/z coordinates to the vector
---@param vec Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Sub(vec) end

---@param vec Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Sub(vec) end

-- Multiplies each coordinate with given multiplier
---@param multiplier number
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Mul(multiplier) end

-- Creates a copy of the vetor
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Clone() end

-- Turns the vector into a unit vector with length 1, but only if length is non-zero
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Normalize() end

-- Calculates the square distance the two endpoints
---@param x number
---@param y number
---@param z number
---@return number
function Vec3f.DistanceSq(x, y, z) end

-- Calculates the distance the two endpoints
---@param vec Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec3f.DistanceTo(vec) end

---@param vec Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec3f.DistanceTo(vec) end

-- Adds given coordinates to a new vectors and returns it. The original calling vector remains unchanged
---@param x number
---@param y number
---@param z number
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.AddCopy(x, y, z) end

-- Adds both vectors into a new vector. Both source vectors remain unchanged.
---@param vec Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.AddCopy(vec) end

-- Substracts val from each coordinate if the coordinate if positive, otherwise it is added. If 0, the value is unchanged. The value must be a positive number
---@param val number
function Vec3f.ReduceBy(val) end

-- Creates a new vectors that is the normalized version of this vector. 
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.NormalizedCopy() end

-- Creates a new double precision vector with the same coordinates
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3f.ToVec3d() end

---@param left Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param right Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.op_Subtraction(left, right) end

---@param left Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param right Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.op_Addition(left, right) end

---@param left Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.op_Subtraction(left, right) end

---@param left number
---@param right Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.op_Subtraction(left, right) end

---@param left Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.op_Addition(left, right) end

---@param left Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.op_Multiply(left, right) end

---@param left number
---@param right Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.op_Multiply(left, right) end

---@param left Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param right Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec3f.op_Multiply(left, right) end

---@param left Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.op_Division(left, right) end

---@param left Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param right Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Vec3f.op_Equality(left, right) end

---@param left Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param right Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Vec3f.op_Inequality(left, right) end

-- Sets the vector to this coordinates
---@param x number
---@param y number
---@param z number
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Set(x, y, z) end

-- Sets the vector to the coordinates of given vector
---@param vec Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Set(vec) end

---@param vec number
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Set(vec) end

-- Sets the vector to the coordinates of given vector
---@param vec Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.Set(vec) end

-- Simple string represenation of the x/y/z components
---@return string
function Vec3f.ToString() end

---@param writer BinaryWriter
function Vec3f.ToBytes(writer) end

---@param reader BinaryReader
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3f.CreateFromBytes(reader) end

---@param w number
---@return Vec4f
function Vec3f.ToVec4f(w) end

---@param other Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param epsilon number
---@return boolean
function Vec3f.Equals(other, epsilon) end

---@param other Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Vec3f.Equals(other) end

---@param obj userdata
---@return boolean
function Vec3f.Equals(obj) end

---@return number
function Vec3f.GetHashCode() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3f.get_AsVec3i() end

---@return userdata
function Vec3f.GetType() end


