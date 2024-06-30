---@meta

---@class GltfMatTexture
---@field Index number
---@field TexCoord number
GltfMatTexture = {}

---@return GltfMatTexture
function GltfMatTexture.ctor() end

---@return number
function GltfMatTexture.get_Index() end

---@param value number
function GltfMatTexture.set_Index(value) end

---@return number
function GltfMatTexture.get_TexCoord() end

---@param value number
function GltfMatTexture.set_TexCoord(value) end

---@return userdata
function GltfMatTexture.GetType() end

---@return string
function GltfMatTexture.ToString() end

---@param obj userdata
---@return boolean
function GltfMatTexture.Equals(obj) end

---@return number
function GltfMatTexture.GetHashCode() end


