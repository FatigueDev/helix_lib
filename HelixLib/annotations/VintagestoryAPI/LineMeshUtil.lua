---@meta

---@class LineMeshUtil
LineMeshUtil = {}

---@return LineMeshUtil
function LineMeshUtil.ctor() end

-- Gets the current rectangle for the line.
---@param color? number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function LineMeshUtil.GetRectangle(color) end

-- Gets the cube of this line.
---@param color? number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function LineMeshUtil.GetCube(color) end

-- Adds a 2D line to the mesh data.
---@param m MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param color number
function LineMeshUtil.AddLine2D(m, x1, y1, x2, y2, color) end

-- Adds a collection of lines to the given mesh.
---@param m MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param p0 Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param p1 Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param p2 Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param p3 Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param color number
function LineMeshUtil.AddLineLoop(m, p0, p1, p2, p3, color) end

-- Adds a vertex to the mesh data.
---@param model MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param x number
---@param y number
---@param z number
---@param color number
function LineMeshUtil.AddVertex(model, x, y, z, color) end

---@return userdata
function LineMeshUtil.GetType() end

---@return string
function LineMeshUtil.ToString() end

---@param obj userdata
---@return boolean
function LineMeshUtil.Equals(obj) end

---@return number
function LineMeshUtil.GetHashCode() end


