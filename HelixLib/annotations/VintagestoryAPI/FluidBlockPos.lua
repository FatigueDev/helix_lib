---@meta

---@class FluidBlockPos: BlockPos, BlockPos, IVec3
---@field InternalY number
---@field Item number
---@field AsVec3i Vec3i
---@field X number
---@field Z number
---@field Y number
---@field dimension number
FluidBlockPos = {}

---@return FluidBlockPos
function FluidBlockPos.ctor() end
---@param x number
---@param y number
---@param z number
---@param dim number
---@return FluidBlockPos
function FluidBlockPos.ctor(x, y, z, dim) end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Copy() end

---@return number
function FluidBlockPos.get_InternalY() end

---@param value number
function FluidBlockPos.set_InternalY(value) end

---@param i number
---@return number
function FluidBlockPos.get_Item(i) end

---@param i number
---@param value number
function FluidBlockPos.set_Item(i, value) end

-- Move the position vertically up
---@param dy? number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Up(dy) end

-- Move the position vertically down
---@param dy? number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Down(dy) end

---@param origin Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Set(origin) end

---@param pos Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Set(pos) end

---@param pos FastVec3i Represents a vector of 3 ints, similar to a Vec3i or a BlockPos but this is a struct
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Set(pos) end

-- Sets XYZ to new vlaues
---@param x number
---@param y number
---@param z number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Set(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Set(x, y, z) end

---@param blockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Set(blockPos) end

---@param dim number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.SetDimension(dim) end

-- Sets this BlockPos to the x,y,z values given, and returns a boolean stating if the existing values were already equal to x,y,z
---@param x number
---@param y number
---@param z number
---@return boolean
function FluidBlockPos.SetAndEquals(x, y, z) end

---@param writer BinaryWriter
function FluidBlockPos.ToBytes(writer) end

-- Convert a block position to coordinates relative to the world spawn position. Note this is dimension unaware
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function FluidBlockPos.ToLocalPosition(api) end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.West() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.North() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.East() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.South() end

-- Returns the direction moved from the other blockPos, to get to this BlockPos
---@param other BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function FluidBlockPos.FacingFrom(other) end

-- Creates a copy of this blocks position with the x-position adjusted by -length
---@param length? number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.WestCopy(length) end

-- Creates a copy of this blocks position with the z-position adjusted by +length
---@param length? number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.SouthCopy(length) end

-- Creates a copy of this blocks position with the x-position adjusted by +length
---@param length? number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.EastCopy(length) end

-- Creates a copy of this blocks position with the z-position adjusted by -length
---@param length? number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.NorthCopy(length) end

-- Creates a copy of this blocks position with the y-position adjusted by -length
---@param length? number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.DownCopy(length) end

-- Creates a copy of this blocks position with the y-position adjusted by +length
---@param length? number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.UpCopy(length) end

-- Offsets the position by given xyz
---@param dx number
---@param dy number
---@param dz number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Add(dx, dy, dz) end

-- Offsets the position by given xyz
---@param dx number
---@param dy number
---@param dz number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Add(dx, dy, dz) end

-- Offsets the position by given xyz vector
---@param vector Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Add(vector) end

-- Offsets the position by given xyz vector
---@param vector FastVec3i Represents a vector of 3 ints, similar to a Vec3i or a BlockPos but this is a struct
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Add(vector) end

-- Offsets the position by given xyz vector
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Add(pos) end

-- Offsets the position into the direction of given block face
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param length? number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Add(facing, length) end

-- Offsets the position into the direction of given block face
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Offset(facing) end

-- Creates a copy of this blocks position and offsets it by given xyz
---@param dx number
---@param dy number
---@param dz number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.AddCopy(dx, dy, dz) end

-- Creates a copy of this blocks position and offsets it by given xyz
---@param dx number
---@param dy number
---@param dz number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.AddCopy(dx, dy, dz) end

-- Creates a copy of this blocks position and offsets it by given xyz
---@param xyz number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.AddCopy(xyz) end

-- Creates a copy of this blocks position and offsets it by given xyz
---@param vector Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.AddCopy(vector) end

-- Creates a copy of this blocks position and offsets it in the direction of given block face
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.AddCopy(facing) end

-- Creates a copy of this blocks position and offsets it in the direction of given block face
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param length number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.AddCopy(facing, length) end

-- Substract a position => you'll have the manhatten distance 
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Sub(pos) end

-- Substract a position => you'll have the manhatten distance
---@param x number
---@param y number
---@param z number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.Sub(x, y, z) end

-- Substract a position => you'll have the manhatten distance 
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.SubCopy(pos) end

-- Creates a copy of this blocks position and divides it by given factor
---@param factor number
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function FluidBlockPos.DivCopy(factor) end

-- Returns the Euclidean distance to between this and given position. Note if dimensions are different returns maximum value (i.e. infinite)
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function FluidBlockPos.DistanceTo(pos) end

-- Returns the Euclidean distance to between this and given position. Note this is dimension unaware
---@param x number
---@param y number
---@param z number
---@return number
function FluidBlockPos.DistanceTo(x, y, z) end

-- Returns the squared Euclidean distance to between this and given position. Note this is dimension unaware
---@param x number
---@param y number
---@param z number
---@return number
function FluidBlockPos.DistanceSqTo(x, y, z) end

-- Returns the squared Euclidean distance between the nearer edge of this blockpos (assumed 1 x 0.75 x 1 cube) and given position
-- The 0.75 offset is because the "heat source" is likely to be above the base position of this block: it's approximate
-- Note this is dimension unaware
---@param x number
---@param y number
---@param z number
---@return number
function FluidBlockPos.DistanceSqToNearerEdge(x, y, z) end

-- Returns the squared Euclidean horizontal distance to between this and given position
-- Note this is dimension unaware
---@param x number
---@param z number
---@return number
function FluidBlockPos.HorDistanceSqTo(x, z) end

-- Returns the manhatten distance to given position
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function FluidBlockPos.HorizontalManhattenDistance(pos) end

-- Returns the manhatten distance to given position
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function FluidBlockPos.ManhattenDistance(pos) end

-- Returns the manhatten distance to given position
-- Note this is dimension unaware
---@param x number
---@param y number
---@param z number
---@return number
function FluidBlockPos.ManhattenDistance(x, y, z) end

-- Returns true if the specified x,z is within a box the specified range around this position
-- Note this is dimension unaware
---@param x number
---@param z number
---@param range number
---@return boolean
function FluidBlockPos.InRangeHorizontally(x, z, range) end

-- Creates a new instance of a Vec3d initialized with this position
-- Note this is dimension unaware
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function FluidBlockPos.ToVec3d() end

-- Creates a new instance of a Vec3i initialized with this position
-- Note this is dimension unaware
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function FluidBlockPos.ToVec3i() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function FluidBlockPos.ToVec3f() end

---@return string
function FluidBlockPos.ToString() end

---@param obj userdata
---@return boolean
function FluidBlockPos.Equals(obj) end

---@return number
function FluidBlockPos.GetHashCode() end

---@param other BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function FluidBlockPos.Equals(other) end

---@param x number
---@param y number
---@param z number
---@return boolean
function FluidBlockPos.Equals(x, y, z) end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function FluidBlockPos.get_AsVec3i() end

---@return userdata
function FluidBlockPos.GetType() end


