---@meta

---@class Cuboidi
---@field Coordinates number
---@field MinX number
---@field MinY number
---@field MinZ number
---@field MaxX number
---@field MaxY number
---@field MaxZ number
---@field SizeX number
---@field SizeY number
---@field SizeZ number
---@field SizeXYZ number
---@field SizeXZ number
---@field Start Vec3i
---@field End Vec3i
---@field Center Vec3i
---@field CenterX number
---@field CenterY number
---@field CenterZ number
---@field Volume number
---@field X1 number
---@field Y1 number
---@field Z1 number
---@field X2 number
---@field Y2 number
---@field Z2 number
Cuboidi = {}

---@return Cuboidi
function Cuboidi.ctor() end
---@param coordinates number
---@return Cuboidi
function Cuboidi.ctor(coordinates) end
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return Cuboidi
function Cuboidi.ctor(x1, y1, z1, x2, y2, z2) end
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param endPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Cuboidi
function Cuboidi.ctor(startPos, endPos) end
---@param startPos Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param endPos Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Cuboidi
function Cuboidi.ctor(startPos, endPos) end
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param size number
---@return Cuboidi
function Cuboidi.ctor(startPos, size) end

---@return number
function Cuboidi.get_Coordinates() end

---@return number
function Cuboidi.get_MinX() end

---@return number
function Cuboidi.get_MinY() end

---@return number
function Cuboidi.get_MinZ() end

---@return number
function Cuboidi.get_MaxX() end

---@return number
function Cuboidi.get_MaxY() end

---@return number
function Cuboidi.get_MaxZ() end

---@return number
function Cuboidi.get_SizeX() end

---@return number
function Cuboidi.get_SizeY() end

---@return number
function Cuboidi.get_SizeZ() end

---@return number
function Cuboidi.get_SizeXYZ() end

---@return number
function Cuboidi.get_SizeXZ() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Cuboidi.get_Start() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Cuboidi.get_End() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Cuboidi.get_Center() end

---@return number
function Cuboidi.get_CenterX() end

---@return number
function Cuboidi.get_CenterY() end

---@return number
function Cuboidi.get_CenterZ() end

---@return number
function Cuboidi.get_Volume() end

-- Sets the minimum and maximum values of the cuboid
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return Cuboidi
function Cuboidi.Set(x1, y1, z1, x2, y2, z2) end

-- Sets the minimum and maximum values of the cuboid
---@param min IVec3
---@param max IVec3
---@return Cuboidi
function Cuboidi.Set(min, max) end

-- Adds the given offset to the cuboid
---@param posX number
---@param posY number
---@param posZ number
---@return Cuboidi
function Cuboidi.Translate(posX, posY, posZ) end

-- Adds the given offset to the cuboid
---@param vec IVec3
---@return Cuboidi
function Cuboidi.Translate(vec) end

-- Substractes the given offset to the cuboid
---@param posX number
---@param posY number
---@param posZ number
---@return Cuboidi
function Cuboidi.Sub(posX, posY, posZ) end

-- Divides the given value to the cuboid
---@param value number
---@return Cuboidi
function Cuboidi.Div(value) end

-- Substractes the given offset to the cuboid
---@param vec IVec3
---@return Cuboidi
function Cuboidi.Sub(vec) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Cuboidi.Contains(pos) end

---@param pos IVec3
---@return boolean
function Cuboidi.Contains(pos) end

-- Returns if the given point is inside the cuboid
---@param x number
---@param y number
---@param z number
---@return boolean
function Cuboidi.Contains(x, y, z) end

-- Returns if the given point is inside the cuboid
---@param x number
---@param z number
---@return boolean
function Cuboidi.Contains(x, z) end

-- Returns if the given point is inside the cuboid
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function Cuboidi.Contains(pos) end

-- Returns if the given point is inside the cuboid
---@param x number
---@param y number
---@param z number
---@return boolean
function Cuboidi.ContainsOrTouches(x, y, z) end

