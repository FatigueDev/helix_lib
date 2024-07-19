---@meta

---@class ClientLogger: Logger, IDisposable, Logger, ILogger, LoggerBase
---@field TraceLog boolean
---@field EntryAdded LogEntryDelegate
ClientLogger = {}

---@return ClientLogger
function ClientLogger.ctor() end

---@param logType EnumLogType
---@return string
function ClientLogger.getLogFile(logType) end

---@param logType EnumLogType
---@return boolean
function ClientLogger.printToConsole(logType) end

function ClientLogger.Dispose() end

---@param logType EnumLogType
---@param message string
---@param args userdata
---@return string
function ClientLogger.FormatLogEntry(logType, message, args) end

---@param logFileName string
---@param logType EnumLogType
---@param message string
---@param args userdata
function ClientLogger.LogToFile(logFileName, logType, message, args) end

---@return boolean
function ClientLogger.get_TraceLog() end

---@param value boolean
function ClientLogger.set_TraceLog(value) end

---@param value LogEntryDelegate
function ClientLogger.add_EntryAdded(value) end

---@param value LogEntryDelegate
function ClientLogger.remove_EntryAdded(value) end

function ClientLogger.ClearWatchers() end

---@param logType EnumLogType
---@param format string
---@param args userdata
function ClientLogger.Log(logType, format, args) end

---@param logType EnumLogType
---@param message string
function ClientLogger.Log(logType, message) end

---@param format string
---@param args userdata
function ClientLogger.Chat(format, args) end

---@param message string
function ClientLogger.Chat(message) end

---@param format string
---@param args userdata
function ClientLogger.Event(format, args) end

---@param message string
function ClientLogger.Event(message) end

---@param format string
---@param args userdata
function ClientLogger.StoryEvent(format, args) end

---@param message string
function ClientLogger.StoryEvent(message) end

---@param format string
---@param args userdata
function ClientLogger.Build(format, args) end

---@param message string
function ClientLogger.Build(message) end

---@param format string
---@param args userdata
function ClientLogger.VerboseDebug(format, args) end

---@param message string
function ClientLogger.VerboseDebug(message) end

---@param format string
---@param args userdata
function ClientLogger.Debug(format, args) end

---@param message string
function ClientLogger.Debug(message) end

---@param format string
---@param args userdata
function ClientLogger.Notification(format, args) end

---@param message string
function ClientLogger.Notification(message) end

---@param format string
---@param args userdata
function ClientLogger.Warning(format, args) end

---@param message string
function ClientLogger.Warning(message) end

---@param e Exception
function ClientLogger.Warning(e) end

---@param format string
---@param args userdata
function ClientLogger.Error(format, args) end

---@param message string
function ClientLogger.Error(message) end

---@param e Exception
function ClientLogger.Error(e) end

---@param format string
---@param args userdata
function ClientLogger.Fatal(format, args) end

---@param message string
function ClientLogger.Fatal(message) end

---@param e Exception
function ClientLogger.Fatal(e) end

---@param format string
---@param args userdata
function ClientLogger.Audit(format, args) end

---@param message string
function ClientLogger.Audit(message) end

---@param format string
---@param args userdata
function ClientLogger.Worldgen(format, args) end

---@param e Exception
function ClientLogger.Worldgen(e) end

---@param message string
function ClientLogger.Worldgen(message) end

---@return userdata
function ClientLogger.GetType() end

---@return string
function ClientLogger.ToString() end

---@param obj userdata
---@return boolean
function ClientLogger.Equals(obj) end

---@return number
function ClientLogger.GetHashCode() end


