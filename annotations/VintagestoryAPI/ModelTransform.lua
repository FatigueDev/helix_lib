---@meta

-- Used for transformations applied to a block or item model
---@class ModelTransform: ModelTransformNoDefaults, ModelTransformNoDefaults
---@field NoTransform ModelTransform Gets a new model with all values set to default.
---@field Scale number To set uniform Scaling on all Axes
---@field AsMatrix number Converts the transform into a matrix.
---@field Translation Vec3f Offsetting
---@field Rotation Vec3f Rotation in degrees
---@field Origin Vec3f Rotation/Scaling Origin
---@field Rotate boolean For Gui Transform: Whether to slowly spin in gui item preview  For Ground Transform: Whether to apply a random rotation to the dropped item No effect on other transforms
---@field ScaleXYZ Vec3f Scaling per axis
ModelTransform = {}

---@param baseTf ModelTransformNoDefaults
---@param defaults ModelTransform Used for transformations applied to a block or item model
---@return ModelTransform
function ModelTransform.ctor(baseTf, defaults) end
---@return ModelTransform
function ModelTransform.ctor() end

---@return ModelTransform # Used for transformations applied to a block or item model
function ModelTransform.get_NoTransform() end

-- Scale = 1, No Translation, Rotation by -45 deg in Y-Axis
---@return ModelTransform # Used for transformations applied to a block or item model
function ModelTransform.BlockDefaultGui() end

-- Scale = 1, No Translation, Rotation by -45 deg in Y-Axis
---@return ModelTransform # Used for transformations applied to a block or item model
function ModelTransform.BlockDefaultFp() end

-- Scale = 1, No Translation, Rotation by -45 deg in Y-Axis
---@return ModelTransform # Used for transformations applied to a block or item model
function ModelTransform.BlockDefaultTp() end

-- Scale = 1, No Translation, Rotation by -45 deg in Y-Axis, 1.5x scale
---@return ModelTransform # Used for transformations applied to a block or item model
function ModelTransform.BlockDefaultGround() end

-- Scale = 1, No Translation, No Rotation
---@return ModelTransform # Used for transformations applied to a block or item model
function ModelTransform.ItemDefaultGui() end

-- Scale = 1, No Translation, Rotation by 180 deg in X-Axis
---@return ModelTransform # Used for transformations applied to a block or item model
function ModelTransform.ItemDefaultFp() end

-- Scale = 1, No Translation, Rotation by 180 deg in X-Axis
---@return ModelTransform # Used for transformations applied to a block or item model
function ModelTransform.ItemDefaultTp() end

-- Creates a default transform for a model that is now on the ground
---@return ModelTransform # Used for transformations applied to a block or item model
function ModelTransform.ItemDefaultGround() end

-- Makes sure that Translation and Rotation is not null
---@return ModelTransform # Used for transformations applied to a block or item model
function ModelTransform.EnsureDefaultValues() end

---@param rot Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return ModelTransform # Used for transformations applied to a block or item model
function ModelTransform.WithRotation(rot) end

-- Clones this specific transform.
---@return ModelTransform # Used for transformations applied to a block or item model
function ModelTransform.Clone() end

---@param value number
function ModelTransform.set_Scale(value) end

---@return number
function ModelTransform.get_AsMatrix() end

-- Clears the transformation values.
function ModelTransform.Clear() end

---@return userdata
function ModelTransform.GetType() end

---@return string
function ModelTransform.ToString() end

---@param obj userdata
---@return boolean
function ModelTransform.Equals(obj) end

---@return number
function ModelTransform.GetHashCode() end


