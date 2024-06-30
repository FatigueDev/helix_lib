---@meta

---@class AttachmentPointAndPose
---@field AnimModelMatrix number The current model matrix for this attachment point for this entity for the current animation frame.
---@field CachedPose ElementPose The pose shared across all entities using the same shape. Don't use. It's used internally for calculating the animation state. Once calculated, the value is copied over to AnimModelMatrix
---@field AttachPoint AttachmentPoint The attachment point
AttachmentPointAndPose = {}

---@return AttachmentPointAndPose
function AttachmentPointAndPose.ctor() end

---@return userdata
function AttachmentPointAndPose.GetType() end

---@return string
function AttachmentPointAndPose.ToString() end

---@param obj userdata
---@return boolean
function AttachmentPointAndPose.Equals(obj) end

---@return number
function AttachmentPointAndPose.GetHashCode() end


