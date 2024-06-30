---@meta

---@class ServerProgramArgs
---@field PrintVersion boolean
---@field PrintHelp boolean
---@field Standby boolean
---@field TraceLog boolean
---@field Append boolean
---@field GenConfigAndExit boolean
---@field SetConfigAndExit string
---@field WithConfig string
---@field DataPath string
---@field LogPath string
---@field AddOrigin function
---@field AddModPath function
---@field Ip string
---@field Port string
---@field MaxClients string
ServerProgramArgs = {}

---@return ServerProgramArgs
function ServerProgramArgs.ctor() end

---@return boolean
function ServerProgramArgs.get_PrintVersion() end

---@param value boolean
function ServerProgramArgs.set_PrintVersion(value) end

---@return boolean
function ServerProgramArgs.get_PrintHelp() end

---@param value boolean
function ServerProgramArgs.set_PrintHelp(value) end

---@return boolean
function ServerProgramArgs.get_Standby() end

---@param value boolean
function ServerProgramArgs.set_Standby(value) end

---@return boolean
function ServerProgramArgs.get_TraceLog() end

---@param value boolean
function ServerProgramArgs.set_TraceLog(value) end

---@return boolean
function ServerProgramArgs.get_Append() end

---@param value boolean
function ServerProgramArgs.set_Append(value) end

---@return boolean
function ServerProgramArgs.get_GenConfigAndExit() end

---@param value boolean
function ServerProgramArgs.set_GenConfigAndExit(value) end

---@return string
function ServerProgramArgs.get_SetConfigAndExit() end

---@param value string
function ServerProgramArgs.set_SetConfigAndExit(value) end

---@return string
function ServerProgramArgs.get_WithConfig() end

---@param value string
function ServerProgramArgs.set_WithConfig(value) end

---@return string
function ServerProgramArgs.get_DataPath() end

---@param value string
function ServerProgramArgs.set_DataPath(value) end

---@return string
function ServerProgramArgs.get_LogPath() end

---@param value string
function ServerProgramArgs.set_LogPath(value) end

---@return function
function ServerProgramArgs.get_AddOrigin() end

---@param value function
function ServerProgramArgs.set_AddOrigin(value) end

---@return function
function ServerProgramArgs.get_AddModPath() end

---@param value function
function ServerProgramArgs.set_AddModPath(value) end

---@return string
function ServerProgramArgs.get_Ip() end

---@param value string
function ServerProgramArgs.set_Ip(value) end

---@return string
function ServerProgramArgs.get_Port() end

---@param value string
function ServerProgramArgs.set_Port(value) end

---@return string
function ServerProgramArgs.get_MaxClients() end

---@param value string
function ServerProgramArgs.set_MaxClients(value) end

---@param parser ParserResult`1
---@return string
function ServerProgramArgs.GetUsage(parser) end

---@return userdata
function ServerProgramArgs.GetType() end

---@return string
function ServerProgramArgs.ToString() end

---@param obj userdata
---@return boolean
function ServerProgramArgs.Equals(obj) end

---@return number
function ServerProgramArgs.GetHashCode() end


