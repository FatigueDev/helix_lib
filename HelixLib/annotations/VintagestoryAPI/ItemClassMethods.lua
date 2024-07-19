---@meta

---@class ItemClassMethods
ItemClassMethods = {}


---@param s1 EnumItemClass
---@return string
function ItemClassMethods.Name(s1) end

---@return userdata
function ItemClassMethods.GetType() end

---@return string
function ItemClassMethods.ToString() end

---@param obj userdata
---@return boolean
function ItemClassMethods.Equals(obj) end

---@return number
function ItemClassMethods.GetHashCode() end


