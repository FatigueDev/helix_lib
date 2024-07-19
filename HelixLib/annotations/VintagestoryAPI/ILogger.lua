---@meta

-- Interface to the client's and server's event, debug and error logging utilty.
---@class ILogger
---@field TraceLog boolean If true, will also print to Diagnostics.Debug.
---@field EntryAdded LogEntryDelegate Fired each time a new log entry has been added.
ILogger = {}


---@return boolean
function ILogger.get_TraceLog() end

---@param value boolean
function ILogger.set_TraceLog(value) end

---@param value LogEntryDelegate
function ILogger.add_EntryAdded(value) end

---@param value LogEntryDelegate
function ILogger.remove_EntryAdded(value) end

-- Removes any handler that registered to the EntryAdded event.
-- This method is called when the client leaves a world or server shuts down.
function ILogger.ClearWatchers() end

-- Adds a new log entry with the specified log type, format string and arguments.
---@param logType EnumLogType
---@param format string
---@param args userdata
function ILogger.Log(logType, format, args) end

-- Adds a new log entry with the specified log type and message.
---@param logType EnumLogType
---@param message string
function ILogger.Log(logType, message) end

-- Adds a new Chat log entry with the specified format string and arguments.
---@param format string
---@param args userdata
function ILogger.Chat(format, args) end

-- Adds a new Chat log entry with the specified message.
---@param message string
function ILogger.Chat(message) end

-- Adds a new Event log entry with the specified format string and arguments.
---@param format string
---@param args userdata
function ILogger.Event(format, args) end

-- Adds a new Event log entry with the specified message.
---@param message string
function ILogger.Event(message) end

-- Adds a new StoryEvent log entry with the specified format string and arguments.
---@param format string
---@param args userdata
function ILogger.StoryEvent(format, args) end

-- Adds a new StoryEvent log entry with the specified message.
---@param message string
function ILogger.StoryEvent(message) end

-- Adds a new Build log entry with the specified format string and arguments.
---@param format string
---@param args userdata
function ILogger.Build(format, args) end

-- Adds a new Build log entry with the specified message.
---@param message string
function ILogger.Build(message) end

-- Adds a new VerboseDebug log entry with the specified format string and arguments.
---@param format string
---@param args userdata
function ILogger.VerboseDebug(format, args) end

-- Adds a new VerboseDebug log entry with the specified message.
---@param message string
function ILogger.VerboseDebug(message) end

-- Adds a new Debug log entry with the specified format string and arguments.
---@param format string
---@param args userdata
function ILogger.Debug(format, args) end

-- Adds a new Debug log entry with the specified message.
---@param message string
function ILogger.Debug(message) end

-- Adds a new Notification log entry with the specified format string and arguments.
---@param format string
---@param args userdata
function ILogger.Notification(format, args) end

-- Adds a new Notification log entry with the specified message.
---@param message string
function ILogger.Notification(message) end

-- Adds a new Warning log entry with the specified format string and arguments.
---@param format string
---@param args userdata
function ILogger.Warning(format, args) end

-- Adds a new Warning log entry with the specified message.
---@param message string
function ILogger.Warning(message) end

-- Convenience method for logging exceptions in try/catch blocks
---@param e Exception
function ILogger.Warning(e) end

-- Adds a new Error log entry with the specified format string and arguments.
---@param format string
---@param args userdata
function ILogger.Error(format, args) end

-- Adds a new Error log entry with the specified message.
---@param message string
function ILogger.Error(message) end

-- Convenience method for logging exceptions in try/catch blocks
---@param e Exception
function ILogger.Error(e) end

-- Adds a new Fatal log entry with the specified format string and arguments.
---@param format string
---@param args userdata
function ILogger.Fatal(format, args) end

-- Adds a new Fatal log entry with the specified message.
---@param message string
function ILogger.Fatal(message) end

-- Convenience method for logging exceptions in try/catch blocks
---@param e Exception
function ILogger.Fatal(e) end

-- Adds a new Audit log entry with the specified format string and arguments.
---@param format string
---@param args userdata
function ILogger.Audit(format, args) end

-- Adds a new Audit log entry with the specified message.
---@param message string
function ILogger.Audit(message) end


