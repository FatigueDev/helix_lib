---@meta

---@class ShapeElementWeights
---@field Weight number
---@field BlendMode EnumAnimationBlendMode
---@field ChildElements ShapeElementWeights[]
ShapeElementWeights = {}

---@return ShapeElementWeights
function ShapeElementWeights.ctor() end

---@return userdata
function ShapeElementWeights.GetType() end

---@return string
function ShapeElementWeights.ToString() end

---@param obj userdata
---@return boolean
function ShapeElementWeights.Equals(obj) end

---@return number
function ShapeElementWeights.GetHashCode() end


