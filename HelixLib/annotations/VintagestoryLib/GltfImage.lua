---@meta

---@class GltfImage
---@field BufferView number
---@field MimeType string
---@field Name string
GltfImage = {}

---@return GltfImage
function GltfImage.ctor() end

---@return number
function GltfImage.get_BufferView() end

---@param value number
function GltfImage.set_BufferView(value) end

---@return string
function GltfImage.get_MimeType() end

---@param value string
function GltfImage.set_MimeType(value) end

---@return string
function GltfImage.get_Name() end

---@param value string
function GltfImage.set_Name(value) end

---@return userdata
function GltfImage.GetType() end

---@return string
function GltfImage.ToString() end

---@param obj userdata
---@return boolean
function GltfImage.Equals(obj) end

---@return number
function GltfImage.GetHashCode() end


