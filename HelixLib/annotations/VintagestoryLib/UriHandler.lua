---@meta

---@class UriHandler
---@field Instance UriHandler
UriHandler = {}


---@return UriHandler
function UriHandler.get_Instance() end

function UriHandler.StartPipeServer() end

---@return boolean
function UriHandler.TryConnectClientPipe() end

function UriHandler.Dispose() end

---@param argsInstallModId string
function UriHandler.SendModInstall(argsInstallModId) end

---@param argsConnectServerAddress string
function UriHandler.SendConnect(argsConnectServerAddress) end

---@return userdata
function UriHandler.GetType() end

---@return string
function UriHandler.ToString() end

---@param obj userdata
---@return boolean
function UriHandler.Equals(obj) end

---@return number
function UriHandler.GetHashCode() end


