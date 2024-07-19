---@meta

---@class NativeTypeNameAttribute: Attribute, Attribute
---@field Name string
---@field TypeId userdata
NativeTypeNameAttribute = {}

---@param name string
---@return NativeTypeNameAttribute
function NativeTypeNameAttribute.ctor(name) end

---@return string
function NativeTypeNameAttribute.get_Name() end

---@param obj userdata
---@return boolean
function NativeTypeNameAttribute.Equals(obj) end

---@return number
function NativeTypeNameAttribute.GetHashCode() end

---@return userdata
function NativeTypeNameAttribute.get_TypeId() end

---@param obj userdata
---@return boolean
function NativeTypeNameAttribute.Match(obj) end

---@return boolean
function NativeTypeNameAttribute.IsDefaultAttribute() end

---@return userdata
function NativeTypeNameAttribute.GetType() end

---@return string
function NativeTypeNameAttribute.ToString() end


