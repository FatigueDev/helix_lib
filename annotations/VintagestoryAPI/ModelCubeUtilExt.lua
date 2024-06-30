---@meta

---@class ModelCubeUtilExt: CubeMeshUtil, CubeMeshUtil
---@field EnumShadeMode nil
ModelCubeUtilExt = {}

---@return ModelCubeUtilExt
function ModelCubeUtilExt.ctor() end

---@param modeldata MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param face BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param centerXyz Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param sizeXyz Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param originUv Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param sizeUv Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
---@param textureId number
---@param color number
---@param shade EnumShadeMode
---@param vertexFlags number
---@param brightness? number
---@param uvRotation? number
---@param climateColorMapId? number
---@param seasonColorMapId? number
---@param renderPass? number
function ModelCubeUtilExt.AddFace(modeldata, face, centerXyz, sizeXyz, originUv, sizeUv, textureId, color, shade, vertexFlags, brightness, uvRotation, climateColorMapId, seasonColorMapId, renderPass) end

---@param modeldata MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param face BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param centerXyz Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param sizeXyz Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param color number
---@param brightness? number
function ModelCubeUtilExt.AddFaceSkipTex(modeldata, face, centerXyz, sizeXyz, color, brightness) end

---@return userdata
function ModelCubeUtilExt.GetType() end

---@return string
function ModelCubeUtilExt.ToString() end

---@param obj userdata
---@return boolean
function ModelCubeUtilExt.Equals(obj) end

---@return number
function ModelCubeUtilExt.GetHashCode() end


