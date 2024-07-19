---@meta

---@class QuadMeshUtilExt
QuadMeshUtilExt = {}

---@return QuadMeshUtilExt
function QuadMeshUtilExt.ctor() end

---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function QuadMeshUtilExt.GetQuadModelData() end

---@param x number
---@param y number
---@param z number
---@param dw number
---@param dh number
---@param r number
---@param g number
---@param b number
---@param a number
---@param textureId? number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function QuadMeshUtilExt.GetCustomQuadModelData(x, y, z, dw, dh, r, g, b, a, textureId) end

---@param x number
---@param y number
---@param z number
---@param dw number
---@param dl number
---@param r number
---@param g number
---@param b number
---@param a number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function QuadMeshUtilExt.GetCustomQuadModelDataHorizontal(x, y, z, dw, dl, r, g, b, a) end

---@param u number
---@param v number
---@param uWidth number
---@param vHeight number
---@param x number
---@param y number
---@param dw number
---@param dh number
---@param r number
---@param g number
---@param b number
---@param a number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function QuadMeshUtilExt.GetCustomQuadModelData(u, v, uWidth, vHeight, x, y, dw, dh, r, g, b, a) end

---@return userdata
function QuadMeshUtilExt.GetType() end

---@return string
function QuadMeshUtilExt.ToString() end

---@param obj userdata
---@return boolean
function QuadMeshUtilExt.Equals(obj) end

---@return number
function QuadMeshUtilExt.GetHashCode() end


