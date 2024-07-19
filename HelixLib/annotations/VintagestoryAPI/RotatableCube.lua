---@meta

---@class RotatableCube: Cuboidf, Cuboidf
---@field XSize number This is equivalent to width so long as X2 > X1, but could in theory be a negative number if the box has its corners the wrong way around
---@field YSize number This is equivalent to height so long as Y2 > Y1, but could in theory be a negative number if the box has its corners the wrong way around
---@field ZSize number This is equivalent to length so long as Z2 > Z1, but could in theory be a negative number if the box has its corners the wrong way around
---@field Width number
---@field Height number
---@field Length number
---@field MinX number
---@field MinY number
---@field MinZ number
---@field MaxX number
---@field MaxY number
---@field MaxZ number
---@field MidX number
---@field MidY number
---@field MidZ number
---@field Item number
---@field Empty boolean True when all values are 0
---@field Start Vec3f
---@field End Vec3f
---@field Startd Vec3d
---@field Endd Vec3d
---@field RotateX number
---@field RotateY number
---@field RotateZ number
---@field Origin Vec3d
---@field X1 number
---@field Y1 number
---@field Z1 number
---@field X2 number
---@field Y2 number
---@field Z2 number
RotatableCube = {}

---@return RotatableCube
function RotatableCube.ctor() end
---@param MinX number
---@param MinY number
---@param MinZ number
---@param MaxX number
---@param MaxY number
---@param MaxZ number
---@return RotatableCube
function RotatableCube.ctor(MinX, MinY, MinZ, MaxX, MaxY, MaxZ) end

---@param rotateY number
---@param origin? Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Cuboidi
function RotatableCube.ToHitboxCuboidi(rotateY, origin) end

---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.RotatedCopy() end

---@return RotatableCube
function RotatableCube.Clone() end

---@return number
function RotatableCube.get_XSize() end

---@return number
function RotatableCube.get_YSize() end

---@return number
function RotatableCube.get_ZSize() end

---@return number
function RotatableCube.get_Width() end

---@return number
function RotatableCube.get_Height() end

---@return number
function RotatableCube.get_Length() end

---@return number
function RotatableCube.get_MinX() end

---@return number
function RotatableCube.get_MinY() end

---@return number
function RotatableCube.get_MinZ() end

---@return number
function RotatableCube.get_MaxX() end

---@return number
function RotatableCube.get_MaxY() end

---@return number
function RotatableCube.get_MaxZ() end

---@return number
function RotatableCube.get_MidX() end

---@return number
function RotatableCube.get_MidY() end

---@return number
function RotatableCube.get_MidZ() end

---@param index number
---@return number
function RotatableCube.get_Item(index) end

---@param index number
---@param value number
function RotatableCube.set_Item(index, value) end

---@return boolean
function RotatableCube.get_Empty() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function RotatableCube.get_Start() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function RotatableCube.get_End() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function RotatableCube.get_Startd() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function RotatableCube.get_Endd() end

-- Sets the minimum and maximum values of the cuboid
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.Set(x1, y1, z1, x2, y2, z2) end

-- Sets the minimum and maximum values of the cuboid
---@param min IVec3
---@param max IVec3
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.Set(min, max) end

---@param collisionBox Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.Set(collisionBox) end

-- Adds the given offset to the cuboid
---@param posX number
---@param posY number
---@param posZ number
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.Translate(posX, posY, posZ) end

-- Adds the given offset to the cuboid
---@param vec IVec3
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.Translate(vec) end

-- Substractes the given offset to the cuboid
---@param posX number
---@param posY number
---@param posZ number
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.Sub(posX, posY, posZ) end

-- Substractes the given offset to the cuboid
---@param vec IVec3
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.Sub(vec) end

-- Returns if the given point is inside the cuboid
---@param x number
---@param y number
---@param z number
---@return boolean
function RotatableCube.Contains(x, y, z) end

-- Returns if the given point is inside the cuboid
---@param x number
---@param y number
---@param z number
---@return boolean
function RotatableCube.ContainsOrTouches(x, y, z) end

-- Returns if the given point is inside the cuboid
---@param vec IVec3
---@return boolean
function RotatableCube.ContainsOrTouches(vec) end

---@param size number
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.OmniNotDownGrowBy(size) end

---@param size number
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.OmniGrowBy(size) end

---@param size number
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.ShrinkBy(size) end

-- Grows the cuboid so that it includes the given block
---@param x number
---@param y number
---@param z number
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.GrowToInclude(x, y, z) end

---@param min Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param max Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.ClampTo(min, max) end

-- Grows the cuboid so that it includes the given block
---@param vec IVec3
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.GrowToInclude(vec) end

-- Returns the shortest distance between given point and any point inside the cuboid
---@param x number
---@param y number
---@param z number
---@return number
function RotatableCube.ShortestDistanceFrom(x, y, z) end

-- Returns the shortest distance between given point and any point inside the cuboid
---@param vec IVec3
---@return number
function RotatableCube.ShortestDistanceFrom(vec) end

---@param from Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param x number
---@param direction EnumPushDirection&
---@return number
function RotatableCube.pushOutX(from, x, direction) end

---@param from Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param y number
---@param direction EnumPushDirection&
---@return number
function RotatableCube.pushOutY(from, y, direction) end

---@param from Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param z number
---@param direction EnumPushDirection&
---@return number
function RotatableCube.pushOutZ(from, z, direction) end

-- Performs a 3-dimensional rotation on the cuboid and returns a new axis-aligned cuboid resulting from this rotation. Not sure it it makes any sense to use this for other rotations than 90 degree intervals.
---@param degX number
---@param degY number
---@param degZ number
---@param origin Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.RotatedCopy(degX, degY, degZ, origin) end

-- Performs a 3-dimensional rotation on the cuboid and returns a new axis-aligned cuboid resulting from this rotation. Not sure it it makes any sense to use this for other rotations than 90 degree intervals.
---@param vec IVec3
---@param origin Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.RotatedCopy(vec, origin) end

-- Returns a new double precision cuboid offseted by given position
---@param x number
---@param y number
---@param z number
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.OffsetCopy(x, y, z) end

-- Returns a new cuboid offseted by given position
---@param vec IVec3
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.OffsetCopy(vec) end

-- Returns a new cuboid offseted by given position
---@param x number
---@param y number
---@param z number
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function RotatableCube.OffsetCopyDouble(x, y, z) end

-- Returns a new cuboid offseted by given position
---@param vec IVec3
---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function RotatableCube.OffsetCopyDouble(vec) end

-- Expands this in the given direction by amount d
---@param face BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param d number
function RotatableCube.Expand(face, d) end

-- Creates a copy of the cuboid
---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function RotatableCube.Clone() end

---@return Cuboidd # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection withes.
function RotatableCube.ToDouble() end

-- Makes sure the collisionbox coords are multiples of 0.0001
function RotatableCube.RoundToFracsOfOne10thousand() end

---@param other Cuboidf Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@return boolean
function RotatableCube.Equals(other) end

---@return Cuboidi
function RotatableCube.ConvertToCuboidi() end

---@return string
function RotatableCube.ToString() end

---@return userdata
function RotatableCube.GetType() end

---@param obj userdata
---@return boolean
function RotatableCube.Equals(obj) end

---@return number
function RotatableCube.GetHashCode() end


