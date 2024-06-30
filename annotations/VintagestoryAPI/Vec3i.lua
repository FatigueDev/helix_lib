---@meta

-- Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@class Vec3i:  IVec3
---@field IsZero boolean
---@field Item number
---@field AsBlockPos BlockPos
---@field Zero Vec3i
---@field XZ Vec2i
---@field AsVec3i Vec3i
---@field X number
---@field Y number
---@field Z number
---@field DirectAndIndirectNeighbours Vec3i[] List of offset of all direct and indirect neighbours of coordinate 0/0/0
Vec3i = {}

---@return Vec3i
function Vec3i.ctor() end
---@param x number
---@param y number
---@param z number
---@return Vec3i
function Vec3i.ctor(x, y, z) end
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Vec3i
function Vec3i.ctor(pos) end

---@return boolean
function Vec3i.get_IsZero() end

---@param index number
---@return number
function Vec3i.get_Item(index) end

---@param index number
---@param value number
function Vec3i.set_Item(index, value) end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function Vec3i.get_AsBlockPos() end

---@param x number
---@param y number
---@param z number
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.Add(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.AddCopy(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param intoVec Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.Add(x, y, z, intoVec) end

---@param towardsFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param length? number
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.Add(towardsFace, length) end

---@param vec Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return number
function Vec3i.ManhattenDistanceTo(vec) end

---@param vec Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return number
function Vec3i.SquareDistanceTo(vec) end

---@param x number
---@param y number
---@param z number
---@return number
function Vec3i.SquareDistanceTo(x, y, z) end

---@param vec Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return number
function Vec3i.DistanceTo(vec) end

-- Substracts val from each coordinate if the coordinate if positive, otherwise it is added. If 0, the value is unchanged. The value must be a positive number
---@param val? number
function Vec3i.Reduce(val) end

---@param val? number
function Vec3i.ReduceX(val) end

---@param val? number
function Vec3i.ReduceY(val) end

---@param val? number
function Vec3i.ReduceZ(val) end

---@param positionX number
---@param positionY number
---@param positionZ number
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.Set(positionX, positionY, positionZ) end

---@param fromPos Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.Set(fromPos) end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.Clone() end

---@param obj userdata
---@return boolean
function Vec3i.Equals(obj) end

---@param other Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return boolean
function Vec3i.Equals(other) end

---@return number
function Vec3i.GetHashCode() end

---@return string
function Vec3i.ToString() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.get_Zero() end

---@return Vec2i # Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.get_XZ() end

---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.AddCopy(facing) end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function Vec3i.ToBlockPos() end

---@param x number
---@param y number
---@param z number
---@return boolean
function Vec3i.Equals(x, y, z) end

---@param left Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param right number
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.op_Multiply(left, right) end

---@param left number
---@param right Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.op_Multiply(left, right) end

---@param left Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param right number
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.op_Division(left, right) end

---@param left Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param right Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.op_Addition(left, right) end

---@param left Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param right Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.op_Subtraction(left, right) end

---@param vec Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.op_UnaryNegation(vec) end

---@param left Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param right Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return boolean
function Vec3i.op_Equality(left, right) end

---@param left Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param right Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return boolean
function Vec3i.op_Inequality(left, right) end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Vec3i.get_AsVec3i() end

---@return userdata
function Vec3i.GetType() end


