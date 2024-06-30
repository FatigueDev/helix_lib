---@meta

---@class CubeFaceVertices
---@field blockFaceVerticesCentered Vec3iAndFacingFlags[][]
---@field blockFaceVertices FastVec3f[][]
---@field blockFaceVerticesCenteredDiv2 Vec3iAndFacingFlags[][]
---@field blockFaceVerticesDiv2 FastVec3f[][]
CubeFaceVertices = {}

---@return CubeFaceVertices
function CubeFaceVertices.ctor() end

---@param horMul number
---@param vertMul number
---@param bfVerticesCentered Vec3iAndFacingFlags[][]&
---@param bfVertices FastVec3f[][]& Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function CubeFaceVertices.Init(horMul, vertMul, bfVerticesCentered, bfVertices) end

---@return userdata
function CubeFaceVertices.GetType() end

---@return string
function CubeFaceVertices.ToString() end

---@param obj userdata
---@return boolean
function CubeFaceVertices.Equals(obj) end

---@return number
function CubeFaceVertices.GetHashCode() end


