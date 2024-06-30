---@meta

---@class NetClient
---@field CurrentlyReceivingBytes number
NetClient = {}


---@return number
function NetClient.get_CurrentlyReceivingBytes() end

function NetClient.Start() end

---@param ip string
---@param port number
---@param OnConnectionResult function
---@param OnDisconnected function
---@return NetConnection
function NetClient.Connect(ip, port, OnConnectionResult, OnDisconnected) end

---@return NetIncomingMessage
function NetClient.ReadMessage() end

---@param data number
function NetClient.Send(data) end

function NetClient.Dispose() end

---@return userdata
function NetClient.GetType() end

---@return string
function NetClient.ToString() end

---@param obj userdata
---@return boolean
function NetClient.Equals(obj) end

---@return number
function NetClient.GetHashCode() end


