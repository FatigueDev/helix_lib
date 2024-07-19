---@meta

---@class FloatRef
FloatRef = {}

---@return FloatRef
function FloatRef.ctor() end

---@param value_ number
---@return FloatRef
function FloatRef.Create(value_) end

---@return number
function FloatRef.GetValue() end

---@param value_ number
function FloatRef.SetValue(value_) end

---@return userdata
function FloatRef.GetType() end

---@return string
function FloatRef.ToString() end

---@param obj userdata
---@return boolean
function FloatRef.Equals(obj) end

---@return number
function FloatRef.GetHashCode() end


