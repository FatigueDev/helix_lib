---@meta IClientNetworkChannel
---@class IClientNetworkChannel
---@field get_Connected fun(): boolean
---@field RegisterMessageType fun(type: any): IClientNetworkChannel
---@overload fun(): IClientNetworkChannel
---@field SetMessageHandler fun(handler: NetworkServerMessageHandler`1): IClientNetworkChannel
---@field SendPacket fun(message: T): nil
---@field Connected boolean
IClientNetworkChannel = {}
