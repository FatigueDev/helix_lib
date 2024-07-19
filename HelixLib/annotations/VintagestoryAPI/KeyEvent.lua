---@meta

---@class KeyEvent
---@field KeyChar string the character for the given key.
---@field KeyCode number The keycode value.  
---@field KeyCode2 number? If a player taps in quick succession, this is the second key
---@field Handled boolean Is this keypress/key combination handled?
---@field CtrlPressed boolean Is control/Ctrl being held down?
---@field CommandPressed boolean Is mac os command key being held down?
---@field ShiftPressed boolean Is Shift being held down?
---@field AltPressed boolean Is Alt being held down?
KeyEvent = {}

---@return KeyEvent
function KeyEvent.ctor() end

---@return string
function KeyEvent.get_KeyChar() end

---@param value string
function KeyEvent.set_KeyChar(value) end

---@return number
function KeyEvent.get_KeyCode() end

---@param value number
function KeyEvent.set_KeyCode(value) end

---@return number?
function KeyEvent.get_KeyCode2() end

---@param value number?
function KeyEvent.set_KeyCode2(value) end

---@return boolean
function KeyEvent.get_Handled() end

---@param value boolean
function KeyEvent.set_Handled(value) end

---@return boolean
function KeyEvent.get_CtrlPressed() end

---@param value boolean
function KeyEvent.set_CtrlPressed(value) end

---@return boolean
function KeyEvent.get_CommandPressed() end

---@param value boolean
function KeyEvent.set_CommandPressed(value) end

---@return boolean
function KeyEvent.get_ShiftPressed() end

---@param value boolean
function KeyEvent.set_ShiftPressed(value) end

---@return boolean
function KeyEvent.get_AltPressed() end

---@param value boolean
function KeyEvent.set_AltPressed(value) end

---@return userdata
function KeyEvent.GetType() end

---@return string
function KeyEvent.ToString() end

---@param obj userdata
---@return boolean
function KeyEvent.Equals(obj) end

---@return number
function KeyEvent.GetHashCode() end


