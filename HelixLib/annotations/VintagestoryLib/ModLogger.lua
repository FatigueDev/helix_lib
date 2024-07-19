---@meta

---@class ModLogger: LoggerBase, ILogger, LoggerBase
---@field Parent ILogger
---@field Mod ModContainer
---@field TraceLog boolean
---@field EntryAdded LogEntryDelegate
ModLogger = {}

---@param parent ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param mod ModContainer
---@return ModLogger
function ModLogger.ctor(parent, mod) end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ModLogger.get_Parent() end

---@return ModContainer
function ModLogger.get_Mod() end

---@return boolean
function ModLogger.get_TraceLog() end

---@param value boolean
function ModLogger.set_TraceLog(value) end

---@param value LogEntryDelegate
function ModLogger.add_EntryAdded(value) end

---@param value LogEntryDelegate
function ModLogger.remove_EntryAdded(value) end

function ModLogger.ClearWatchers() end

---@param logType EnumLogType
---@param format string
---@param args userdata
function ModLogger.Log(logType, format, args) end

---@param logType EnumLogType
---@param message string
function ModLogger.Log(logType, message) end

---@param format string
---@param args userdata
function ModLogger.Chat(format, args) end

---@param message string
function ModLogger.Chat(message) end

---@param format string
---@param args userdata
function ModLogger.Event(format, args) end

---@param message string
function ModLogger.Event(message) end

---@param format string
---@param args userdata
function ModLogger.StoryEvent(format, args) end

---@param message string
function ModLogger.StoryEvent(message) end

---@param format string
---@param args userdata
function ModLogger.Build(format, args) end

---@param message string
function ModLogger.Build(message) end

---@param format string
---@param args userdata
function ModLogger.VerboseDebug(format, args) end

---@param message string
function ModLogger.VerboseDebug(message) end

---@param format string
---@param args userdata
function ModLogger.Debug(format, args) end

---@param message string
function ModLogger.Debug(message) end

---@param format string
---@param args userdata
function ModLogger.Notification(format, args) end

---@param message string
function ModLogger.Notification(message) end

---@param format string
---@param args userdata
function ModLogger.Warning(format, args) end

---@param message string
function ModLogger.Warning(message) end

---@param e Exception
function ModLogger.Warning(e) end

---@param format string
---@param args userdata
function ModLogger.Error(format, args) end

---@param message string
function ModLogger.Error(message) end

---@param e Exception
function ModLogger.Error(e) end

---@param format string
---@param args userdata
function ModLogger.Fatal(format, args) end

---@param message string
function ModLogger.Fatal(message) end

---@param e Exception
function ModLogger.Fatal(e) end

---@param format string
---@param args userdata
function ModLogger.Audit(format, args) end

---@param message string
function ModLogger.Audit(message) end

---@param format string
---@param args userdata
function ModLogger.Worldgen(format, args) end

---@param e Exception
function ModLogger.Worldgen(e) end

---@param message string
function ModLogger.Worldgen(message) end

---@return userdata
function ModLogger.GetType() end

---@return string
function ModLogger.ToString() end

---@param obj userdata
---@return boolean
function ModLogger.Equals(obj) end

---@return number
function ModLogger.GetHashCode() end


