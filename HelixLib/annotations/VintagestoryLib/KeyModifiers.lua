---@meta

---@class KeyModifiers
---@field CtrlPressed boolean
---@field AltPressed boolean
---@field ShiftPressed boolean
KeyModifiers = {}

---@return KeyModifiers
function KeyModifiers.ctor() end

---@return userdata
function KeyModifiers.GetType() end

---@return string
function KeyModifiers.ToString() end

---@param obj userdata
---@return boolean
function KeyModifiers.Equals(obj) end

---@return number
function KeyModifiers.GetHashCode() end


