---@meta

---@class Logger: LoggerBase, IDisposable, ILogger, LoggerBase
---@field TraceLog boolean
---@field EntryAdded LogEntryDelegate
Logger = {}

---@param program string
---@param clearOldFiles boolean
---@return Logger
function Logger.ctor(program, clearOldFiles) end

function Logger.Dispose() end

---@param logType EnumLogType
---@return string
function Logger.getLogFile(logType) end

---@param logType EnumLogType
---@return boolean
function Logger.printToConsole(logType) end

---@param logType EnumLogType
---@param message string
---@param args userdata
---@return string
function Logger.FormatLogEntry(logType, message, args) end

---@param logFileName string
---@param logType EnumLogType
---@param message string
---@param args userdata
function Logger.LogToFile(logFileName, logType, message, args) end

---@return boolean
function Logger.get_TraceLog() end

---@param value boolean
function Logger.set_TraceLog(value) end

---@param value LogEntryDelegate
function Logger.add_EntryAdded(value) end

---@param value LogEntryDelegate
function Logger.remove_EntryAdded(value) end

function Logger.ClearWatchers() end

---@param logType EnumLogType
---@param format string
---@param args userdata
function Logger.Log(logType, format, args) end

---@param logType EnumLogType
---@param message string
function Logger.Log(logType, message) end

---@param format string
---@param args userdata
function Logger.Chat(format, args) end

---@param message string
function Logger.Chat(message) end

---@param format string
---@param args userdata
function Logger.Event(format, args) end

---@param message string
function Logger.Event(message) end

---@param format string
---@param args userdata
function Logger.StoryEvent(format, args) end

---@param message string
function Logger.StoryEvent(message) end

---@param format string
---@param args userdata
function Logger.Build(format, args) end

---@param message string
function Logger.Build(message) end

---@param format string
---@param args userdata
function Logger.VerboseDebug(format, args) end

---@param message string
function Logger.VerboseDebug(message) end

---@param format string
---@param args userdata
function Logger.Debug(format, args) end

---@param message string
function Logger.Debug(message) end

---@param format string
---@param args userdata
function Logger.Notification(format, args) end

---@param message string
function Logger.Notification(message) end

---@param format string
---@param args userdata
function Logger.Warning(format, args) end

---@param message string
function Logger.Warning(message) end

---@param e Exception
function Logger.Warning(e) end

---@param format string
---@param args userdata
function Logger.Error(format, args) end

---@param message string
function Logger.Error(message) end

---@param e Exception
function Logger.Error(e) end

---@param format string
---@param args userdata
function Logger.Fatal(format, args) end

---@param message string
function Logger.Fatal(message) end

---@param e Exception
function Logger.Fatal(e) end

---@param format string
---@param args userdata
function Logger.Audit(format, args) end

---@param message string
function Logger.Audit(message) end

---@param format string
---@param args userdata
function Logger.Worldgen(format, args) end

---@param e Exception
function Logger.Worldgen(e) end

---@param message string
function Logger.Worldgen(message) end

---@return userdata
function Logger.GetType() end

---@return string
function Logger.ToString() end

---@param obj userdata
---@return boolean
function Logger.Equals(obj) end

---@return number
function Logger.GetHashCode() end


