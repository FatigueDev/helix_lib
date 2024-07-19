---@meta

---@class HotkeyCapturer
---@field WasCancelled boolean
---@field CapturedKeyComb KeyCombination
HotkeyCapturer = {}

---@return HotkeyCapturer
function HotkeyCapturer.ctor() end

---@return boolean
function HotkeyCapturer.BeginCapture() end

---@return boolean
function HotkeyCapturer.IsCapturing() end

---@param wasCancelled? boolean
function HotkeyCapturer.EndCapture(wasCancelled) end

---@param eventArgs KeyEvent
---@return boolean
function HotkeyCapturer.OnKeyDown(eventArgs) end

---@param eventArgs KeyEvent
---@param OnCaptureEnded function
---@return boolean
function HotkeyCapturer.OnKeyUp(eventArgs, OnCaptureEnded) end

---@param eventArgs MouseEvent This contains the data for what the mouse is currently doing.
---@return boolean
function HotkeyCapturer.OnMouseDown(eventArgs) end

---@param eventArgs MouseEvent This contains the data for what the mouse is currently doing.
---@param OnCaptureEnded function
---@return boolean
function HotkeyCapturer.OnMouseUp(eventArgs, OnCaptureEnded) end

---@return userdata
function HotkeyCapturer.GetType() end

---@return string
function HotkeyCapturer.ToString() end

---@param obj userdata
---@return boolean
function HotkeyCapturer.Equals(obj) end

---@return number
function HotkeyCapturer.GetHashCode() end


