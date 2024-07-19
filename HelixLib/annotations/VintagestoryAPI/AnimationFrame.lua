---@meta

---@class AnimationFrame
---@field FrameNumber number The frame number.
---@field animTransforms number The transformations for this frame.
---@field transformationMatrices number The transformation matricies for this frame
---@field RootElementTransforms table The transformations for the root element of the frame.
AnimationFrame = {}

---@return AnimationFrame
function AnimationFrame.ctor() end

-- Sets the transform of a particular joint ID.
---@param jointId number
---@param modelTransform number
function AnimationFrame.SetTransform(jointId, modelTransform) end

-- Finalizes the matricies with joints assigned by their ID.
---@param jointsById table
function AnimationFrame.FinalizeMatrices(jointsById) end

---@return userdata
function AnimationFrame.GetType() end

---@return string
function AnimationFrame.ToString() end

---@param obj userdata
---@return boolean
function AnimationFrame.Equals(obj) end

---@return number
function AnimationFrame.GetHashCode() end


