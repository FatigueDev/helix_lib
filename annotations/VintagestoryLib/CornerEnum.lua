---@meta

---@class CornerEnum
---@field TopLeft number
---@field TopRight number
---@field BottomLeft number
---@field BottomRight number
---@field None number
CornerEnum = {}

---@return CornerEnum
function CornerEnum.ctor() end

---@return userdata
function CornerEnum.GetType() end

---@return string
function CornerEnum.ToString() end

---@param obj userdata
---@return boolean
function CornerEnum.Equals(obj) end

---@return number
function CornerEnum.GetHashCode() end


