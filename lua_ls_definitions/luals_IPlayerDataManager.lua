---@meta IPlayerDataManager
---@class IPlayerDataManager
---@field get_PlayerDataByUid fun(): table<any, any>
---@field GetPlayerDataByUid fun(playerUid: string): IServerPlayerData
---@field GetPlayerDataByLastKnownName fun(name: string): IServerPlayerData
---@field ResolvePlayerName fun(playername: string, onPlayerReceived: Action`2): nil
---@field ResolvePlayerUid fun(playeruid: string, onPlayerReceived: Action`2): nil
---@field PlayerDataByUid table<any, any>
IPlayerDataManager = {}
