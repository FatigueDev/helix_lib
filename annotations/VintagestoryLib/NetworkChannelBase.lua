---@meta

---@class NetworkChannelBase:  INetworkChannel
---@field ChannelName string
NetworkChannelBase = {}

---@param channelId number
---@param channelName string
---@return NetworkChannelBase
function NetworkChannelBase.ctor(channelId, channelName) end

---@return string
function NetworkChannelBase.get_ChannelName() end

---@param type userdata
---@return INetworkChannel
function NetworkChannelBase.RegisterMessageType(type) end

---@return INetworkChannel
function NetworkChannelBase.RegisterMessageType() end

---@return userdata
function NetworkChannelBase.GetType() end

---@return string
function NetworkChannelBase.ToString() end

---@param obj userdata
---@return boolean
function NetworkChannelBase.Equals(obj) end

---@return number
function NetworkChannelBase.GetHashCode() end


