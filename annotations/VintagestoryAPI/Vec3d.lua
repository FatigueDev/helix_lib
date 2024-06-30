---@meta

-- Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@class Vec3d:  IVec3
---@field AsBlockPos BlockPos
---@field XInt number
---@field YInt number
---@field ZInt number
---@field Zero Vec3d Create a new instance with x/y/z set to 0
---@field Item number
---@field AsVec3i Vec3i
---@field X number
---@field Y number
---@field Z number
Vec3d = {}

---@return Vec3d
function Vec3d.ctor() end
---@param x number
---@param y number
---@param z number
---@return Vec3d
function Vec3d.ctor(x, y, z) end
---@param vec Vec4d
---@return Vec3d
function Vec3d.ctor(vec) end
---@param vec EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return Vec3d
function Vec3d.ctor(vec) end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function Vec3d.get_AsBlockPos() end

---@return number
function Vec3d.get_XInt() end

---@return number
function Vec3d.get_YInt() end

---@return number
function Vec3d.get_ZInt() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.get_Zero() end

---@param index number
---@return number
function Vec3d.get_Item(index) end

---@param index number
---@param value number
function Vec3d.set_Item(index, value) end

---@param a Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec3d.Dot(a) end

---@param vec Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Cross(vec) end

---@param a Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param b Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Cross(a, b) end

---@param a Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param b Vec4d
function Vec3d.Cross(a, b) end

function Vec3d.Negate() end

---@param a Vec4d
---@param b Vec4d
function Vec3d.Cross(a, b) end

---@param a Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Add(a) end

---@param a BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Add(a) end

---@param a Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Add(a) end

---@param a Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.AddCopy(a) end

---@param a Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.AddCopy(a) end

---@param x number
---@param y number
---@param z number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.AddCopy(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.AddCopy(x, y, z) end

---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.AddCopy(facing) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.AddCopy(pos) end

---@param val number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Mul(val) end

---@param x number
---@param y number
---@param z number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Mul(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Add(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Sub(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.SubCopy(x, y, z) end

---@param sub Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.SubCopy(sub) end

---@return number
function Vec3d.ToFloatArray() end

---@return number
function Vec3d.ToDoubleArray() end

---@return number
function Vec3d.Length() end

---@return number
function Vec3d.LengthSq() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Normalize() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Clone() end

---@param vec Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Sub(vec) end

---@param value number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Add(value) end

---@param a Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param b Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Add(a, b) end

---@param a Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param b Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Sub(a, b) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Sub(pos) end

-- Note: adjusts the calling Vec3d, does not make a copy
---@param f number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Scale(f) end

-- Note: adjusts the calling Vec3d, does not make a copy
---@param b Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Offset(b) end

-- Note: adjusts the calling Vec3d, does not make a copy
---@param x number
---@param y number
---@param z number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Offset(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.OffsetCopy(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.OffsetCopy(x, y, z) end

---@param pos Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Set(pos) end

---@param pos Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Set(pos) end

---@param x number
---@param y number
---@param z number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Set(x, y, z) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Set(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Set(pos) end

---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Set(pos) end

---@param x number
---@param y number
---@param z number
---@return number
function Vec3d.SquareDistanceTo(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return number
function Vec3d.SquareDistanceTo(x, y, z) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec3d.SquareDistanceTo(pos) end

---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return number
function Vec3d.SquareDistanceTo(pos) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec3d.DistanceTo(pos) end

---@param x number
---@param y number
---@param z number
---@return number
function Vec3d.DistanceTo(x, y, z) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec3d.HorizontalSquareDistanceTo(pos) end

---@param x number
---@param z number
---@return number
function Vec3d.HorizontalSquareDistanceTo(x, z) end

---@param left Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.op_Subtraction(left, right) end

---@param left Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.op_Addition(left, right) end

---@param left Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.op_Addition(left, right) end

---@param left Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.op_Subtraction(left, right) end

---@param left number
---@param right Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.op_Subtraction(left, right) end

---@param left Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.op_Addition(left, right) end

---@param left Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.op_Multiply(left, right) end

---@param left number
---@param right Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.op_Multiply(left, right) end

---@param left Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.op_Multiply(left, right) end

---@param left number
---@param right Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.op_Multiply(left, right) end

---@param left Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function Vec3d.op_Multiply(left, right) end

---@param left Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.op_Division(left, right) end

---@param left Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Vec3d.op_Equality(left, right) end

---@param left Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param right Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Vec3d.op_Inequality(left, right) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Vec3d.ToVec3f() end

---@return string
function Vec3d.ToString() end

---@param writer BinaryWriter
function Vec3d.ToBytes(writer) end

---@param reader BinaryReader
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.CreateFromBytes(reader) end

---@param offset number
---@param Pitch number
---@param Yaw number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.AheadCopy(offset, Pitch, Yaw) end

---@param offset number
---@param Pitch number
---@param Yaw number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.AheadCopy(offset, Pitch, Yaw) end

---@param offset number
---@param Pitch number
---@param Yaw number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Ahead(offset, Pitch, Yaw) end

---@param offset number
---@param Pitch number
---@param Yaw number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Vec3d.Ahead(offset, Pitch, Yaw) end

---@param other Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param epsilon number
---@return boolean
function Vec3d.Equals(other, epsilon) end

---@param other Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Vec3d.Equals(other) end

---@param obj userdata
---@return boolean
function Vec3d.Equals(obj) end

---@return number
function Vec3d.GetHashCode() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3d.get_AsVec3i() end

---@return userdata
function Vec3d.GetType() end


