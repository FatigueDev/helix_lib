---@meta

---@class AnimationJoint
---@field JointId number The ID of the joint.
---@field Element ShapeElement The attached ShapeElement.
AnimationJoint = {}

---@return AnimationJoint
function AnimationJoint.ctor() end

-- Takes the transform and inverses it.
---@param frameModelTransform number
---@return number
function AnimationJoint.ApplyInverseTransform(frameModelTransform) end

---@return userdata
function AnimationJoint.GetType() end

---@return string
function AnimationJoint.ToString() end

---@param obj userdata
---@return boolean
function AnimationJoint.Equals(obj) end

---@return number
function AnimationJoint.GetHashCode() end


