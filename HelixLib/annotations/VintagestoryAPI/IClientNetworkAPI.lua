---@meta

-- API Features to set up a network channel for custom server<->client data exchange. Client side.
---@class IClientNetworkAPI:  INetworkAPI
IClientNetworkAPI = {}


--          Supplies you with your very own and personal network channel with which you can send packets to the server. Use the same channelName on the client and server to have them link up.
--          
---@param channelName string
---@return IClientNetworkChannel # Represent a custom network channel for sending messages between client and server
function IClientNetworkAPI.RegisterChannel(channelName) end

-- Returns a previoulsy registered channeled, null otherwise
---@param channelName string
---@return IClientNetworkChannel # Represent a custom network channel for sending messages between client and server
function IClientNetworkAPI.GetChannel(channelName) end

-- Check in what state a channel currently is in
---@param channelName string
---@return EnumChannelState # The state of a network channel
function IClientNetworkAPI.GetChannelState(channelName) end

-- Sends a blockentity interaction packet to the server. For quick an easy blockentity network communication without setting up a channel first.
---@param x number
---@param y number
---@param z number
---@param packetId number
---@param data? number
function IClientNetworkAPI.SendBlockEntityPacket(x, y, z, packetId, data) end

-- Sends a blockentity interaction packet to the server. For quick an easy blockentity network communication without setting up a channel first.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param packetId number
---@param data? number
function IClientNetworkAPI.SendBlockEntityPacket(pos, packetId, data) end

-- Sends a entity interaction packet to the server. For quick an easy entity network communication without setting up a channel first.
---@param entityid number
---@param packetId number
---@param data? number
function IClientNetworkAPI.SendEntityPacket(entityid, packetId, data) end

-- Sends a blockentity interaction packet to the server. For quick an easy blockentity network communication without setting up a channel first.
---@param x number
---@param y number
---@param z number
---@param internalPacket userdata
function IClientNetworkAPI.SendBlockEntityPacket(x, y, z, internalPacket) end

-- Sends a entity interaction packet to the server. For quick an easy entity network communication without setting up a channel first.
---@param entityid number
---@param internalPacket userdata
function IClientNetworkAPI.SendEntityPacket(entityid, internalPacket) end

-- Sends given packet data to the server. This let's you mess with the raw network communication and fiddle with internal engine packets if you know the protocol. For normal network communication you probably want to register your own network channel.
---@param data number
function IClientNetworkAPI.SendArbitraryPacket(data) end

-- Sends given packet to server. For use with inventory supplied network packets only, since the packet format is not exposed to the api 
---@param packetClient userdata
function IClientNetworkAPI.SendPacketClient(packetClient) end

-- Sends the current hand interaction.  
---@param mouseButton number
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySelection EntitySelection
---@param beforeUseType EnumHandInteract
---@param state number
---@param firstEvent boolean
---@param cancelReason EnumItemUseCancelReason
function IClientNetworkAPI.SendHandInteraction(mouseButton, blockSelection, entitySelection, beforeUseType, state, firstEvent, cancelReason) end

-- If any mod denies the client event IsPlayerReady, then it has to call this method once to indicate that the player is now ready to play (which switches the server side client state from Connected to Playing)
function IClientNetworkAPI.SendPlayerNowReady() end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param packetId number
---@param data? T
function IClientNetworkAPI.SendBlockEntityPacket(pos, packetId, data) end


