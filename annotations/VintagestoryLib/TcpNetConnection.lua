---@meta

---@class TcpNetConnection: NetConnection, NetConnection
---@field peer TcpConnection
TcpNetConnection = {}

---@return TcpNetConnection
function TcpNetConnection.ctor() end

---@return IPEndPointCi
function TcpNetConnection.RemoteEndPoint() end

---@param data number
---@param compressedFlag boolean
---@return EnumSendResult
function TcpNetConnection.Send(data, compressedFlag) end

---@param box BoxedPacket
---@param Logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param compressionAllowed boolean
---@return EnumSendResult
function TcpNetConnection.HiPerformanceSend(box, Logger, compressionAllowed) end

---@param connection NetConnection
---@return boolean
function TcpNetConnection.EqualsConnection(connection) end

function TcpNetConnection.Close() end

function TcpNetConnection.Shutdown() end

---@return userdata
function TcpNetConnection.GetType() end

---@return string
function TcpNetConnection.ToString() end

---@param obj userdata
---@return boolean
function TcpNetConnection.Equals(obj) end

---@return number
function TcpNetConnection.GetHashCode() end


