---@meta

---@class OnCrashHandlerLeave: OnCrashHandler, OnCrashHandler
OnCrashHandlerLeave = {}

---@return OnCrashHandlerLeave
function OnCrashHandlerLeave.ctor() end

---@param game ClientMain
---@return OnCrashHandlerLeave
function OnCrashHandlerLeave.Create(game) end

function OnCrashHandlerLeave.OnCrash() end

---@return userdata
function OnCrashHandlerLeave.GetType() end

---@return string
function OnCrashHandlerLeave.ToString() end

---@param obj userdata
---@return boolean
function OnCrashHandlerLeave.Equals(obj) end

---@return number
function OnCrashHandlerLeave.GetHashCode() end


