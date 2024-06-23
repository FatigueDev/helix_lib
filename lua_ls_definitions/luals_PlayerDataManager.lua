---@meta PlayerDataManager
---@class PlayerDataManager: Object
---@field ctor fun(server: ServerMain): PlayerDataManager
---@field Load fun(): nil
---@field PlayerGroupForPrivateMessage fun(sender: ConnectedClient, receiver: ConnectedClient): PlayerGroup
---@field CanCreatePlayerGroup fun(playerUid: string): boolean
---@field GetPlayerGroupByName fun(name: string): PlayerGroup
---@field AddPlayerGroup fun(group: PlayerGroup): nil
---@field RemovePlayerGroup fun(group: PlayerGroup): nil
---@field GetOrCreateServerPlayerData fun(playerUID: string, playerName: string): ServerPlayerData
---@field GetServerPlayerDataByLastKnownPlayername fun(playername: string): ServerPlayerData
---@field UnWhitelistPlayer fun(playername: string, playeruid: string): boolean
---@field WhitelistPlayer fun(playername: string, playeruid: string, byPlayername: string, reason: string, untildate: Nullable`1): nil
---@field GetPlayerBan fun(playername: string, playeruid: string): PlayerEntry
---@field GetPlayerWhitelist fun(playername: string, playeruid: string): PlayerEntry
---@field SetRole fun(player: IServerPlayer, role: IPlayerRole): nil
---@overload fun(player: IServerPlayer, roleCode: string): nil
---@field GetRole fun(code: string): IPlayerRole
---@field RegisterPrivilege fun(code: string, shortdescription: string, adminAutoGrant: boolean): nil
---@field GrantTemporaryPrivilege fun(code: string): nil
---@field DropTemporaryPrivilege fun(code: string): nil
---@field GrantPrivilege fun(playerUID: string, code: string, permanent: boolean): boolean
---@field DenyPrivilege fun(playerUID: string, code: string): boolean
---@field RemovePrivilegeDenial fun(playerUID: string, code: string): boolean
---@field RevokePrivilege fun(playerUID: string, code: string, permanent: boolean): boolean
---@field AddPrivilegeToGroup fun(groupCode: string, privilegeCode: string): boolean
---@field RemovePrivilegeFromGroup fun(groupCode: string, privilegeCode: string): boolean
---@field GetPlayerPermissionLevel fun(player: number): number
---@field GetPlayerDataByUid fun(playerUid: string): IServerPlayerData
---@field GetPlayerDataByLastKnownName fun(name: string): IServerPlayerData
---@field ResolvePlayerName fun(playername: string, onPlayerReceived: Action`2): nil
---@field ResolvePlayerUid fun(playeruid: string, onPlayerReceived: Action`2): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
PlayerDataManager = {}
