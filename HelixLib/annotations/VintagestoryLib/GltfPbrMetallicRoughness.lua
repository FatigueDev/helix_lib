---@meta

---@class GltfPbrMetallicRoughness
---@field BaseColorTexture GltfMatTexture
---@field BaseColorFactor number
---@field MetallicFactor Nullable`1
---@field RoughnessFactor Nullable`1
---@field PbrFactor number
---@field MetallicRoughnessTexture GltfMatTexture
GltfPbrMetallicRoughness = {}

---@return GltfPbrMetallicRoughness
function GltfPbrMetallicRoughness.ctor() end

---@return GltfMatTexture
function GltfPbrMetallicRoughness.get_BaseColorTexture() end

---@param value GltfMatTexture
function GltfPbrMetallicRoughness.set_BaseColorTexture(value) end

---@return number
function GltfPbrMetallicRoughness.get_BaseColorFactor() end

---@param value number
function GltfPbrMetallicRoughness.set_BaseColorFactor(value) end

---@return Nullable`1
function GltfPbrMetallicRoughness.get_MetallicFactor() end

---@param value Nullable`1
function GltfPbrMetallicRoughness.set_MetallicFactor(value) end

---@return Nullable`1
function GltfPbrMetallicRoughness.get_RoughnessFactor() end

---@param value Nullable`1
function GltfPbrMetallicRoughness.set_RoughnessFactor(value) end

---@return number
function GltfPbrMetallicRoughness.get_PbrFactor() end

---@return GltfMatTexture
function GltfPbrMetallicRoughness.get_MetallicRoughnessTexture() end

---@param value GltfMatTexture
function GltfPbrMetallicRoughness.set_MetallicRoughnessTexture(value) end

---@return userdata
function GltfPbrMetallicRoughness.GetType() end

---@return string
function GltfPbrMetallicRoughness.ToString() end

---@param obj userdata
---@return boolean
function GltfPbrMetallicRoughness.Equals(obj) end

---@return number
function GltfPbrMetallicRoughness.GetHashCode() end


