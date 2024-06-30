---@meta

---@class GltfAccessor
---@field BufferView number
---@field ComponentType VertexAttribPointerType
---@field Count number
---@field Max number
---@field Min number
---@field Type EnumGltfAccessorType
GltfAccessor = {}

---@return GltfAccessor
function GltfAccessor.ctor() end

---@return number
function GltfAccessor.get_BufferView() end

---@param value number
function GltfAccessor.set_BufferView(value) end

---@return VertexAttribPointerType
function GltfAccessor.get_ComponentType() end

---@param value VertexAttribPointerType
function GltfAccessor.set_ComponentType(value) end

---@return number
function GltfAccessor.get_Count() end

---@param value number
function GltfAccessor.set_Count(value) end

---@return number
function GltfAccessor.get_Max() end

---@param value number
function GltfAccessor.set_Max(value) end

---@return number
function GltfAccessor.get_Min() end

---@param value number
function GltfAccessor.set_Min(value) end

---@return EnumGltfAccessorType
function GltfAccessor.get_Type() end

---@param value EnumGltfAccessorType
function GltfAccessor.set_Type(value) end

---@return userdata
function GltfAccessor.GetType() end

---@return string
function GltfAccessor.ToString() end

---@param obj userdata
---@return boolean
function GltfAccessor.Equals(obj) end

---@return number
function GltfAccessor.GetHashCode() end


