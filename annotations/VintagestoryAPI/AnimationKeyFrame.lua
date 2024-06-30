---@meta

---@class AnimationKeyFrame
---@field Frame number The ID of the keyframe.
---@field Elements table The elements of the keyframe.
AnimationKeyFrame = {}

---@return AnimationKeyFrame
function AnimationKeyFrame.ctor() end

-- Resolves the keyframe animation for which elements are important.
---@param allElements ShapeElement[] A shape element built from JSON data within the model.
function AnimationKeyFrame.Resolve(allElements) end

---@return AnimationKeyFrame
function AnimationKeyFrame.Clone() end

---@return userdata
function AnimationKeyFrame.GetType() end

---@return string
function AnimationKeyFrame.ToString() end

---@param obj userdata
---@return boolean
function AnimationKeyFrame.Equals(obj) end

---@return number
function AnimationKeyFrame.GetHashCode() end


