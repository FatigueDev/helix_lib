---@meta

---@class DummyNetServer: NetServer, NetServer
---@field Name string
---@field LocalEndpoint string
DummyNetServer = {}

---@return DummyNetServer
function DummyNetServer.ctor() end

---@return string
function DummyNetServer.get_Name() end

---@return string
function DummyNetServer.get_LocalEndpoint() end

function DummyNetServer.Start() end

---@return NetIncomingMessage
function DummyNetServer.ReadMessage() end

---@param dummyNetwork DummyNetwork
function DummyNetServer.SetNetwork(dummyNetwork) end

---@param gamePlatform ClientPlatformAbstract
function DummyNetServer.SetPlatform(gamePlatform) end

---@param ip string
---@param port number
function DummyNetServer.SetIpAndPort(ip, port) end

function DummyNetServer.Dispose() end

---@return userdata
function DummyNetServer.GetType() end

---@return string
function DummyNetServer.ToString() end

---@param obj userdata
---@return boolean
function DummyNetServer.Equals(obj) end

---@return number
function DummyNetServer.GetHashCode() end


