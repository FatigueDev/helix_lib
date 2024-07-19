---@meta

---@class Eproprs
---@field Props EntityProperties
---@field Color SKColor
Eproprs = {}

---@return Eproprs
function Eproprs.ctor() end

---@return userdata
function Eproprs.GetType() end

---@return string
function Eproprs.ToString() end

---@param obj userdata
---@return boolean
function Eproprs.Equals(obj) end

---@return number
function Eproprs.GetHashCode() end


