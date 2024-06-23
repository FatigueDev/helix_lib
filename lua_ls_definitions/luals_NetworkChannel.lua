---@meta NetworkChannel
---@class NetworkChannel: NetworkChannelBase
---@field ctor fun(api: NetworkAPI, channelId: number, channelName: string): NetworkChannel
---@field get_Connected fun(): boolean
---@field set_Connected fun(value: boolean): nil
---@field OnPacket fun(p: Packet_CustomPacket): nil
---@field RegisterMessageType fun(type: any): IClientNetworkChannel
---@overload fun(): IClientNetworkChannel
---@field SetMessageHandler fun(handler: NetworkServerMessageHandler`1): IClientNetworkChannel
---@field SendPacket fun(message: T): nil
---@field get_ChannelName fun(): string
---@field RegisterMessageType fun(type: any): INetworkChannel
---@overload fun(): INetworkChannel
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Connected boolean
---@field ChannelName boolean
NetworkChannel = {}
