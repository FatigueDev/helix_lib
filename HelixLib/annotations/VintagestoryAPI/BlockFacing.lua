---@meta

-- Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@class BlockFacing
---@field Flag number The faces byte flag
---@field Index number The index of the face (N=0, E=1, S=2, W=3, U=4, D=5)
---@field MeshDataIndex number Index + 1
---@field HorizontalAngleIndex number The angle index of the face (E = 0, N = 1, W = 2, S = 3)
---@field Normali Vec3i Returns a normal vector of this face
---@field Normalf Vec3f Returns a normal vector of this face
---@field Normald Vec3d
---@field Plane Cuboidf Returns a cuboid where either the width, height or length is zero which represents the min/max of the block 2D plane in 3D space
---@field NormalByte number Returns a normal vector of this face encoded in 6 bits/ bit 0: 1 if south or west bit 1: sign bit  bit 2: 1 if up or down bit 3: sign bit  bit 4: 1 if north or south bit 5: sign bit 
---@field NormalPacked number Normalized normal vector in format GL_INT_2_10_10_10_REV
---@field NormalPackedFlags number Normalized normal vector packed into 3x4=12 bytes total and bit shifted by 15 bits, for use in meshdata flags data
---@field PlaneCenter Vec3f Returns the center position of this face
---@field Code string Returns the string north, east, south, west, up or down
---@field IsHorizontal boolean True if this face is N,E,S or W
---@field IsVertical boolean True if this face is U or D
---@field IsAxisNS boolean True if this face is N or S
---@field IsAxisWE boolean True if this face is N or S
---@field Axis EnumAxis The normal axis of this vector.
---@field Opposite BlockFacing Returns the opposing face
---@field HorizontalFlags number All horizontal blockfacing flags combined
---@field VerticalFlags number All vertical blockfacing flags combined
---@field NORTH BlockFacing Faces towards negative Z
---@field EAST BlockFacing Faces towards positive X
---@field SOUTH BlockFacing Faces towards positive Z
---@field WEST BlockFacing Faces towards negative X
---@field UP BlockFacing Faces towards positive Y
---@field DOWN BlockFacing Faces towards negative Y
---@field ALLFACES BlockFacing[] All block faces in the order of N, E, S, W, U, D
---@field ALLNORMALI Vec3i[] All block faces in the order of N, E, S, W, U, D
---@field AllVertexFlagsNormals number Packed ints representing the normal flags, left-shifted by 15 for easy inclusion in VertexFlags
---@field HORIZONTALS BlockFacing[] Array of horizontal faces (N, E, S, W)
---@field HORIZONTAL_NORMALI Vec3i[] Array of the normals to the horizontal faces (N, E, S, W)
---@field VERTICALS BlockFacing[] Array of vertical faces (U, D)
---@field HORIZONTALS_ANGLEORDER BlockFacing[] Array of horizontal faces in angle order (0°, 90°, 180°, 270°) => (E, N, W, S)
---@field NumberOfFaces number
---@field indexNORTH number
---@field indexEAST number
---@field indexSOUTH number
---@field indexWEST number
---@field indexUP number
---@field indexDOWN number
BlockFacing = {}


---@return number
function BlockFacing.get_Flag() end

---@return number
function BlockFacing.get_Index() end

---@return number
function BlockFacing.get_MeshDataIndex() end

---@return number
function BlockFacing.get_HorizontalAngleIndex() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function BlockFacing.get_Normali() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function BlockFacing.get_Normalf() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockFacing.get_Normald() end

---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function BlockFacing.get_Plane() end

---@return number
function BlockFacing.get_NormalByte() end

---@return number
function BlockFacing.get_NormalPacked() end

---@return number
function BlockFacing.get_NormalPackedFlags() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function BlockFacing.get_PlaneCenter() end

---@return string
function BlockFacing.get_Code() end

---@return boolean
function BlockFacing.get_IsHorizontal() end

---@return boolean
function BlockFacing.get_IsVertical() end

---@return boolean
function BlockFacing.get_IsAxisNS() end

---@return boolean
function BlockFacing.get_IsAxisWE() end

---@return EnumAxis # Represents an axis in the cartesian coordinate system
function BlockFacing.get_Axis() end

---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.get_Opposite() end

---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.GetOpposite() end

-- Returns the face if current face would be horizontally counter-clockwise rotated, only works for horizontal faces
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.GetCCW() end

-- Returns the face if current face would be horizontally clockwise rotated, only works for horizontal faces
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.GetCW() end

-- Gets the Horizontal BlockFacing by applying the given angel
-- If used on a UP or DOWN BlockFacing it will return it's current BlockFacing
---@param angle number
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.GetHorizontalRotated(angle) end

-- Applies a 3d rotation on the face and returns the face thats closest to the rotated face
---@param radX number
---@param radY number
---@param radZ number
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.FaceWhenRotatedBy(radX, radY, radZ) end

-- Rotates the face by given angle and returns the interpolated brightness of this face.
---@param radX number
---@param radY number
---@param radZ number
---@param BlockSideBrightnessByFacing number
---@return number
function BlockFacing.GetFaceBrightness(radX, radY, radZ, BlockSideBrightnessByFacing) end

-- Successive calls to this when looping through the standard six BlockFacings will set pos to the relevant facing offset from the original position
-- NOTE: this modifies the fields of the pos parameter, which is better for heap usage than creating a new BlockPos object for each iteration
-- If necessary to restore the original blockPos value, call FinishIteratingAllFaces(pos)
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockFacing.IterateThruFacingOffsets(pos) end

-- Restores the original value of pos, if we are certain we looped through ALLFACES using IterateThruFacingOffsets
-- Note: if for any reason control might have exited the loop early, this cannot sensibly be used
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockFacing.FinishIteratingAllFaces(pos) end

-- Rotates the face by given angle and returns the interpolated brightness of this face.
---@param matrix number
---@param BlockSideBrightnessByFacing number
---@return number
function BlockFacing.GetFaceBrightness(matrix, BlockSideBrightnessByFacing) end

---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function BlockFacing.IsAdjacent(facing) end

---@return string
function BlockFacing.ToString() end

-- Returns the face if code is 'north', 'east', 'south', 'west', 'north', 'up' or 'down'. Otherwise null.
---@param code string
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.FromCode(code) end

---@param code string
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.FromFirstLetter(code) end

-- Returns the face if code is 'n', 'e', 's', 'w', 'n', 'u' or 'd'. Otherwise null.
---@param code string
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.FromFirstLetter(code) end

---@param vec Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.FromNormal(vec) end

---@param vec Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.FromNormal(vec) end

---@param x number
---@param y number
---@param z number
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.FromVector(x, y, z) end

---@param flag number
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.FromFlag(flag) end

-- Returns the closest horizontal face from given angle (0 degree = east). Uses HORIZONTALS_ANGLEORDER
---@param radiant number
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function BlockFacing.HorizontalFromAngle(radiant) end

-- Returns true if given byte flags contain given face 
---@param flag number
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function BlockFacing.FlagContains(flag, facing) end

-- Returns true if given byte flags contains a horizontal face
---@param flag number
---@return boolean
function BlockFacing.FlagContainsHorizontals(flag) end

---@return userdata
function BlockFacing.GetType() end

---@param obj userdata
---@return boolean
function BlockFacing.Equals(obj) end

---@return number
function BlockFacing.GetHashCode() end


