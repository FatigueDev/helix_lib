---@meta

---@class NetworkChannel: NetworkChannelBase, NetworkChannelBase, INetworkChannel, IClientNetworkChannel
---@field Connected boolean
---@field ChannelName string
NetworkChannel = {}

---@param api NetworkAPI
---@param channelId number
---@param channelName string
---@return NetworkChannel
function NetworkChannel.ctor(api, channelId, channelName) end

---@return boolean
function NetworkChannel.get_Connected() end

---@param value boolean
function NetworkChannel.set_Connected(value) end

---@param p Packet_CustomPacket
function NetworkChannel.OnPacket(p) end

---@param type userdata
---@return IClientNetworkChannel # Represent a custom network channel for sending messages between client and server
function NetworkChannel.RegisterMessageType(type) end

---@return IClientNetworkChannel # Represent a custom network channel for sending messages between client and server
function NetworkChannel.RegisterMessageType() end

---@param handler NetworkServerMessageHandler`1
---@return IClientNetworkChannel # Represent a custom network channel for sending messages between client and server
function NetworkChannel.SetMessageHandler(handler) end

---@param message T
function NetworkChannel.SendPacket(message) end

---@return string
function NetworkChannel.get_ChannelName() end

---@param type userdata
---@return INetworkChannel
function NetworkChannel.RegisterMessageType(type) end

---@return INetworkChannel
function NetworkChannel.RegisterMessageType() end

---@return userdata
function NetworkChannel.GetType() end

---@return string
function NetworkChannel.ToString() end

---@param obj userdata
---@return boolean
function NetworkChannel.Equals(obj) end

---@return number
function NetworkChannel.GetHashCode() end


