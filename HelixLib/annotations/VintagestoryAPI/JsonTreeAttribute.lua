---@meta

---@class JsonTreeAttribute
---@field value string
---@field values string
---@field elems table
---@field type EnumAttributeType
JsonTreeAttribute = {}

---@return JsonTreeAttribute
function JsonTreeAttribute.ctor() end

---@param resolver IWorldAccessor Important interface to access the game world.
---@return IAttribute # An attribute from an attribute tree
function JsonTreeAttribute.ToAttribute(resolver) end

---@return JsonTreeAttribute
function JsonTreeAttribute.Clone() end

---@return userdata
function JsonTreeAttribute.GetType() end

---@return string
function JsonTreeAttribute.ToString() end

---@param obj userdata
---@return boolean
function JsonTreeAttribute.Equals(obj) end

---@return number
function JsonTreeAttribute.GetHashCode() end


