---@meta

---@class CubeMeshUtil
---@field CloudSideShadings number Top, Front/Left, Back/Right, Bottom
---@field DefaultBlockSideShadings number Top, Front/Left, Back/Right, Bottom
---@field DefaultBlockSideShadingsByFacing number Shadings by Blockfacing index
---@field CubeVertices number XYZ Vertex positions for every vertex in a cube. Origin is the cube middle point.
---@field CubeFaceIndices number Cube face indices, in order: North, East, South, West, Up, Down.
---@field CubeUvCoords number UV Coords for every Vertex in a cube
---@field CubeVertexIndices number Indices for every triangle in a cube
---@field BaseCubeVertexIndices number Can be used for any face if offseted correctly
CubeMeshUtil = {}

---@return CubeMeshUtil
function CubeMeshUtil.ctor() end

-- Returns a default 2x2x2 cube with xyz,uv,rgba and indices set - ready for upload to the graphics card
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function CubeMeshUtil.GetCube() end

-- Returns a rgba byte array to be used for default shading on a standard cube, can supply the shading levels
---@param baseColor number
---@param blockSideShadings number
---@param smoothShadedSides boolean
---@return number
function CubeMeshUtil.GetShadedCubeRGBA(baseColor, blockSideShadings, smoothShadedSides) end

-- Returns a rgba byte array to be used for default shading on a standard cube
---@param colorSides number
---@param smoothShadedSides boolean
---@return number
function CubeMeshUtil.GetShadedCubeRGBA(colorSides, smoothShadedSides) end

-- Same as GetCubeModelData but can define scale and translation. Scale is applied first.
---@param scaleH number
---@param scaleV number
---@param translate Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function CubeMeshUtil.GetCubeOnlyScaleXyz(scaleH, scaleV, translate) end

-- Same as GetCubeModelData but can define scale and translation. Scale is applied first.
---@param scaleH number
---@param scaleV number
---@param translate Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function CubeMeshUtil.GetCube(scaleH, scaleV, translate) end

-- Same as GetCubeModelData but can define scale and translation. Scale is applied first.
---@param scaleX number
---@param scaleY number
---@param scaleZ number
---@param translate Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function CubeMeshUtil.GetCube(scaleX, scaleY, scaleZ, translate) end

-- Scales a mesh retrieced by GetCube()
---@param modelData MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param scaleX number
---@param scaleY number
---@param scaleZ number
---@param translate Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function CubeMeshUtil.ScaleCubeMesh(modelData, scaleX, scaleY, scaleZ, translate) end

-- Gets the face of a given cube.
---@param face BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function CubeMeshUtil.GetCubeFace(face) end

-- Gets the face of a given cube.
---@param face BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param scaleH number
---@param scaleV number
---@param translate Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function CubeMeshUtil.GetCubeFace(face, scaleH, scaleV, translate) end

---@param mesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function CubeMeshUtil.SetXyzFacesAndPacketNormals(mesh) end

---@return userdata
function CubeMeshUtil.GetType() end

---@return string
function CubeMeshUtil.ToString() end

---@param obj userdata
---@return boolean
function CubeMeshUtil.Equals(obj) end

---@return number
function CubeMeshUtil.GetHashCode() end


