---@meta

---@class GltfMesh
---@field Name string
---@field Primitives GltfPrimitive[]
GltfMesh = {}

---@return GltfMesh
function GltfMesh.ctor() end

---@return string
function GltfMesh.get_Name() end

---@param value string
function GltfMesh.set_Name(value) end

---@return GltfPrimitive[]
function GltfMesh.get_Primitives() end

---@param value GltfPrimitive[]
function GltfMesh.set_Primitives(value) end

---@return userdata
function GltfMesh.GetType() end

---@return string
function GltfMesh.ToString() end

---@param obj userdata
---@return boolean
function GltfMesh.Equals(obj) end

---@return number
function GltfMesh.GetHashCode() end


