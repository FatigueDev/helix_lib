---@meta

---@class TransformConfig
---@field AttributeName string
---@field Title string
TransformConfig = {}

---@return TransformConfig
function TransformConfig.ctor() end

---@return userdata
function TransformConfig.GetType() end

---@return string
function TransformConfig.ToString() end

---@param obj userdata
---@return boolean
function TransformConfig.Equals(obj) end

---@return number
function TransformConfig.GetHashCode() end


