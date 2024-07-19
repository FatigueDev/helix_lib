---@meta

-- Syncs every frame with entity.ActiveAnimationsByAnimCode, starts, progresses and stops animations when necessary 
---@class AnimatorBase:  IAnimator
---@field CalculateMatrices boolean
---@field Matrices4x3 number
---@field ActiveAnimationCount number
---@field RunningAnimations RunningAnimation[]
---@field anims RunningAnimation[]
---@field TransformationMatrices4x3 number We skip the last row - https://stackoverflow.com/questions/32565827/whats-the-purpose-of-magic-4-of-last-row-in-matrix-4x4-for-3d-graphics 
---@field TransformationMatricesDefaultPose4x3 number The entities default pose. Meaning for most elements this is the identity matrix, with exception of individually controlled elements such as the head.
---@field AttachmentPointByCode table
---@field CurAnims RunningAnimation[]
---@field identMat4x3 number
AnimatorBase = {}

---@param WalkSpeedSupplier WalkSpeedSupplierDelegate
---@param Animations Animation[] Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
---@param onAnimationStoppedListener? function
---@return AnimatorBase
function AnimatorBase.ctor(WalkSpeedSupplier, Animations, onAnimationStoppedListener) end

---@return boolean
function AnimatorBase.get_CalculateMatrices() end

---@param value boolean
function AnimatorBase.set_CalculateMatrices(value) end

---@return number
function AnimatorBase.get_Matrices4x3() end

---@return number
function AnimatorBase.get_ActiveAnimationCount() end

---@return RunningAnimation[]
function AnimatorBase.get_RunningAnimations() end

---@param code string
---@return RunningAnimation
function AnimatorBase.GetAnimationState(code) end

---@param activeAnimationsByAnimCode table
---@param dt number
function AnimatorBase.OnFrame(activeAnimationsByAnimCode, dt) end

---@return string
function AnimatorBase.DumpCurrentState() end

---@param code string
---@return AttachmentPointAndPose
function AnimatorBase.GetAttachmentPointPose(code) end

---@param name string
---@param stringComparison? string
---@return ElementPose # The position of an element.
function AnimatorBase.GetPosebyName(name, stringComparison) end

---@return userdata
function AnimatorBase.GetType() end

---@return string
function AnimatorBase.ToString() end

---@param obj userdata
---@return boolean
function AnimatorBase.Equals(obj) end

---@return number
function AnimatorBase.GetHashCode() end


