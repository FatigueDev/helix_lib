---@meta ServerySystemPlayerGroups
---@class ServerySystemPlayerGroups: ServerSystem
---@field ctor fun(server: ServerMain): ServerySystemPlayerGroups
---@field get_PlayerGroupsByUid fun(): table<any, any>
---@field OnPlayerJoinPost fun(player: ServerPlayer): nil
---@field OnPlayerDisconnect fun(player: ServerPlayer): nil
---@field SendPlayerGroups fun(player: IServerPlayer): nil
---@field SendPlayerGroup fun(player: IServerPlayer, playergroup: PlayerGroup): nil
---@overload fun(player: IServerPlayer, playergroup: PlayerGroup, membership: PlayerGroupMembership): nil
---@field HasPlayerPrivilege fun(player: IServerPlayer, targetGroupid: number, priv: EnumPlayerGroupPrivilege, targetPlayerUid: string): boolean
---@field GetGroupMemberShip fun(player: IServerPlayer, targetGroupid: number): PlayerGroupMembership
---@overload fun(playerUID: string, targetGroupid: number): PlayerGroupMembership
---@field GetUpdateInterval fun(): number
---@field OnServerTick fun(dt: Single): nil
---@field OnSeparateThreadTick fun(): nil
---@field OnSeperateThreadTick fun(dt: Single): nil
---@field OnRestart fun(): nil
---@field OnBeginInitialization fun(): nil
---@field OnBeginConfiguration fun(): nil
---@field OnLoadAssets fun(): nil
---@field OnFinalizeAssets fun(): nil
---@field OnBeginModsAndConfigReady fun(): nil
---@field OnBeginGameReady fun(savegame: SaveGame): nil
---@field OnBeginWorldReady fun(): nil
---@field OnSeperateThreadShutDown fun(): nil
---@field OnBeginRunGame fun(): nil
---@field OnBeginShutdown fun(): nil
---@field OnPlayerJoin fun(player: ServerPlayer): nil
---@field OnPlayerSwitchGameMode fun(player: ServerPlayer): nil
---@field OnServerPause fun(): nil
---@field OnServerResume fun(): nil
---@field Dispose fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field PlayerGroupsByUid table<any, any>
---@field DisbandRequests table<any, any>
---@field InviteRequests table<any, any>
---@field millisecondsSinceStart table<any, any>
---@field millisecondsSinceStartSeperateThread table<any, any>
ServerySystemPlayerGroups = {}