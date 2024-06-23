---@meta IServerPlayer
---@class IServerPlayer
---@field add_InWorldAction fun(value: OnEntityAction): nil
---@field remove_InWorldAction fun(value: OnEntityAction): nil
---@field get_ItemCollectMode fun(): number
---@field set_ItemCollectMode fun(value: number): nil
---@field get_CurrentChunkSentRadius fun(): number
---@field set_CurrentChunkSentRadius fun(value: number): nil
---@field get_ConnectionState fun(): EnumClientState
---@field get_IpAddress fun(): string
---@field get_LanguageCode fun(): string
---@field get_Ping fun(): Single
---@field get_ServerData fun(): IServerPlayerData
---@field BroadcastPlayerData fun(sendInventory: boolean): nil
---@field Disconnect fun(): nil
---@overload fun(message: string): nil
---@field SendIngameError fun(code: string, message: string, langparams: table[]): nil
---@field SendMessage fun(groupId: number, message: string, chatType: EnumChatany, data: string): nil
---@field SendLocalisedMessage fun(groupId: number, message: string, args: table[]): nil
---@field SetRole fun(roleCode: string): nil
---@field SetSpawnPosition fun(pos: PlayerSpawnPos): nil
---@field ClearSpawnPosition fun(): nil
---@field GetSpawnPosition fun(consumeSpawnUse: boolean): FuzzyEntityPos
---@field SendPositionToClient fun(): nil
---@field SetModData fun(key: string, data: T): nil
---@field GetModData fun(key: string, defaultValue: T): T
---@field SetModdata fun(key: string, data: number[]): nil
---@field RemoveModdata fun(key: string): nil
---@field GetModdata fun(key: string): number[]
---@field ItemCollectMode number
---@field CurrentChunkSentRadius number
---@field ConnectionState number
---@field IpAddress number
---@field LanguageCode number
---@field Ping number
---@field ServerData number
---@field InWorldAction number
IServerPlayer = {}
