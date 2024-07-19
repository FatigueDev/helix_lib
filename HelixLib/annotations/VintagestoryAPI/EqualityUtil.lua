---@meta

---@class EqualityUtil
EqualityUtil = {}

---@return EqualityUtil
function EqualityUtil.ctor() end

---@param a userdata
---@param b userdata
---@return boolean
function EqualityUtil.NumberEquals(a, b) end

---@return userdata
function EqualityUtil.GetType() end

---@return string
function EqualityUtil.ToString() end

---@param obj userdata
---@return boolean
function EqualityUtil.Equals(obj) end

---@return number
function EqualityUtil.GetHashCode() end


