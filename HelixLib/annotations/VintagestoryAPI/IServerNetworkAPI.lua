---@meta

-- API Features to set up a network channel for custom server<->client data exchange. Server side.
---@class IServerNetworkAPI:  INetworkAPI
IServerNetworkAPI = {}


--          Supplies you with your very own and personal network channel that you can use to send packets across the network.  Use the same channelName on the client and server to have them link up.
--          
---@param channelName string
---@return IServerNetworkChannel # Represent a custom network channel for sending messages between client and server
function IServerNetworkAPI.RegisterChannel(channelName) end

-- Returns a previoulsy registered channeled, null otherwise
---@param channelName string
---@return IServerNetworkChannel # Represent a custom network channel for sending messages between client and server
function IServerNetworkAPI.GetChannel(channelName) end

-- Sends a blockentity packet to the given player. For quick an easy network communication without setting up a channel first.
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param x number
---@param y number
---@param z number
---@param packetId number
---@param data? number
function IServerNetworkAPI.SendBlockEntityPacket(player, x, y, z, packetId, data) end

-- Sends a entity packet to the given player and entity. For quick an easy entity network communication without setting up a channel first.
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param entityid number
---@param packetId number
---@param data? number
function IServerNetworkAPI.SendEntityPacket(player, entityid, packetId, data) end

-- Sends a entity packet to all players in range. For quick an easy entity network communication without setting up a channel first.
---@param entityid number
---@param packetId number
---@param data? number
function IServerNetworkAPI.BroadcastEntityPacket(entityid, packetId, data) end

-- Broadcasts a blockentity packet to all connected players. For quick an easy network communication without setting up a channel first.
---@param x number
---@param y number
---@param z number
---@param packetId number
---@param data? number
function IServerNetworkAPI.BroadcastBlockEntityPacket(x, y, z, packetId, data) end

-- Sends a packet data to given players. This let's you mess with the raw network communication if you know the protocol. Use with caution! For normal network communication you probably want to register your own network channel.
---@param data number
---@param players IServerPlayer[] Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function IServerNetworkAPI.SendArbitraryPacket(data, players) end

-- Sends a packet data to everyone except given players.This let's you mess with the raw network communication if you know the protocol. Use with caution! For normal network communication you probably want to register your own network channel.
---@param data number
---@param exceptPlayers IServerPlayer[] Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function IServerNetworkAPI.BroadcastArbitraryPacket(data, exceptPlayers) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param packetId number
---@param data? T
function IServerNetworkAPI.SendBlockEntityPacket(player, pos, packetId, data) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param packetId number
---@param data? T
function IServerNetworkAPI.BroadcastBlockEntityPacket(pos, packetId, data) end


