---@meta

---@class ModelSphereUtil
ModelSphereUtil = {}

---@return ModelSphereUtil
function ModelSphereUtil.ctor() end

---@param radius number
---@param height number
---@param segments number
---@param rings number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ModelSphereUtil.GetSphereModelData(radius, height, segments, rings) end

---@param radius number
---@param height number
---@param segments number
---@param rings number
---@return number
function ModelSphereUtil.CalculateElements(radius, height, segments, rings) end

---@return userdata
function ModelSphereUtil.GetType() end

---@return string
function ModelSphereUtil.ToString() end

---@param obj userdata
---@return boolean
function ModelSphereUtil.Equals(obj) end

---@return number
function ModelSphereUtil.GetHashCode() end


