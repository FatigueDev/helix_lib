---@meta

---@class OnCrashHandler
OnCrashHandler = {}

---@return OnCrashHandler
function OnCrashHandler.ctor() end

function OnCrashHandler.OnCrash() end

---@return userdata
function OnCrashHandler.GetType() end

---@return string
function OnCrashHandler.ToString() end

---@param obj userdata
---@return boolean
function OnCrashHandler.Equals(obj) end

---@return number
function OnCrashHandler.GetHashCode() end


