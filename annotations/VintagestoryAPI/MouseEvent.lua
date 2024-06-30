---@meta

-- This contains the data for what the mouse is currently doing.
---@class MouseEvent
---@field X number Current X position of the mouse.
---@field Y number Current Y position of the mouse.
---@field DeltaX number The X movement of the mouse.
---@field DeltaY number The Y movement of the mouse.
---@field Button EnumMouseButton Gets the current mouse button pressed.
---@field Modifiers number
---@field Handled boolean Am I handled?
MouseEvent = {}

---@param x number
---@param y number
---@param deltaX number
---@param deltaY number
---@param button EnumMouseButton
---@param modifiers number
---@return MouseEvent
function MouseEvent.ctor(x, y, deltaX, deltaY, button, modifiers) end
---@param x number
---@param y number
---@param deltaX number
---@param deltaY number
---@param button EnumMouseButton
---@return MouseEvent
function MouseEvent.ctor(x, y, deltaX, deltaY, button) end
---@param x number
---@param y number
---@param deltaX number
---@param deltaY number
---@return MouseEvent
function MouseEvent.ctor(x, y, deltaX, deltaY) end
---@param x number
---@param y number
---@param button EnumMouseButton
---@param modifiers number
---@return MouseEvent
function MouseEvent.ctor(x, y, button, modifiers) end
---@param x number
---@param y number
---@param button EnumMouseButton
---@return MouseEvent
function MouseEvent.ctor(x, y, button) end
---@param x number
---@param y number
---@return MouseEvent
function MouseEvent.ctor(x, y) end

---@return number
function MouseEvent.get_X() end

---@return number
function MouseEvent.get_Y() end

---@return number
function MouseEvent.get_DeltaX() end

---@return number
function MouseEvent.get_DeltaY() end

---@return EnumMouseButton
function MouseEvent.get_Button() end

---@return number
function MouseEvent.get_Modifiers() end

---@return boolean
function MouseEvent.get_Handled() end

---@param value boolean
function MouseEvent.set_Handled(value) end

---@return userdata
function MouseEvent.GetType() end

---@return string
function MouseEvent.ToString() end

---@param obj userdata
---@return boolean
function MouseEvent.Equals(obj) end

---@return number
function MouseEvent.GetHashCode() end


