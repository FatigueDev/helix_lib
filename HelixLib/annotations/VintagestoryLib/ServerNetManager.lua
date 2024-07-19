---@meta

---@class ServerNetManager
---@field Connected EventHandler`1
---@field ReceivedMessage EventHandler`1
---@field Disconnected EventHandler`1
---@field sock Socket
ServerNetManager = {}

---@return ServerNetManager
function ServerNetManager.ctor() end

---@param port number
---@param ipAddress? string
function ServerNetManager.StartServer(port, ipAddress) end

---@param value EventHandler`1
function ServerNetManager.add_Connected(value) end

---@param value EventHandler`1
function ServerNetManager.remove_Connected(value) end

---@param value EventHandler`1
function ServerNetManager.add_ReceivedMessage(value) end

---@param value EventHandler`1
function ServerNetManager.remove_ReceivedMessage(value) end

---@param value EventHandler`1
function ServerNetManager.add_Disconnected(value) end

---@param value EventHandler`1
function ServerNetManager.remove_Disconnected(value) end

---@param sender userdata
---@param data number
---@param compressedFlag boolean
function ServerNetManager.Send(sender, data, compressedFlag) end

---@return userdata
function ServerNetManager.GetType() end

---@return string
function ServerNetManager.ToString() end

---@param obj userdata
---@return boolean
function ServerNetManager.Equals(obj) end

---@return number
function ServerNetManager.GetHashCode() end


