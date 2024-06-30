---@meta

---@class PickingRayUtil
PickingRayUtil = {}

---@return PickingRayUtil
function PickingRayUtil.ctor() end

---@param game ClientMain
---@return Ray
function PickingRayUtil.GetPickingRayByMouseCoordinates(game) end

---@return userdata
function PickingRayUtil.GetType() end

---@return string
function PickingRayUtil.ToString() end

---@param obj userdata
---@return boolean
function PickingRayUtil.Equals(obj) end

---@return number
function PickingRayUtil.GetHashCode() end


