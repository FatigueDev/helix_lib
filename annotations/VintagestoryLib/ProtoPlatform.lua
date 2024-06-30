---@meta

---@class ProtoPlatform
ProtoPlatform = {}

---@return ProtoPlatform
function ProtoPlatform.ctor() end

---@param s string
---@return number
function ProtoPlatform.StringToBytes(s) end

---@param bytes number
---@param length number
---@return string
function ProtoPlatform.BytesToString(bytes, length) end

---@param a number
---@return number
function ProtoPlatform.ArrayLength(a) end

---@param a number
---@return number
function ProtoPlatform.IntToByte(a) end

---@param x number
---@param n number
---@return number
function ProtoPlatform.logical_right_shift(x, n) end

---@param x number
---@param n number
---@return number
function ProtoPlatform.logical_right_shift(x, n) end

---@return userdata
function ProtoPlatform.GetType() end

---@return string
function ProtoPlatform.ToString() end

---@param obj userdata
---@return boolean
function ProtoPlatform.Equals(obj) end

---@return number
function ProtoPlatform.GetHashCode() end


