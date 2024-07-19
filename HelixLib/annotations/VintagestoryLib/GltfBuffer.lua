---@meta

---@class GltfBuffer
---@field ByteLength number
---@field Uri string
GltfBuffer = {}

---@return GltfBuffer
function GltfBuffer.ctor() end

---@return number
function GltfBuffer.get_ByteLength() end

---@param value number
function GltfBuffer.set_ByteLength(value) end

---@return string
function GltfBuffer.get_Uri() end

---@param value string
function GltfBuffer.set_Uri(value) end

---@return userdata
function GltfBuffer.GetType() end

---@return string
function GltfBuffer.ToString() end

---@param obj userdata
---@return boolean
function GltfBuffer.Equals(obj) end

---@return number
function GltfBuffer.GetHashCode() end


