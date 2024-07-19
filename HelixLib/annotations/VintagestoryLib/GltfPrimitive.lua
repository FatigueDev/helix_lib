---@meta

---@class GltfPrimitive
---@field Attributes GltfAttributes
---@field Indices Nullable`1
---@field Material Nullable`1
GltfPrimitive = {}

---@return GltfPrimitive
function GltfPrimitive.ctor() end

---@return GltfAttributes
function GltfPrimitive.get_Attributes() end

---@param value GltfAttributes
function GltfPrimitive.set_Attributes(value) end

---@return Nullable`1
function GltfPrimitive.get_Indices() end

---@param value Nullable`1
function GltfPrimitive.set_Indices(value) end

---@return Nullable`1
function GltfPrimitive.get_Material() end

---@param value Nullable`1
function GltfPrimitive.set_Material(value) end

---@return userdata
function GltfPrimitive.GetType() end

---@return string
function GltfPrimitive.ToString() end

---@param obj userdata
---@return boolean
function GltfPrimitive.Equals(obj) end

---@return number
function GltfPrimitive.GetHashCode() end


