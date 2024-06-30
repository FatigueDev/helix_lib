---@meta

---@class NetServer
---@field Name string
---@field LocalEndpoint string
NetServer = {}


---@return string
function NetServer.get_Name() end

---@return string
function NetServer.get_LocalEndpoint() end

---@param ip string
---@param port number
function NetServer.SetIpAndPort(ip, port) end

function NetServer.Start() end

---@return NetIncomingMessage
function NetServer.ReadMessage() end

function NetServer.Dispose() end

---@return userdata
function NetServer.GetType() end

---@return string
function NetServer.ToString() end

---@param obj userdata
---@return boolean
function NetServer.Equals(obj) end

---@return number
function NetServer.GetHashCode() end


