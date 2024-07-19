---@meta

-- Base implementation for ILogger which implements all methods besides a new abstract method LogImpl.
---@class LoggerBase:  ILogger
---@field TraceLog boolean
---@field EntryAdded LogEntryDelegate
---@field SourcePath string
LoggerBase = {}


---@return boolean
function LoggerBase.get_TraceLog() end

---@param value boolean
function LoggerBase.set_TraceLog(value) end

---@param value LogEntryDelegate
function LoggerBase.add_EntryAdded(value) end

---@param value LogEntryDelegate
function LoggerBase.remove_EntryAdded(value) end

function LoggerBase.ClearWatchers() end

---@param logType EnumLogType
---@param format string
---@param args userdata
function LoggerBase.Log(logType, format, args) end

---@param logType EnumLogType
---@param message string
function LoggerBase.Log(logType, message) end

---@param format string
---@param args userdata
function LoggerBase.Chat(format, args) end

---@param message string
function LoggerBase.Chat(message) end

---@param format string
---@param args userdata
function LoggerBase.Event(format, args) end

---@param message string
function LoggerBase.Event(message) end

---@param format string
---@param args userdata
function LoggerBase.StoryEvent(format, args) end

---@param message string
function LoggerBase.StoryEvent(message) end

---@param format string
---@param args userdata
function LoggerBase.Build(format, args) end

---@param message string
function LoggerBase.Build(message) end

---@param format string
---@param args userdata
function LoggerBase.VerboseDebug(format, args) end

---@param message string
function LoggerBase.VerboseDebug(message) end

---@param format string
---@param args userdata
function LoggerBase.Debug(format, args) end

---@param message string
function LoggerBase.Debug(message) end

---@param format string
---@param args userdata
function LoggerBase.Notification(format, args) end

---@param message string
function LoggerBase.Notification(message) end

---@param format string
---@param args userdata
function LoggerBase.Warning(format, args) end

---@param message string
function LoggerBase.Warning(message) end

---@param e Exception
function LoggerBase.Warning(e) end

---@param format string
---@param args userdata
function LoggerBase.Error(format, args) end

---@param message string
function LoggerBase.Error(message) end

---@param e Exception
function LoggerBase.Error(e) end

-- Remove the full path from the stacktrace of the machine that compiled the code
---@param stackTrace string
---@return string
function LoggerBase.CleanStackTrace(stackTrace) end

---@param format string
---@param args userdata
function LoggerBase.Fatal(format, args) end

---@param message string
function LoggerBase.Fatal(message) end

---@param e Exception
function LoggerBase.Fatal(e) end

---@param format string
---@param args userdata
function LoggerBase.Audit(format, args) end

---@param message string
function LoggerBase.Audit(message) end

---@param format string
---@param args userdata
function LoggerBase.Worldgen(format, args) end

---@param e Exception
function LoggerBase.Worldgen(e) end

---@param message string
function LoggerBase.Worldgen(message) end

---@return userdata
function LoggerBase.GetType() end

---@return string
function LoggerBase.ToString() end

---@param obj userdata
---@return boolean
function LoggerBase.Equals(obj) end

---@return number
function LoggerBase.GetHashCode() end


