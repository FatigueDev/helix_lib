---@meta

---@class CameraPoint
CameraPoint = {}

---@return CameraPoint
function CameraPoint.ctor() end

---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return CameraPoint
function CameraPoint.FromEntityPos(pos) end

---@return userdata
function CameraPoint.GetType() end

---@return string
function CameraPoint.ToString() end

---@param obj userdata
---@return boolean
function CameraPoint.Equals(obj) end

---@return number
function CameraPoint.GetHashCode() end


