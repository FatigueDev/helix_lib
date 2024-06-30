---@meta

---@class KeyValue
KeyValue = {}

---@return KeyValue
function KeyValue.ctor() end

---@param key Key
---@param value number
---@return KeyValue
function KeyValue.Create(key, value) end

---@return userdata
function KeyValue.GetType() end

---@return string
function KeyValue.ToString() end

---@param obj userdata
---@return boolean
function KeyValue.Equals(obj) end

---@return number
function KeyValue.GetHashCode() end


