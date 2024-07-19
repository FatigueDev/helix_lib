---@meta

---@class TcpNetServer: NetServer, NetServer
---@field Name string
---@field LocalEndpoint string
TcpNetServer = {}

---@return TcpNetServer
function TcpNetServer.ctor() end

---@return string
function TcpNetServer.get_Name() end

---@return string
function TcpNetServer.get_LocalEndpoint() end

function TcpNetServer.Start() end

---@return NetIncomingMessage
function TcpNetServer.ReadMessage() end

---@param ip string
---@param port number
function TcpNetServer.SetIpAndPort(ip, port) end

function TcpNetServer.Dispose() end

---@return userdata
function TcpNetServer.GetType() end

---@return string
function TcpNetServer.ToString() end

---@param obj userdata
---@return boolean
function TcpNetServer.Equals(obj) end

---@return number
function TcpNetServer.GetHashCode() end


