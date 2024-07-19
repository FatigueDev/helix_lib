---@meta

---@class TouchEventHandler
TouchEventHandler = {}


---@param e TouchEventArgs
function TouchEventHandler.OnTouchStart(e) end

---@param e TouchEventArgs
function TouchEventHandler.OnTouchMove(e) end

---@param e TouchEventArgs
function TouchEventHandler.OnTouchEnd(e) end

---@return userdata
function TouchEventHandler.GetType() end

---@return string
function TouchEventHandler.ToString() end

---@param obj userdata
---@return boolean
function TouchEventHandler.Equals(obj) end

---@return number
function TouchEventHandler.GetHashCode() end


