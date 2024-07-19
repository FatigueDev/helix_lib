---@meta

-- The event arguments for the mouse.
---@class MouseWheelEventArgs
---@field IsHandled boolean Is the current event being handled?
---@field delta number The rough change in time since last called.
---@field deltaPrecise number The precise change in time since last called.
---@field value number The rough change in value.
---@field valuePrecise number The precise change in value.
MouseWheelEventArgs = {}

---@return MouseWheelEventArgs
function MouseWheelEventArgs.ctor() end

---@return boolean
function MouseWheelEventArgs.get_IsHandled() end

-- Changes or sets the current handled state.
---@param value? boolean
function MouseWheelEventArgs.SetHandled(value) end

---@return userdata
function MouseWheelEventArgs.GetType() end

---@return string
function MouseWheelEventArgs.ToString() end

---@param obj userdata
---@return boolean
function MouseWheelEventArgs.Equals(obj) end

---@return number
function MouseWheelEventArgs.GetHashCode() end


