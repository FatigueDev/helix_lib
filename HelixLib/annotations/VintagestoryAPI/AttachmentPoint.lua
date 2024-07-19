---@meta

-- This is a spot on the shape that connects to another shape.
---@class AttachmentPoint
---@field ParentElement ShapeElement The parent element of this attachment point.
---@field Code string The json code of this attachment point.
---@field PosX number The X position of the attachment point.
---@field PosY number The Y position of the attachment point.
---@field PosZ number The Z position of the attachment point.
---@field RotationX number The forward vertical rotation of the attachment point.
---@field RotationY number The forward horizontal rotation of the attachment point
---@field RotationZ number the left/right tilt of the attachment point
AttachmentPoint = {}

---@return AttachmentPoint
function AttachmentPoint.ctor() end

---@return userdata
function AttachmentPoint.GetType() end

---@return string
function AttachmentPoint.ToString() end

---@param obj userdata
---@return boolean
function AttachmentPoint.Equals(obj) end

---@return number
function AttachmentPoint.GetHashCode() end


