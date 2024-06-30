---@meta

---@class FramebufferAttrsAttachment
---@field Texture RawTexture
---@field AttachmentType EnumFramebufferAttachment
FramebufferAttrsAttachment = {}

---@return FramebufferAttrsAttachment
function FramebufferAttrsAttachment.ctor() end

---@return userdata
function FramebufferAttrsAttachment.GetType() end

---@return string
function FramebufferAttrsAttachment.ToString() end

---@param obj userdata
---@return boolean
function FramebufferAttrsAttachment.Equals(obj) end

---@return number
function FramebufferAttrsAttachment.GetHashCode() end


