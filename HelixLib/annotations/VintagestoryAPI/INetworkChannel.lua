---@meta

---@class INetworkChannel
---@field ChannelName string The channel name this channel was registered with
INetworkChannel = {}


---@return string
function INetworkChannel.get_ChannelName() end

-- Registers a handler for when you send a packet with given messageId
---@param type userdata
---@return INetworkChannel
function INetworkChannel.RegisterMessageType(type) end

---@return INetworkChannel
function INetworkChannel.RegisterMessageType() end


