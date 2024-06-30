---@meta

---@class FramebufferAttrs
---@field Name string
---@field Attachments FramebufferAttrsAttachment[]
---@field Width number
---@field Height number
FramebufferAttrs = {}

---@param name string
---@param width number
---@param height number
---@return FramebufferAttrs
function FramebufferAttrs.ctor(name, width, height) end

---@return userdata
function FramebufferAttrs.GetType() end

---@return string
function FramebufferAttrs.ToString() end

---@param obj userdata
---@return boolean
function FramebufferAttrs.Equals(obj) end

---@return number
function FramebufferAttrs.GetHashCode() end


