---@meta IServerNetworkChannel
---@class IServerNetworkChannel
---@field RegisterMessageType fun(type: any): IServerNetworkChannel
---@overload fun(): IServerNetworkChannel
---@field SetMessageHandler fun(messageHandler: NetworkClientMessageHandler`1): IServerNetworkChannel
---@field SendPacket fun(message: T, players: IServerPlayer[]): nil
---@overload fun(message: T, data: number[], players: IServerPlayer[]): nil
---@field BroadcastPacket fun(message: T, exceptPlayers: IServerPlayer[]): nil
IServerNetworkChannel = {}
