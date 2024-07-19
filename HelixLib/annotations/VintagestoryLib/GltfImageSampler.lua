---@meta

---@class GltfImageSampler
---@field MagFilter TextureMagFilter
---@field MinFilter TextureMinFilter
---@field WrapS TextureWrapMode
---@field WrapT TextureWrapMode
GltfImageSampler = {}

---@return GltfImageSampler
function GltfImageSampler.ctor() end

---@return TextureMagFilter
function GltfImageSampler.get_MagFilter() end

---@param value TextureMagFilter
function GltfImageSampler.set_MagFilter(value) end

---@return TextureMinFilter
function GltfImageSampler.get_MinFilter() end

---@param value TextureMinFilter
function GltfImageSampler.set_MinFilter(value) end

---@return TextureWrapMode
function GltfImageSampler.get_WrapS() end

---@param value TextureWrapMode
function GltfImageSampler.set_WrapS(value) end

---@return TextureWrapMode
function GltfImageSampler.get_WrapT() end

---@param value TextureWrapMode
function GltfImageSampler.set_WrapT(value) end

---@return userdata
function GltfImageSampler.GetType() end

---@return string
function GltfImageSampler.ToString() end

---@param obj userdata
---@return boolean
function GltfImageSampler.Equals(obj) end

---@return number
function GltfImageSampler.GetHashCode() end


