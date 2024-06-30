---@meta

---@class NullLogger: Logger, IDisposable, Logger, ILogger, LoggerBase
---@field TraceLog boolean
---@field EntryAdded LogEntryDelegate
NullLogger = {}

---@return NullLogger
function NullLogger.ctor() end

---@param logType EnumLogType
---@return string
function NullLogger.getLogFile(logType) end

---@param logType EnumLogType
---@return boolean
function NullLogger.printToConsole(logType) end

function NullLogger.Dispose() end

---@param logType EnumLogType
---@param message string
---@param args userdata
---@return string
function NullLogger.FormatLogEntry(logType, message, args) end

---@param logFileName string
---@param logType EnumLogType
---@param message string
---@param args userdata
function NullLogger.LogToFile(logFileName, logType, message, args) end

---@return boolean
function NullLogger.get_TraceLog() end

---@param value boolean
function NullLogger.set_TraceLog(value) end

---@param value LogEntryDelegate
function NullLogger.add_EntryAdded(value) end

---@param value LogEntryDelegate
function NullLogger.remove_EntryAdded(value) end

function NullLogger.ClearWatchers() end

---@param logType EnumLogType
---@param format string
---@param args userdata
function NullLogger.Log(logType, format, args) end

---@param logType EnumLogType
---@param message string
function NullLogger.Log(logType, message) end

---@param format string
---@param args userdata
function NullLogger.Chat(format, args) end

---@param message string
function NullLogger.Chat(message) end

---@param format string
---@param args userdata
function NullLogger.Event(format, args) end

---@param message string
function NullLogger.Event(message) end

---@param format string
---@param args userdata
function NullLogger.StoryEvent(format, args) end

---@param message string
function NullLogger.StoryEvent(message) end

---@param format string
---@param args userdata
function NullLogger.Build(format, args) end

---@param message string
function NullLogger.Build(message) end

---@param format string
---@param args userdata
function NullLogger.VerboseDebug(format, args) end

---@param message string
function NullLogger.VerboseDebug(message) end

---@param format string
---@param args userdata
function NullLogger.Debug(format, args) end

---@param message string
function NullLogger.Debug(message) end

---@param format string
---@param args userdata
function NullLogger.Notification(format, args) end

---@param message string
function NullLogger.Notification(message) end

---@param format string
---@param args userdata
function NullLogger.Warning(format, args) end

---@param message string
function NullLogger.Warning(message) end

---@param e Exception
function NullLogger.Warning(e) end

---@param format string
---@param args userdata
function NullLogger.Error(format, args) end

---@param message string
function NullLogger.Error(message) end

---@param e Exception
function NullLogger.Error(e) end

---@param format string
---@param args userdata
function NullLogger.Fatal(format, args) end

---@param message string
function NullLogger.Fatal(message) end

---@param e Exception
function NullLogger.Fatal(e) end

---@param format string
---@param args userdata
function NullLogger.Audit(format, args) end

---@param message string
function NullLogger.Audit(message) end

---@param format string
---@param args userdata
function NullLogger.Worldgen(format, args) end

---@param e Exception
function NullLogger.Worldgen(e) end

---@param message string
function NullLogger.Worldgen(message) end

---@return userdata
function NullLogger.GetType() end

---@return string
function NullLogger.ToString() end

---@param obj userdata
---@return boolean
function NullLogger.Equals(obj) end

---@return number
function NullLogger.GetHashCode() end


