---@meta

---@class VectorTool
VectorTool = {}

---@return VectorTool
function VectorTool.ctor() end

---@param dx number
---@param dy number
---@param dz number
---@param orientationx number
---@param orientationy number
---@param output Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function VectorTool.ToVectorInFixedSystem(dx, dy, dz, orientationx, orientationy, output) end

---@return userdata
function VectorTool.GetType() end

---@return string
function VectorTool.ToString() end

---@param obj userdata
---@return boolean
function VectorTool.Equals(obj) end

---@return number
function VectorTool.GetHashCode() end


