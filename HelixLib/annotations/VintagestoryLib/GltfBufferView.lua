---@meta

---@class GltfBufferView
---@field Buffer number
---@field ByteLength number
---@field ByteOffset number
GltfBufferView = {}

---@return GltfBufferView
function GltfBufferView.ctor() end

---@return number
function GltfBufferView.get_Buffer() end

---@param value number
function GltfBufferView.set_Buffer(value) end

---@return number
function GltfBufferView.get_ByteLength() end

---@param value number
function GltfBufferView.set_ByteLength(value) end

---@return number
function GltfBufferView.get_ByteOffset() end

---@param value number
function GltfBufferView.set_ByteOffset(value) end

---@return userdata
function GltfBufferView.GetType() end

---@return string
function GltfBufferView.ToString() end

---@param obj userdata
---@return boolean
function GltfBufferView.Equals(obj) end

---@return number
function GltfBufferView.GetHashCode() end


