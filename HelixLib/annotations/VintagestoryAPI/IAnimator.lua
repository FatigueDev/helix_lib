---@meta

---@class IAnimator
---@field Matrices4x3 number The 30 pose transformation matrices that go to the shader
---@field ActiveAnimationCount number Amount of currently active animations
---@field RunningAnimations RunningAnimation[] Holds data over all animations. This list always contains all animations of the creature. You have to check yourself which of them are active
---@field CalculateMatrices boolean Whether or not to calculate the animation matrices, required for GetAttachmentPointPose() to deliver correct values. Default on on the client, server side only on when the creature is dead
IAnimator = {}


---@return number
function IAnimator.get_Matrices4x3() end

---@return number
function IAnimator.get_ActiveAnimationCount() end

---@return RunningAnimation[]
function IAnimator.get_RunningAnimations() end

---@param code string
---@return RunningAnimation
function IAnimator.GetAnimationState(code) end

---@return boolean
function IAnimator.get_CalculateMatrices() end

---@param value boolean
function IAnimator.set_CalculateMatrices(value) end

-- Gets the attachment point pose.
---@param code string
---@return AttachmentPointAndPose
function IAnimator.GetAttachmentPointPose(code) end

---@param name string
---@param stringComparison? string
---@return ElementPose # The position of an element.
function IAnimator.GetPosebyName(name, stringComparison) end

-- The event fired on each frame.
---@param activeAnimationsByAnimCode table
---@param dt number
function IAnimator.OnFrame(activeAnimationsByAnimCode, dt) end

---@return string
function IAnimator.DumpCurrentState() end


