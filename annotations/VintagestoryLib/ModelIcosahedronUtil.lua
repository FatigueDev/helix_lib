---@meta

---@class ModelIcosahedronUtil
---@field white number
---@field X number
---@field Z number
---@field vdata number
---@field tindx number
ModelIcosahedronUtil = {}

---@return ModelIcosahedronUtil
function ModelIcosahedronUtil.ctor() end

---@param depth number
---@param radius number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ModelIcosahedronUtil.genIcosahedron(depth, radius) end

---@param v number
---@return number
function ModelIcosahedronUtil.mod(v) end

---@return userdata
function ModelIcosahedronUtil.GetType() end

---@return string
function ModelIcosahedronUtil.ToString() end

---@param obj userdata
---@return boolean
function ModelIcosahedronUtil.Equals(obj) end

---@return number
function ModelIcosahedronUtil.GetHashCode() end


