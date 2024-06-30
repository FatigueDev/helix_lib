---@meta

---@class ServerLogger: Logger, IDisposable, Logger, ILogger, LoggerBase
---@field TraceLog boolean
---@field EntryAdded LogEntryDelegate
ServerLogger = {}

---@param clearOldFiles boolean
---@return ServerLogger
function ServerLogger.ctor(clearOldFiles) end

---@param logType EnumLogType
---@return string
function ServerLogger.getLogFile(logType) end

---@param logType EnumLogType
---@return boolean
function ServerLogger.printToConsole(logType) end

function ServerLogger.Dispose() end

---@param logType EnumLogType
---@param message string
---@param args userdata
---@return string
function ServerLogger.FormatLogEntry(logType, message, args) end

---@param logFileName string
---@param logType EnumLogType
---@param message string
---@param args userdata
function ServerLogger.LogToFile(logFileName, logType, message, args) end

---@return boolean
function ServerLogger.get_TraceLog() end

---@param value boolean
function ServerLogger.set_TraceLog(value) end

---@param value LogEntryDelegate
function ServerLogger.add_EntryAdded(value) end

---@param value LogEntryDelegate
function ServerLogger.remove_EntryAdded(value) end

function ServerLogger.ClearWatchers() end

---@param logType EnumLogType
---@param format string
---@param args userdata
function ServerLogger.Log(logType, format, args) end

---@param logType EnumLogType
---@param message string
function ServerLogger.Log(logType, message) end

---@param format string
---@param args userdata
function ServerLogger.Chat(format, args) end

---@param message string
function ServerLogger.Chat(message) end

---@param format string
---@param args userdata
function ServerLogger.Event(format, args) end

---@param message string
function ServerLogger.Event(message) end

---@param format string
---@param args userdata
function ServerLogger.StoryEvent(format, args) end

---@param message string
function ServerLogger.StoryEvent(message) end

---@param format string
---@param args userdata
function ServerLogger.Build(format, args) end

---@param message string
function ServerLogger.Build(message) end

---@param format string
---@param args userdata
function ServerLogger.VerboseDebug(format, args) end

---@param message string
function ServerLogger.VerboseDebug(message) end

---@param format string
---@param args userdata
function ServerLogger.Debug(format, args) end

---@param message string
function ServerLogger.Debug(message) end

---@param format string
---@param args userdata
function ServerLogger.Notification(format, args) end

---@param message string
function ServerLogger.Notification(message) end

---@param format string
---@param args userdata
function ServerLogger.Warning(format, args) end

---@param message string
function ServerLogger.Warning(message) end

---@param e Exception
function ServerLogger.Warning(e) end

---@param format string
---@param args userdata
function ServerLogger.Error(format, args) end

---@param message string
function ServerLogger.Error(message) end

---@param e Exception
function ServerLogger.Error(e) end

---@param format string
---@param args userdata
function ServerLogger.Fatal(format, args) end

---@param message string
function ServerLogger.Fatal(message) end

---@param e Exception
function ServerLogger.Fatal(e) end

---@param format string
---@param args userdata
function ServerLogger.Audit(format, args) end

---@param message string
function ServerLogger.Audit(message) end

---@param format string
---@param args userdata
function ServerLogger.Worldgen(format, args) end

---@param e Exception
function ServerLogger.Worldgen(e) end

---@param message string
function ServerLogger.Worldgen(message) end

---@return userdata
function ServerLogger.GetType() end

---@return string
function ServerLogger.ToString() end

---@param obj userdata
---@return boolean
function ServerLogger.Equals(obj) end

---@return number
function ServerLogger.GetHashCode() end


