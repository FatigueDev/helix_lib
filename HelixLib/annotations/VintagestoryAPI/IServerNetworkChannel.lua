---@meta

-- Represent a custom network channel for sending messages between client and server
---@class IServerNetworkChannel:  INetworkChannel
IServerNetworkChannel = {}


-- Registers a handler for when you send a packet with given messageId. Must be registered in the same order as on the server.
---@param type userdata
---@return IServerNetworkChannel # Represent a custom network channel for sending messages between client and server
function IServerNetworkChannel.RegisterMessageType(type) end

---@return IServerNetworkChannel # Represent a custom network channel for sending messages between client and server
function IServerNetworkChannel.RegisterMessageType() end

---@param messageHandler NetworkClientMessageHandler`1
---@return IServerNetworkChannel # Represent a custom network channel for sending messages between client and server
function IServerNetworkChannel.SetMessageHandler(messageHandler) end

---@param message T
---@param players IServerPlayer[] Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function IServerNetworkChannel.SendPacket(message, players) end

---@param message T
---@param data number
---@param players IServerPlayer[] Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function IServerNetworkChannel.SendPacket(message, data, players) end

---@param message T
---@param exceptPlayers IServerPlayer[] Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function IServerNetworkChannel.BroadcastPacket(message, exceptPlayers) end


