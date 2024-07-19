---@meta

---@class MouseButtonState
---@field Left boolean
---@field Middle boolean
---@field Right boolean
MouseButtonState = {}

---@return MouseButtonState
function MouseButtonState.ctor() end

function MouseButtonState.Clear() end

---@return userdata
function MouseButtonState.GetType() end

---@return string
function MouseButtonState.ToString() end

---@param obj userdata
---@return boolean
function MouseButtonState.Equals(obj) end

---@return number
function MouseButtonState.GetHashCode() end


