---@meta

---@class FrameBufferRef
---@field FbAttrs FramebufferAttrs
---@field FboId number
---@field DepthTextureId number
---@field ColorTextureIds number
---@field Width number
---@field Height number
FrameBufferRef = {}

---@return FrameBufferRef
function FrameBufferRef.ctor() end

---@return userdata
function FrameBufferRef.GetType() end

---@return string
function FrameBufferRef.ToString() end

---@param obj userdata
---@return boolean
function FrameBufferRef.Equals(obj) end

---@return number
function FrameBufferRef.GetHashCode() end


