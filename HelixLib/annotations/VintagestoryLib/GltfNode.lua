---@meta

---@class GltfNode
---@field Mesh number
---@field Name string
---@field Rotation number
---@field Scale number
---@field Translation number
GltfNode = {}

---@return GltfNode
function GltfNode.ctor() end

---@return number
function GltfNode.get_Mesh() end

---@param value number
function GltfNode.set_Mesh(value) end

---@return string
function GltfNode.get_Name() end

---@param value string
function GltfNode.set_Name(value) end

---@return number
function GltfNode.get_Rotation() end

---@param value number
function GltfNode.set_Rotation(value) end

---@return number
function GltfNode.get_Scale() end

---@param value number
function GltfNode.set_Scale(value) end

---@return number
function GltfNode.get_Translation() end

---@param value number
function GltfNode.set_Translation(value) end

---@return userdata
function GltfNode.GetType() end

---@return string
function GltfNode.ToString() end

---@param obj userdata
---@return boolean
function GltfNode.Equals(obj) end

---@return number
function GltfNode.GetHashCode() end


