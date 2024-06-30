---@meta

---@class BoolRef
---@field value boolean
BoolRef = {}

---@return BoolRef
function BoolRef.ctor() end

---@return boolean
function BoolRef.GetValue() end

---@param value_ boolean
function BoolRef.SetValue(value_) end

---@return userdata
function BoolRef.GetType() end

---@return string
function BoolRef.ToString() end

---@param obj userdata
---@return boolean
function BoolRef.Equals(obj) end

---@return number
function BoolRef.GetHashCode() end


