---@meta

---@class GltfAsset
---@field Generator string
---@field Version string
GltfAsset = {}

---@return GltfAsset
function GltfAsset.ctor() end

---@return string
function GltfAsset.get_Generator() end

---@param value string
function GltfAsset.set_Generator(value) end

---@return string
function GltfAsset.get_Version() end

---@param value string
function GltfAsset.set_Version(value) end

---@return userdata
function GltfAsset.GetType() end

---@return string
function GltfAsset.ToString() end

---@param obj userdata
---@return boolean
function GltfAsset.Equals(obj) end

---@return number
function GltfAsset.GetHashCode() end


