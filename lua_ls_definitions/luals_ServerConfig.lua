---@meta ServerConfig
---@class ServerConfig: Object
---@field ctor fun(): ServerConfig
---@field add_onUpnpChanged fun(value: Action): nil
---@field remove_onUpnpChanged fun(value: Action): nil
---@field add_onAdvertiseChanged fun(value: Action): nil
---@field remove_onAdvertiseChanged fun(value: Action): nil
---@field get_FileEditWarning fun(): string
---@field set_FileEditWarning fun(value: string): nil
---@field get_ConfigVersion fun(): string
---@field set_ConfigVersion fun(value: string): nil
---@field get_ServerName fun(): string
---@field set_ServerName fun(value: string): nil
---@field get_ServerUrl fun(): string
---@field set_ServerUrl fun(value: string): nil
---@field get_ServerDescription fun(): string
---@field set_ServerDescription fun(value: string): nil
---@field get_WelcomeMessage fun(): string
---@field set_WelcomeMessage fun(value: string): nil
---@field get_Ip fun(): string
---@field set_Ip fun(value: string): nil
---@field get_Port fun(): number
---@field set_Port fun(value: number): nil
---@field get_Upnp fun(): boolean
---@field set_Upnp fun(value: boolean): nil
---@field get_CompressPackets fun(): boolean
---@field set_CompressPackets fun(value: boolean): nil
---@field get_AdvertiseServer fun(): boolean
---@field set_AdvertiseServer fun(value: boolean): nil
---@field get_MaxClients fun(): number
---@field set_MaxClients fun(value: number): nil
---@field get_PassTimeWhenEmpty fun(): boolean
---@field set_PassTimeWhenEmpty fun(value: boolean): nil
---@field get_MasterserverUrl fun(): string
---@field set_MasterserverUrl fun(value: string): nil
---@field get_ModDbUrl fun(): string
---@field set_ModDbUrl fun(value: string): nil
---@field get_ClientConnectionTimeout fun(): number
---@field set_ClientConnectionTimeout fun(value: number): nil
---@field get_EntityDebugMode fun(): boolean
---@field set_EntityDebugMode fun(value: boolean): nil
---@field get_Password fun(): string
---@field set_Password fun(value: string): nil
---@field get_MapSizeX fun(): number
---@field set_MapSizeX fun(value: number): nil
---@field get_MapSizeY fun(): number
---@field set_MapSizeY fun(value: number): nil
---@field get_MapSizeZ fun(): number
---@field set_MapSizeZ fun(value: number): nil
---@field get_ServerLanguage fun(): string
---@field set_ServerLanguage fun(value: string): nil
---@field get_MaxChunkRadius fun(): number
---@field set_MaxChunkRadius fun(value: number): nil
---@field get_TickTime fun(): Single
---@field set_TickTime fun(value: Single): nil
---@field get_SpawnCapPlayerScaling fun(): Single
---@field set_SpawnCapPlayerScaling fun(value: Single): nil
---@field get_BlockTickChunkRange fun(): number
---@field set_BlockTickChunkRange fun(value: number): nil
---@field get_MaxMainThreadBlockTicks fun(): number
---@field set_MaxMainThreadBlockTicks fun(value: number): nil
---@field get_RandomBlockTicksPerChunk fun(): number
---@field set_RandomBlockTicksPerChunk fun(value: number): nil
---@field get_BlockTickInterval fun(): number
---@field set_BlockTickInterval fun(value: number): nil
---@field get_SkipEveryChunkRow fun(): number
---@field set_SkipEveryChunkRow fun(value: number): nil
---@field get_SkipEveryChunkRowWidth fun(): number
---@field set_SkipEveryChunkRowWidth fun(value: number): nil
---@field get_Roles fun(): any[]
---@field set_Roles fun(value: any[]): nil
---@field get_DefaultRoleCode fun(): string
---@field set_DefaultRoleCode fun(value: string): nil
---@field get_ModPaths fun(): string[]
---@field set_ModPaths fun(value: string[]): nil
---@field get_AntiAbuse fun(): EnumProtectionLevel
---@field set_AntiAbuse fun(value: EnumProtectionLevel): nil
---@field get_WorldConfig fun(): StartServerArgs
---@field set_WorldConfig fun(value: StartServerArgs): nil
---@field get_NextPlayerGroupUid fun(): number
---@field set_NextPlayerGroupUid fun(value: number): nil
---@field get_GroupChatHistorySize fun(): number
---@field set_GroupChatHistorySize fun(value: number): nil
---@field get_MaxOwnedGroupChannelsPerUser fun(): number
---@field set_MaxOwnedGroupChannelsPerUser fun(value: number): nil
---@field get_OnlyWhitelisted fun(): boolean
---@field set_OnlyWhitelisted fun(value: boolean): nil
---@field get_VerifyPlayerAuth fun(): boolean
---@field set_VerifyPlayerAuth fun(value: boolean): nil
---@field get_DefaultSpawn fun(): PlayerSpawnPos
---@field set_DefaultSpawn fun(value: PlayerSpawnPos): nil
---@field get_AllowPvP fun(): boolean
---@field set_AllowPvP fun(value: boolean): nil
---@field get_AllowFireSpread fun(): boolean
---@field set_AllowFireSpread fun(value: boolean): nil
---@field get_AllowFallingBlocks fun(): boolean
---@field set_AllowFallingBlocks fun(value: boolean): nil
---@field get_HostedMode fun(): boolean
---@field set_HostedMode fun(value: boolean): nil
---@field get_HostedModeAllowMods fun(): boolean
---@field set_HostedModeAllowMods fun(value: boolean): nil
---@field get_StartupCommands fun(): string
---@field set_StartupCommands fun(value: string): nil
---@field get_RepairMode fun(): boolean
---@field set_RepairMode fun(value: boolean): nil
---@field get_AnalyzeMode fun(): boolean
---@field set_AnalyzeMode fun(value: boolean): nil
---@field get_CorruptionProtection fun(): boolean
---@field set_CorruptionProtection fun(value: boolean): nil
---@field get_RegenerateCorruptChunks fun(): boolean
---@field set_RegenerateCorruptChunks fun(value: boolean): nil
---@field get_ChatRateLimitMs fun(): number
---@field set_ChatRateLimitMs fun(value: number): nil
---@field get_DieBelowDiskSpaceMb fun(): number
---@field set_DieBelowDiskSpaceMb fun(value: number): nil
---@field get_ModIdBlackList fun(): string[]
---@field set_ModIdBlackList fun(value: string[]): nil
---@field get_ServerIdentifier fun(): string
---@field set_ServerIdentifier fun(value: string): nil
---@field IsPasswordProtected fun(): boolean
---@field GetMaxClients fun(server: ServerMain): number
---@field Get fun(propertyName: string): table
---@field Set fun(propertyName: string, value: table): nil
---@field ApplyStartServerArgs fun(serverargs: StartServerArgs): nil
---@field InitializeRoles fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field FileEditWarning string
---@field ConfigVersion string
---@field ServerName string
---@field ServerUrl string
---@field ServerDescription string
---@field WelcomeMessage string
---@field Ip string
---@field Port string
---@field Upnp string
---@field CompressPackets string
---@field AdvertiseServer string
---@field MaxClients string
---@field PassTimeWhenEmpty string
---@field MasterserverUrl string
---@field ModDbUrl string
---@field ClientConnectionTimeout string
---@field EntityDebugMode string
---@field Password string
---@field MapSizeX string
---@field MapSizeY string
---@field MapSizeZ string
---@field ServerLanguage string
---@field MaxChunkRadius string
---@field TickTime string
---@field SpawnCapPlayerScaling string
---@field BlockTickChunkRange string
---@field MaxMainThreadBlockTicks string
---@field RandomBlockTicksPerChunk string
---@field BlockTickInterval string
---@field SkipEveryChunkRow string
---@field SkipEveryChunkRowWidth string
---@field Roles string
---@field DefaultRoleCode string
---@field ModPaths string
---@field AntiAbuse string
---@field WorldConfig string
---@field NextPlayerGroupUid string
---@field GroupChatHistorySize string
---@field MaxOwnedGroupChannelsPerUser string
---@field OnlyWhitelisted string
---@field VerifyPlayerAuth string
---@field DefaultSpawn string
---@field AllowPvP string
---@field AllowFireSpread string
---@field AllowFallingBlocks string
---@field HostedMode string
---@field HostedModeAllowMods string
---@field StartupCommands string
---@field RepairMode string
---@field AnalyzeMode string
---@field CorruptionProtection string
---@field RegenerateCorruptChunks string
---@field ChatRateLimitMs string
---@field DieBelowDiskSpaceMb string
---@field ModIdBlackList string
---@field ServerIdentifier string
---@field onUpnpChanged string
---@field onAdvertiseChanged string
---@field LoadedConfigVersion string
---@field RuntimeUpnp string
---@field Seed string
---@field RolesByCode string
ServerConfig = {}