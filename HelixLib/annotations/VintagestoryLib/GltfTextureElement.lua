---@meta

---@class GltfTextureElement
---@field Source number
---@field Sampler number
GltfTextureElement = {}

---@return GltfTextureElement
function GltfTextureElement.ctor() end

---@return number
function GltfTextureElement.get_Source() end

---@param value number
function GltfTextureElement.set_Source(value) end

---@return number
function GltfTextureElement.get_Sampler() end

---@param value number
function GltfTextureElement.set_Sampler(value) end

---@return userdata
function GltfTextureElement.GetType() end

---@return string
function GltfTextureElement.ToString() end

---@param obj userdata
---@return boolean
function GltfTextureElement.Equals(obj) end

---@return number
function GltfTextureElement.GetHashCode() end


