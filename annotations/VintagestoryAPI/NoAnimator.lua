---@meta

-- A NoAnimator built off of IAnimator
---@class NoAnimator:  IAnimator
---@field Matrices4x3 number The matrices for this No-Animator
---@field ActiveAnimationCount number The active animation count for this no animator.
---@field CalculateMatrices boolean
---@field RunningAnimations RunningAnimation[]
NoAnimator = {}

---@return NoAnimator
function NoAnimator.ctor() end

---@return number
function NoAnimator.get_Matrices4x3() end

---@return number
function NoAnimator.get_ActiveAnimationCount() end

---@return boolean
function NoAnimator.get_CalculateMatrices() end

---@param value boolean
function NoAnimator.set_CalculateMatrices(value) end

---@return RunningAnimation[]
function NoAnimator.get_RunningAnimations() end

---@return string
function NoAnimator.DumpCurrentState() end

---@param code string
---@return RunningAnimation
function NoAnimator.GetAnimationState(code) end

-- Gets the attachment point for this pose.
---@param code string
---@return AttachmentPointAndPose
function NoAnimator.GetAttachmentPointPose(code) end

---@param name string
---@param stringComparison? string
---@return ElementPose # The position of an element.
function NoAnimator.GetPosebyName(name, stringComparison) end

-- The event fired when a specified frame has been hit.
---@param activeAnimationsByAnimCode table
---@param dt number
function NoAnimator.OnFrame(activeAnimationsByAnimCode, dt) end

---@return userdata
function NoAnimator.GetType() end

---@return string
function NoAnimator.ToString() end

---@param obj userdata
---@return boolean
function NoAnimator.Equals(obj) end

---@return number
function NoAnimator.GetHashCode() end


