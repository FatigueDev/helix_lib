---@meta

---@class ServerConsole
ServerConsole = {}

---@param server ServerMain
---@param token CancellationToken
---@return ServerConsole
function ServerConsole.ctor(server, token) end

function ServerConsole.Dispose() end

---@return userdata
function ServerConsole.GetType() end

---@return string
function ServerConsole.ToString() end

---@param obj userdata
---@return boolean
function ServerConsole.Equals(obj) end

---@return number
function ServerConsole.GetHashCode() end


