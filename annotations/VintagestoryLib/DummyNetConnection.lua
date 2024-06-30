---@meta

---@class DummyNetConnection: NetConnection, NetConnection
DummyNetConnection = {}

---@return DummyNetConnection
function DummyNetConnection.ctor() end

---@param data number
---@param compressed? boolean
---@return EnumSendResult
function DummyNetConnection.Send(data, compressed) end

---@param box BoxedPacket
---@param Logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param compressionAllowed boolean
---@return EnumSendResult
function DummyNetConnection.HiPerformanceSend(box, Logger, compressionAllowed) end

---@return IPEndPointCi
function DummyNetConnection.RemoteEndPoint() end

---@param connection NetConnection
---@return boolean
function DummyNetConnection.EqualsConnection(connection) end

function DummyNetConnection.Close() end

function DummyNetConnection.Shutdown() end

---@return userdata
function DummyNetConnection.GetType() end

---@return string
function DummyNetConnection.ToString() end

---@param obj userdata
---@return boolean
function DummyNetConnection.Equals(obj) end

---@return number
function DummyNetConnection.GetHashCode() end


