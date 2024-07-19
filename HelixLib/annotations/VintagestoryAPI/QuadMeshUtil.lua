---@meta

-- Utility class for simple quad meshes
---@class QuadMeshUtil
QuadMeshUtil = {}

---@return QuadMeshUtil
function QuadMeshUtil.ctor() end

-- Returns a single vertical quad mesh of with vertices going from -1/-1 to 1/1
-- With UV, without RGBA
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function QuadMeshUtil.GetQuad() end

-- Quad without rgba, with uv
---@param x number
---@param y number
---@param z number
---@param dw number
---@param dh number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function QuadMeshUtil.GetCustomQuadModelData(x, y, z, dw, dh) end

-- Returns a single vertical  quad mesh at given position, size and color
---@param x number
---@param y number
---@param z number
---@param width number
---@param height number
---@param r number
---@param g number
---@param b number
---@param a number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function QuadMeshUtil.GetCustomQuad(x, y, z, width, height, r, g, b, a) end

-- Returns a single horziontal quad mesh with given params
---@param x number
---@param y number
---@param z number
---@param width number
---@param length number
---@param r number
---@param g number
---@param b number
---@param a number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function QuadMeshUtil.GetCustomQuadHorizontal(x, y, z, width, length, r, g, b, a) end

-- Returns a custom quad mesh with the given params.
---@param u number
---@param v number
---@param u2 number
---@param v2 number
---@param dx number
---@param dy number
---@param dw number
---@param dh number
---@param r number
---@param g number
---@param b number
---@param a number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function QuadMeshUtil.GetCustomQuadModelData(u, v, u2, v2, dx, dy, dw, dh, r, g, b, a) end

---@return userdata
function QuadMeshUtil.GetType() end

---@return string
function QuadMeshUtil.ToString() end

---@param obj userdata
---@return boolean
function QuadMeshUtil.Equals(obj) end

---@return number
function QuadMeshUtil.GetHashCode() end


