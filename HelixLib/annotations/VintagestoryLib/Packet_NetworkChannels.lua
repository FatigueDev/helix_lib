---@meta

---@class Packet_NetworkChannels
---@field ChannelIds number
---@field ChannelIdsCount number
---@field ChannelIdsLength number
---@field ChannelNames string
---@field ChannelNamesCount number
---@field ChannelNamesLength number
---@field ChannelIdsFieldID number
---@field ChannelNamesFieldID number
Packet_NetworkChannels = {}

---@return Packet_NetworkChannels
function Packet_NetworkChannels.ctor() end

---@return number
function Packet_NetworkChannels.GetChannelIds() end

---@param value number
---@param count number
---@param length number
function Packet_NetworkChannels.SetChannelIds(value, count, length) end

---@param value number
function Packet_NetworkChannels.SetChannelIds(value) end

---@return number
function Packet_NetworkChannels.GetChannelIdsCount() end

---@param value number
function Packet_NetworkChannels.ChannelIdsAdd(value) end

---@return string
function Packet_NetworkChannels.GetChannelNames() end

---@param value string
---@param count number
---@param length number
function Packet_NetworkChannels.SetChannelNames(value, count, length) end

---@param value string
function Packet_NetworkChannels.SetChannelNames(value) end

---@return number
function Packet_NetworkChannels.GetChannelNamesCount() end

---@param value string
function Packet_NetworkChannels.ChannelNamesAdd(value) end

---@return userdata
function Packet_NetworkChannels.GetType() end

---@return string
function Packet_NetworkChannels.ToString() end

---@param obj userdata
---@return boolean
function Packet_NetworkChannels.Equals(obj) end

---@return number
function Packet_NetworkChannels.GetHashCode() end