---@param cuboid Cuboidi
---@return boolean
function Cuboidi.ContainsOrTouches(cuboid) end

-- Returns if the given point is inside the cuboid
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function Cuboidi.ContainsOrTouches(pos) end

-- Returns if the given point is inside the cuboid
---@param vec IVec3
---@return boolean
function Cuboidi.ContainsOrTouches(vec) end

-- Returns if the given entityPos is inside the cuboid
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return boolean
function Cuboidi.ContainsOrTouches(pos) end

-- Grows the cuboid so that it includes the given block
---@param x number
---@param y number
---@param z number
---@return Cuboidi
function Cuboidi.GrowToInclude(x, y, z) end

-- Grows the cuboid so that it includes the given block
---@param vec IVec3
---@return Cuboidi
function Cuboidi.GrowToInclude(vec) end

---@param dx number
---@param dy number
---@param dz number
---@return Cuboidi
function Cuboidi.GrowBy(dx, dy, dz) end

-- Returns the shortest distance between given point and any point inside the cuboid
---@param x number
---@param y number
---@param z number
---@return number
function Cuboidi.ShortestDistanceFrom(x, y, z) end

-- Returns the shortest distance between given point and any point inside the cuboid
---@param vec IVec3
---@return number
function Cuboidi.ShortestDistanceFrom(vec) end

-- Returns the shortest distance to any point between this and given cuboid
---@param cuboid Cuboidi
---@return number
function Cuboidi.ShortestDistanceFrom(cuboid) end

---@param from Cuboidi
---@param x number
---@param direction EnumPushDirection&
---@return number
function Cuboidi.pushOutX(from, x, direction) end

---@param from Cuboidi
---@param y number
---@param direction EnumPushDirection&
---@return number
function Cuboidi.pushOutY(from, y, direction) end

---@param from Cuboidi
---@param z number
---@param direction EnumPushDirection&
---@return number
function Cuboidi.pushOutZ(from, z, direction) end

-- Performs a 3-dimensional rotation on the cuboid and returns a new axis-aligned cuboid resulting from this rotation. Not sure it it makes any sense to use this for other rotations than 90 degree intervals.
---@param degX number
---@param degY number
---@param degZ number
---@param origin Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Cuboidi
function Cuboidi.RotatedCopy(degX, degY, degZ, origin) end

-- Performs a 3-dimensional rotation on the cuboid and returns a new axis-aligned cuboid resulting from this rotation. Not sure it it makes any sense to use this for other rotations than 90 degree intervals.
---@param vec IVec3
---@param origin Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Cuboidi
function Cuboidi.RotatedCopy(vec, origin) end

-- Returns a new cuboid offseted by given position
---@param x number
---@param y number
---@param z number
---@return Cuboidi
function Cuboidi.OffsetCopy(x, y, z) end

-- Returns a new cuboid offseted by given position
---@param vec IVec3
---@return Cuboidi
function Cuboidi.OffsetCopy(vec) end

-- If the given cuboid intersects with this cubiod
---@param with Cuboidi
---@return boolean
function Cuboidi.Intersects(with) end

-- Ignores the y-axis
---@param with HorRectanglei
---@return boolean
function Cuboidi.Intersects(with) end

-- If the given cuboid intersects  with or is adjacent to this cubiod
---@param with Cuboidi
---@return boolean
function Cuboidi.IntersectsOrTouches(with) end

-- Creates a copy of the cuboid
---@return Cuboidi
function Cuboidi.Clone() end

---@param other Cuboidi
---@return boolean
function Cuboidi.Equals(other) end

---@param obj userdata
---@return boolean
function Cuboidi.Equals(obj) end

---@return string
function Cuboidi.ToString() end

---@return number
function Cuboidi.GetHashCode() end

---@return userdata
function Cuboidi.GetType() end


