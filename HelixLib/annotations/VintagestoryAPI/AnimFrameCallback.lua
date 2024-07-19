---@meta

---@class AnimFrameCallback
---@field Frame number
---@field Animation string
---@field Callback function
AnimFrameCallback = {}

---@return AnimFrameCallback
function AnimFrameCallback.ctor() end

---@return userdata
function AnimFrameCallback.GetType() end

---@return string
function AnimFrameCallback.ToString() end

---@param obj userdata
---@return boolean
function AnimFrameCallback.Equals(obj) end

---@return number
function AnimFrameCallback.GetHashCode() end


