---@meta

---@class DelayedCallback
---@field Handler function
---@field CallAtEllapsedMilliseconds number
---@field ListenerId number
DelayedCallback = {}

---@return DelayedCallback
function DelayedCallback.ctor() end

---@return userdata
function DelayedCallback.GetType() end

---@return string
function DelayedCallback.ToString() end

---@param obj userdata
---@return boolean
function DelayedCallback.Equals(obj) end

---@return number
function DelayedCallback.GetHashCode() end


