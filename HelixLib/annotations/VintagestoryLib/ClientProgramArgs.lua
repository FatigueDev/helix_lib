---@meta

---@class ClientProgramArgs
---@field PrintVersion boolean
---@field PrintHelp boolean
---@field TraceLog boolean
---@field OpenWorldName string
---@field ConnectServerAddress string
---@field InstallModId string
---@field Password string
---@field CreateRndWorld boolean
---@field PlayStyle string
---@field DataPath string
---@field LogPath string
---@field AddOrigin function
---@field AddModPath function
ClientProgramArgs = {}

---@return ClientProgramArgs
function ClientProgramArgs.ctor() end

---@return boolean
function ClientProgramArgs.get_PrintVersion() end

---@param value boolean
function ClientProgramArgs.set_PrintVersion(value) end

---@return boolean
function ClientProgramArgs.get_PrintHelp() end

---@param value boolean
function ClientProgramArgs.set_PrintHelp(value) end

---@return boolean
function ClientProgramArgs.get_TraceLog() end

---@param value boolean
function ClientProgramArgs.set_TraceLog(value) end

---@return string
function ClientProgramArgs.get_OpenWorldName() end

---@param value string
function ClientProgramArgs.set_OpenWorldName(value) end

---@return string
function ClientProgramArgs.get_ConnectServerAddress() end

---@param value string
function ClientProgramArgs.set_ConnectServerAddress(value) end

---@return string
function ClientProgramArgs.get_InstallModId() end

---@param value string
function ClientProgramArgs.set_InstallModId(value) end

---@return string
function ClientProgramArgs.get_Password() end

---@param value string
function ClientProgramArgs.set_Password(value) end

---@return boolean
function ClientProgramArgs.get_CreateRndWorld() end

---@param value boolean
function ClientProgramArgs.set_CreateRndWorld(value) end

---@return string
function ClientProgramArgs.get_PlayStyle() end

---@param value string
function ClientProgramArgs.set_PlayStyle(value) end

---@return string
function ClientProgramArgs.get_DataPath() end

---@param value string
function ClientProgramArgs.set_DataPath(value) end

---@return string
function ClientProgramArgs.get_LogPath() end

---@param value string
function ClientProgramArgs.set_LogPath(value) end

---@return function
function ClientProgramArgs.get_AddOrigin() end

---@param value function
function ClientProgramArgs.set_AddOrigin(value) end

---@return function
function ClientProgramArgs.get_AddModPath() end

---@param value function
function ClientProgramArgs.set_AddModPath(value) end

---@param parser ParserResult`1
---@return string
function ClientProgramArgs.GetUsage(parser) end

---@return userdata
function ClientProgramArgs.GetType() end

---@return string
function ClientProgramArgs.ToString() end

---@param obj userdata
---@return boolean
function ClientProgramArgs.Equals(obj) end

---@return number
function ClientProgramArgs.GetHashCode() end


