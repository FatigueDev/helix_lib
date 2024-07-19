---@meta

---@class INetworkConnection
---@field Connected boolean
---@field Disconnected boolean
INetworkConnection = {}


---@return boolean
function INetworkConnection.get_Connected() end

---@return boolean
function INetworkConnection.get_Disconnected() end

function INetworkConnection.Disconnect() end

---@param data number
---@param dataLength number
---@param total number
function INetworkConnection.Receive(data, dataLength, total) end

---@param data number
---@param length number
function INetworkConnection.Send(data, length) end


