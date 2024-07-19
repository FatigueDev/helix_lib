---@meta

---@class IntRef
IntRef = {}

---@return IntRef
function IntRef.ctor() end

---@param value_ number
---@return IntRef
function IntRef.Create(value_) end

---@return number
function IntRef.GetValue() end

---@param value_ number
function IntRef.SetValue(value_) end

---@return userdata
function IntRef.GetType() end

---@return string
function IntRef.ToString() end

---@param obj userdata
---@return boolean
function IntRef.Equals(obj) end

---@return number
function IntRef.GetHashCode() end


