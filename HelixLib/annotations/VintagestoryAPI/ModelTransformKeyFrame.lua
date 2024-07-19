---@meta

-- A keyframe for model transformation.  
---@class ModelTransformKeyFrame
---@field FrameNumber number The frame number for the keyframe
---@field Transform ModelTransform The new transform set for the keyframe.
ModelTransformKeyFrame = {}

---@return ModelTransformKeyFrame
function ModelTransformKeyFrame.ctor() end

---@return userdata
function ModelTransformKeyFrame.GetType() end

---@return string
function ModelTransformKeyFrame.ToString() end

---@param obj userdata
---@return boolean
function ModelTransformKeyFrame.Equals(obj) end

---@return number
function ModelTransformKeyFrame.GetHashCode() end


