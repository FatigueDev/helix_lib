---@meta

---@class TcpConnection
---@field ReceivedMessage EventHandler`1
---@field Disconnected EventHandler`1
---@field sock Socket
---@field address string
---@field connected boolean
TcpConnection = {}

---@param s Socket
---@return TcpConnection
function TcpConnection.ctor(s) end

---@param value EventHandler`1
function TcpConnection.add_ReceivedMessage(value) end

---@param value EventHandler`1
function TcpConnection.remove_ReceivedMessage(value) end

---@param value EventHandler`1
function TcpConnection.add_Disconnected(value) end

---@param value EventHandler`1
function TcpConnection.remove_Disconnected(value) end

function TcpConnection.BeginReceive() end

---@param data number
---@param compressedFlag boolean
---@return EnumSendResult
function TcpConnection.Send(data, compressedFlag) end

---@param dataWithLength number
---@param length number
---@param compressedFlag boolean
---@return EnumSendResult
function TcpConnection.SendPreparedBytes(dataWithLength, length, compressedFlag) end

---@return string
function TcpConnection.ToString() end

---@return userdata
function TcpConnection.GetType() end

---@param obj userdata
---@return boolean
function TcpConnection.Equals(obj) end

---@return number
function TcpConnection.GetHashCode() end


