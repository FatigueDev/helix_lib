---@meta

---@class TouchEventArgs
TouchEventArgs = {}

---@return TouchEventArgs
function TouchEventArgs.ctor() end

---@return number
function TouchEventArgs.GetX() end

---@param value number
function TouchEventArgs.SetX(value) end

---@return number
function TouchEventArgs.GetY() end

---@param value number
function TouchEventArgs.SetY(value) end

---@return number
function TouchEventArgs.GetId() end

---@param value number
function TouchEventArgs.SetId(value) end

---@return boolean
function TouchEventArgs.GetHandled() end

---@param value boolean
function TouchEventArgs.SetHandled(value) end

---@return userdata
function TouchEventArgs.GetType() end

---@return string
function TouchEventArgs.ToString() end

---@param obj userdata
---@return boolean
function TouchEventArgs.Equals(obj) end

---@return number
function TouchEventArgs.GetHashCode() end


