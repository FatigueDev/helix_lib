---@meta

---@class ModelTransformNoDefaults
---@field Scale number To set uniform Scaling on all Axes
---@field AsMatrix number Converts the transform into a matrix.
---@field Translation Vec3f Offsetting
---@field Rotation Vec3f Rotation in degrees
---@field Origin Vec3f Rotation/Scaling Origin
---@field Rotate boolean For Gui Transform: Whether to slowly spin in gui item preview  For Ground Transform: Whether to apply a random rotation to the dropped item No effect on other transforms
---@field ScaleXYZ Vec3f Scaling per axis
ModelTransformNoDefaults = {}

---@return ModelTransformNoDefaults
function ModelTransformNoDefaults.ctor() end

---@param value number
function ModelTransformNoDefaults.set_Scale(value) end

---@return number
function ModelTransformNoDefaults.get_AsMatrix() end

-- Clears the transformation values.
function ModelTransformNoDefaults.Clear() end

---@return userdata
function ModelTransformNoDefaults.GetType() end

---@return string
function ModelTransformNoDefaults.ToString() end

---@param obj userdata
---@return boolean
function ModelTransformNoDefaults.Equals(obj) end

---@return number
function ModelTransformNoDefaults.GetHashCode() end


