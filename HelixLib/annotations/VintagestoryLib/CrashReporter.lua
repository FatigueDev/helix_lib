---@meta

---@class CrashReporter
---@field LoadedMods table
---@field OnCrash function
---@field isCrashing boolean
CrashReporter = {}

---@param side EnumAppSide
---@return CrashReporter
function CrashReporter.ctor(side) end

---@return table
function CrashReporter.get_LoadedMods() end

---@param value table
function CrashReporter.set_LoadedMods(value) end

---@param logger Logger
function CrashReporter.SetLogger(logger) end

---@param blnIsConsole boolean
function CrashReporter.EnableGlobalExceptionHandling(blnIsConsole) end

---@param start ThreadStart
function CrashReporter.Start(start) end

---@param exCrash Exception
function CrashReporter.Crash(exCrash) end

---@return userdata
function CrashReporter.GetType() end

---@return string
function CrashReporter.ToString() end

---@param obj userdata
---@return boolean
function CrashReporter.Equals(obj) end

---@return number
function CrashReporter.GetHashCode() end


