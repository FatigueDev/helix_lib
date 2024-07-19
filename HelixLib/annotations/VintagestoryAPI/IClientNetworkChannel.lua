---@meta

-- Represent a custom network channel for sending messages between client and server
---@class IClientNetworkChannel:  INetworkChannel
---@field Connected boolean True if the server is listening on this channel
IClientNetworkChannel = {}


---@return boolean
function IClientNetworkChannel.get_Connected() end

-- Registers a handler for when you send a packet with given messageId. Must be registered in the same order as on the server.
---@param type userdata
---@return IClientNetworkChannel # Represent a custom network channel for sending messages between client and server
function IClientNetworkChannel.RegisterMessageType(type) end

---@return IClientNetworkChannel # Represent a custom network channel for sending messages between client and server
function IClientNetworkChannel.RegisterMessageType() end

---@param handler NetworkServerMessageHandler`1
---@return IClientNetworkChannel # Represent a custom network channel for sending messages between client and server
function IClientNetworkChannel.SetMessageHandler(handler) end

---@param message T
function IClientNetworkChannel.SendPacket(message) end


