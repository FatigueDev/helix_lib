---@meta

---@class DummyNetClient: NetClient, NetClient
---@field CurrentlyReceivingBytes number
DummyNetClient = {}

---@return DummyNetClient
function DummyNetClient.ctor() end

---@return number
function DummyNetClient.get_CurrentlyReceivingBytes() end

---@param ip string
---@param port number
---@param OnConnectionResult function
---@param OnDisconnected function
---@return NetConnection
function DummyNetClient.Connect(ip, port, OnConnectionResult, OnDisconnected) end

---@return NetIncomingMessage
function DummyNetClient.ReadMessage() end

---@param data number
function DummyNetClient.Send(data) end

function DummyNetClient.Start() end

---@param network_ DummyNetwork
function DummyNetClient.SetNetwork(network_) end

---@param gamePlatform ClientPlatformAbstract
function DummyNetClient.SetPlatform(gamePlatform) end

function DummyNetClient.Dispose() end

---@return userdata
function DummyNetClient.GetType() end

---@return string
function DummyNetClient.ToString() end

---@param obj userdata
---@return boolean
function DummyNetClient.Equals(obj) end

---@return number
function DummyNetClient.GetHashCode() end


