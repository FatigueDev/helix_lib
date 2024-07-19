---@meta

---@class MouseButtonConverter
MouseButtonConverter = {}

---@return MouseButtonConverter
function MouseButtonConverter.ctor() end

---@param button MouseButton
---@return EnumMouseButton
function MouseButtonConverter.ToEnumMouseButton(button) end

---@return userdata
function MouseButtonConverter.GetType() end

---@return string
function MouseButtonConverter.ToString() end

---@param obj userdata
---@return boolean
function MouseButtonConverter.Equals(obj) end

---@return number
function MouseButtonConverter.GetHashCode() end


