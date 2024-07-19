---@meta

---@class TcpNetClient: NetClient, NetClient
---@field CurrentlyReceivingBytes number
TcpNetClient = {}

---@param platform ClientPlatformAbstract
---@return TcpNetClient
function TcpNetClient.ctor(platform) end

---@return number
function TcpNetClient.get_CurrentlyReceivingBytes() end

function TcpNetClient.Start() end

function TcpNetClient.Dispose() end

---@param host string
---@param port number
---@param OnConnectionResult function
---@param OnDisconnected function
---@return NetConnection
function TcpNetClient.Connect(host, port, OnConnectionResult, OnDisconnected) end

---@return NetIncomingMessage
function TcpNetClient.ReadMessage() end

---@param data number
function TcpNetClient.Send(data) end

---@return userdata
function TcpNetClient.GetType() end

---@return string
function TcpNetClient.ToString() end

---@param obj userdata
---@return boolean
function TcpNetClient.Equals(obj) end

---@return number
function TcpNetClient.GetHashCode() end


