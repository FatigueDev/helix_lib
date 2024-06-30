---@meta

-- Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@class Cuboidd
---@field Width number MaxX-MinX
---@field Height number MaxY-MinY
---@field Length number MaxZ-MinZ
---@field MinX number
---@field MinY number
---@field MinZ number
---@field MaxX number
---@field MaxY number
---@field MaxZ number
---@field Start Vec3d
---@field End Vec3d
---@field X1 number
---@field Y1 number
---@field Z1 number
---@field X2 number
---@field Y2 number
---@field Z2 number
Cuboidd = {}

---@return Cuboidd
function Cuboidd.ctor() end
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return Cuboidd
function Cuboidd.ctor(x1, y1, z1, x2, y2, z2) end

---@return number
function Cuboidd.get_Width() end

---@return number
function Cuboidd.get_Height() end

---@return number
function Cuboidd.get_Length() end

---@return number
function Cuboidd.get_MinX() end

---@return number
function Cuboidd.get_MinY() end

---@return number
function Cuboidd.get_MinZ() end

---@return number
function Cuboidd.get_MaxX() end

---@return number
function Cuboidd.get_MaxY() end

---@return number
function Cuboidd.get_MaxZ() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Cuboidd.get_Start() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Cuboidd.get_End() end

-- Sets the minimum and maximum values of the cuboid
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.Set(x1, y1, z1, x2, y2, z2) end

-- Sets the minimum and maximum values of the cuboid
---@param min IVec3
---@param max IVec3
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.Set(min, max) end

-- Sets the minimum and maximum values of the cuboid
---@param selectionBox Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.Set(selectionBox) end

---@param other Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.Set(other) end

-- Sets the cuboid to the selectionBox, translated by vec
---@param selectionBox Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param vec Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.SetAndTranslate(selectionBox, vec) end

-- Sets the cuboid to the selectionBox, translated by (dX, dY, dZ)
---@param selectionBox Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param dX number
---@param dY number
---@param dZ number
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.SetAndTranslate(selectionBox, dX, dY, dZ) end

function Cuboidd.RemoveRoundingErrors() end

-- Adds the given offset to the cuboid
---@param vec IVec3
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.Translate(vec) end

-- Adds the given offset to the cuboid
---@param posX number
---@param posY number
---@param posZ number
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.Translate(posX, posY, posZ) end

---@param dx number
---@param dy number
---@param dz number
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.GrowBy(dx, dy, dz) end

-- Returns if the given point is inside the cuboid
---@param x number
---@param y number
---@param z number
---@return boolean
function Cuboidd.ContainsOrTouches(x, y, z) end

-- Returns if the given point is inside the cuboid
---@param x number
---@param y number
---@param z number
---@return boolean
function Cuboidd.Contains(x, y, z) end

-- Returns if the given point is inside the cuboid
---@param vec IVec3
---@return boolean
function Cuboidd.ContainsOrTouches(vec) end

-- Grows the cuboid so that it includes the given block
---@param x number
---@param y number
---@param z number
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.GrowToInclude(x, y, z) end

-- Grows the cuboid so that it includes the given block
---@param vec IVec3
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.GrowToInclude(vec) end

-- Returns the shortest distance between given point and any point inside the cuboid
---@param x number
---@param y number
---@param z number
---@return number
function Cuboidd.ShortestDistanceFrom(x, y, z) end

---@return Cuboidi
function Cuboidd.ToCuboidi() end

-- Returns the shortest distance between given point and any point inside the cuboid
---@param y number
---@return number
function Cuboidd.ShortestVerticalDistanceFrom(y) end

-- Returns the shortest vertical distance to any point between this and given cuboid
---@param cuboid Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@return number
function Cuboidd.ShortestVerticalDistanceFrom(cuboid) end

-- Returns the shortest distance to any point between this and given cuboid
---@param cuboid Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param offset EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return number
function Cuboidd.ShortestVerticalDistanceFrom(cuboid, offset) end

-- Returns the shortest distance to any point between this and given cuboid
---@param cuboid Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@return number
function Cuboidd.ShortestDistanceFrom(cuboid) end

-- Returns the shortest distance to any point between this and given cuboid
---@param cuboid Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param offset BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function Cuboidd.ShortestDistanceFrom(cuboid, offset) end

-- Returns the shortest horizontal distance to any point between this and given cuboid
---@param cuboid Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param offset BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function Cuboidd.ShortestHorizontalDistanceFrom(cuboid, offset) end

-- Returns the shortest horizontal distance to any point between this and given coordinate
---@param x number
---@param z number
---@return number
function Cuboidd.ShortestHorizontalDistanceFrom(x, z) end

-- Returns the shortest distance between given point and any point inside the cuboid
---@param vec IVec3
---@return number
function Cuboidd.ShortestDistanceFrom(vec) end

---@param from Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@param motx number
---@param direction EnumPushDirection&
---@return number
function Cuboidd.pushOutX(from, motx, direction) end

---@param from Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@param moty number
---@param direction EnumPushDirection&
---@return number
function Cuboidd.pushOutY(from, moty, direction) end

---@param from Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@param motz number
---@param direction EnumPushDirection&
---@return number
function Cuboidd.pushOutZ(from, motz, direction) end

-- Performs a 3-dimensional rotation on the cuboid and returns a new axis-aligned cuboid resulting from this rotation. Not sure it it makes any sense to use this for other rotations than 90 degree intervals.
---@param degX number
---@param degY number
---@param degZ number
---@param origin Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.RotatedCopy(degX, degY, degZ, origin) end

-- Performs a 3-dimensional rotation on the cuboid and returns a new axis-aligned cuboid resulting from this rotation. Not sure it makes any sense to use this for other rotations than 90 degree intervals.
---@param vec IVec3
---@param origin Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.RotatedCopy(vec, origin) end

-- Returns a new cuboid offseted by given position
---@param x number
---@param y number
---@param z number
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.OffsetCopy(x, y, z) end

-- Returns a new cuboid offseted by given position
---@param vec IVec3
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.OffsetCopy(vec) end

-- If the given cuboid intersects with this cuboid
---@param other Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@return boolean
function Cuboidd.Intersects(other) end

-- If the given cuboid intersects with this cuboid
---@param other Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@return boolean
function Cuboidd.Intersects(other) end

-- If the given cuboid intersects with this cuboid
---@param other Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param offset Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Cuboidd.Intersects(other, offset) end

---@param other Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param offsetx number
---@param offsety number
---@param offsetz number
---@return boolean
function Cuboidd.Intersects(other, offsetx, offsety, offsetz) end

-- If the given cuboid intersects with this cuboid
---@param other Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@return boolean
function Cuboidd.IntersectsOrTouches(other) end

-- If the given cuboid intersects with this cuboid
---@param other Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param offset Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function Cuboidd.IntersectsOrTouches(other, offset) end

-- If the given cuboid intersects with this cuboid
---@param other Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param offsetX number
---@param offsetY number
---@param offsetZ number
---@return boolean
function Cuboidd.IntersectsOrTouches(other, offsetX, offsetY, offsetZ) end

---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function Cuboidd.ToFloat() end

-- Creates a copy of the cuboid
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function Cuboidd.Clone() end

---@param other Cuboidd Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
---@return boolean
function Cuboidd.Equals(other) end

---@return userdata
function Cuboidd.GetType() end

---@return string
function Cuboidd.ToString() end

---@param obj userdata
---@return boolean
function Cuboidd.Equals(obj) end

---@return number
function Cuboidd.GetHashCode() end


