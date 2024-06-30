---@meta

---@class GltfMaterial
---@field DoubleSided boolean
---@field EmissiveFactor number
---@field Name string
---@field NormalTexture GltfMatTexture
---@field PbrMetallicRoughness GltfPbrMetallicRoughness
GltfMaterial = {}

---@return GltfMaterial
function GltfMaterial.ctor() end

---@return boolean
function GltfMaterial.get_DoubleSided() end

---@param value boolean
function GltfMaterial.set_DoubleSided(value) end

---@return number
function GltfMaterial.get_EmissiveFactor() end

---@param value number
function GltfMaterial.set_EmissiveFactor(value) end

---@return string
function GltfMaterial.get_Name() end

---@param value string
function GltfMaterial.set_Name(value) end

---@return GltfMatTexture
function GltfMaterial.get_NormalTexture() end

---@param value GltfMatTexture
function GltfMaterial.set_NormalTexture(value) end

---@return GltfPbrMetallicRoughness
function GltfMaterial.get_PbrMetallicRoughness() end

---@param value GltfPbrMetallicRoughness
function GltfMaterial.set_PbrMetallicRoughness(value) end

---@return userdata
function GltfMaterial.GetType() end

---@return string
function GltfMaterial.ToString() end

---@param obj userdata
---@return boolean
function GltfMaterial.Equals(obj) end

---@return number
function GltfMaterial.GetHashCode() end


