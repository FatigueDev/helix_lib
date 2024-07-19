---@meta

---@class WindowsConsole
WindowsConsole = {}

---@return WindowsConsole
function WindowsConsole.ctor() end

function WindowsConsole.Attach() end

---@return userdata
function WindowsConsole.GetType() end

---@return string
function WindowsConsole.ToString() end

---@param obj userdata
---@return boolean
function WindowsConsole.Equals(obj) end

---@return number
function WindowsConsole.GetHashCode() end


