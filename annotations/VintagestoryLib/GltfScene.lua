---@meta

---@class GltfScene
---@field Name string
---@field Nodes number
GltfScene = {}

---@return GltfScene
function GltfScene.ctor() end

---@return string
function GltfScene.get_Name() end

---@param value string
function GltfScene.set_Name(value) end

---@return number
function GltfScene.get_Nodes() end

---@param value number
function GltfScene.set_Nodes(value) end

---@return userdata
function GltfScene.GetType() end

---@return string
function GltfScene.ToString() end

---@param obj userdata
---@return boolean
function GltfScene.Equals(obj) end

---@return number
function GltfScene.GetHashCode() end


