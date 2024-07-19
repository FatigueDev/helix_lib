---@meta

-- Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
---@class KeyCombination
---@field KeyCode number The KeyCode (from 1.19.4, the keycodes map to either keys or mouse buttons)
---@field SecondKeyCode Nullable`1 The second key code (if it exists).
---@field Ctrl boolean Ctrl pressed condition.
---@field Alt boolean Alt pressed condition.
---@field Shift boolean Shift pressed condition.
---@field OnKeyUp boolean
---@field MouseStart number The first keycode representing a mouse button
KeyCombination = {}

---@return KeyCombination
function KeyCombination.ctor() end

---@param KeyCode number
---@return boolean
function KeyCombination.IsMouseButton(KeyCode) end

-- Converts this key combination into a string.
---@return string
function KeyCombination.ToString() end

-- Clones the current key combination.
---@return KeyCombination # Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
function KeyCombination.Clone() end

---@return string
function KeyCombination.PrimaryAsString() end

---@return string
function KeyCombination.SecondaryAsString() end

---@return userdata
function KeyCombination.GetType() end

---@param obj userdata
---@return boolean
function KeyCombination.Equals(obj) end

---@return number
function KeyCombination.GetHashCode() end


