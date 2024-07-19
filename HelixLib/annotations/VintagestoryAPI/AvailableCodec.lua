---@meta

---@class AvailableCodec
---@field Name string
---@field Code string
AvailableCodec = {}

---@return AvailableCodec
function AvailableCodec.ctor() end

---@return userdata
function AvailableCodec.GetType() end

---@return string
function AvailableCodec.ToString() end

---@param obj userdata
---@return boolean
function AvailableCodec.Equals(obj) end

---@return number
function AvailableCodec.GetHashCode() end


