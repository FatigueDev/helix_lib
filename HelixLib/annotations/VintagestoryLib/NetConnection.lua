---@meta

---@class NetConnection
NetConnection = {}


---@return IPEndPointCi
function NetConnection.RemoteEndPoint() end

---@param data number
---@param compressed? boolean
---@return EnumSendResult
function NetConnection.Send(data, compressed) end

---@param box BoxedPacket
---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param compressionAllowed boolean
---@return EnumSendResult
function NetConnection.HiPerformanceSend(box, logger, compressionAllowed) end

---@param connection NetConnection
---@return boolean
function NetConnection.EqualsConnection(connection) end

function NetConnection.Shutdown() end

function NetConnection.Close() end

---@return userdata
function NetConnection.GetType() end

---@return string
function NetConnection.ToString() end

---@param obj userdata
---@return boolean
function NetConnection.Equals(obj) end

---@return number
function NetConnection.GetHashCode() end


