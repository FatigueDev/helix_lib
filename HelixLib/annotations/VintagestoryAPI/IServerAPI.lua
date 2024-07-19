---@meta

-- API for general Server features
---@class IServerAPI
---@field ServerIp string The ip adress the server is listening at
---@field Players IServerPlayer[] All players known to the server (which joined at least once)
---@field Config IServerConfig The servers current configuration as configured in the serverconfig.json. You can set the values but you need to call MarkDirty() to have them saved
---@field CurrentRunPhase EnumServerRunPhase Returns the servers current run phase
---@field IsDedicated boolean Returns whether the current server a dedicated server
---@field IsShuttingDown boolean Determines if the server process has been asked to terminate. Use this when you need to save data in a method registered using RegisterOnSave() before server quits.
---@field TotalReceivedBytes number
---@field TotalSentBytes number
---@field ServerUptimeSeconds number Returns the number of seconds the server has been running since last restart
---@field ServerUptimeMilliseconds number Server uptime in milliseconds
---@field TotalWorldPlayTime number Returns the number of seconds the current world has been running. This is the playtime displayed on the singleplayer world list.
---@field Logger ILogger Returns a logging interface to log any log level message
IServerAPI = {}


---@return string
function IServerAPI.get_ServerIp() end

---@return IServerPlayer[] # Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function IServerAPI.get_Players() end

---@return IServerConfig # The servers configuration
function IServerAPI.get_Config() end

-- Marks the config dirty for saving
function IServerAPI.MarkConfigDirty() end

---@return EnumServerRunPhase # These are the stages the server goes through during launch
function IServerAPI.get_CurrentRunPhase() end

---@return boolean
function IServerAPI.get_IsDedicated() end

---@return boolean
function IServerAPI.get_IsShuttingDown() end

-- Gracefully shuts down the server
function IServerAPI.ShutDown() end

-- Allows mods to add a ServerThread.  Useful for off-thread tasks which must be run continuously (at specified intervals) while the server is running.  Calling code simply needs to implement IAsyncServerSystem
---@param threadname string
---@param system IAsyncServerSystem Mods can create server threads to carry out an asynchronous process, by implementing this interface and calling IServerApi.AddServerThread()
function IServerAPI.AddServerThread(threadname, system) end

-- Does a blocking wait until given thread is paused. Returns true if the thread was paused within given time
---@param threadname string
---@param waitTimeoutMs? number
---@return boolean
function IServerAPI.PauseThread(threadname, waitTimeoutMs) end

-- Resumes a previously paused thread
---@param threadname string
function IServerAPI.ResumeThread(threadname) end

---@return number
function IServerAPI.get_TotalReceivedBytes() end

---@return number
function IServerAPI.get_TotalSentBytes() end

---@return number
function IServerAPI.get_ServerUptimeSeconds() end

---@return number
function IServerAPI.get_ServerUptimeMilliseconds() end

---@return number
function IServerAPI.get_TotalWorldPlayTime() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function IServerAPI.get_Logger() end

-- Log given message with type = EnumLogType.Chat
---@param message string
---@param args userdata
function IServerAPI.LogChat(message, args) end

-- Log given message with type = EnumLogType.Build
---@param message string
---@param args userdata
function IServerAPI.LogBuild(message, args) end

-- Log given message with type = EnumLogType.VerboseDebug
---@param message string
---@param args userdata
function IServerAPI.LogVerboseDebug(message, args) end

-- Log given message with type = EnumLogType.Debug
---@param message string
---@param args userdata
function IServerAPI.LogDebug(message, args) end

-- Log given message with type = EnumLogType.Notification
---@param message string
---@param args userdata
function IServerAPI.LogNotification(message, args) end

-- Log given message with type = EnumLogType.Warning
---@param message string
---@param args userdata
function IServerAPI.LogWarning(message, args) end

-- Log given message with type = EnumLogType.Error
---@param message string
---@param args userdata
function IServerAPI.LogError(message, args) end

-- Log given message with type = EnumLogType.Fatal
---@param message string
---@param args userdata
function IServerAPI.LogFatal(message, args) end

---@param message string
---@param args userdata
function IServerAPI.LogEvent(message, args) end

-- Add the specified dimension to the LoadedMiniDimensions, and return its index.
-- A mini dimension is a small set of blocks up to 4096x4096x4096 used for schematic previews, vehicles etc
---@param blocks IMiniDimension Provides read/write access to the blocks of a movable mini-dimension. 
---@return number
function IServerAPI.LoadMiniDimension(blocks) end

-- Set the specified dimension at the specified LoadedMiniDimensions index, and return its index
-- A mini dimension is a small set of blocks up to 4096x4096x4096 used for schematic previews, vehicles etc
---@param miniDimension IMiniDimension Provides read/write access to the blocks of a movable mini-dimension. 
---@param index number
---@return number
function IServerAPI.SetMiniDimension(miniDimension, index) end


