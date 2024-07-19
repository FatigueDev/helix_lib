---@meta

---@class ServerConfig:  IServerConfig
---@field FileEditWarning string
---@field ConfigVersion string
---@field ServerName string
---@field ServerUrl string
---@field ServerDescription string
---@field WelcomeMessage string
---@field Ip string
---@field Port number
---@field Upnp boolean
---@field CompressPackets boolean
---@field AdvertiseServer boolean
---@field MaxClients number
---@field PassTimeWhenEmpty boolean
---@field MasterserverUrl string
---@field ModDbUrl string
---@field ClientConnectionTimeout number
---@field EntityDebugMode boolean
---@field Password string
---@field MapSizeX number
---@field MapSizeY number
---@field MapSizeZ number
---@field ServerLanguage string
---@field MaxChunkRadius number
---@field TickTime number
---@field SpawnCapPlayerScaling number
---@field BlockTickChunkRange number
---@field MaxMainThreadBlockTicks number
---@field RandomBlockTicksPerChunk number
---@field BlockTickInterval number
---@field SkipEveryChunkRow number
---@field SkipEveryChunkRowWidth number
---@field Roles table
---@field DefaultRoleCode string
---@field ModPaths string
---@field AntiAbuse EnumProtectionLevel
---@field WorldConfig StartServerArgs
---@field NextPlayerGroupUid number
---@field GroupChatHistorySize number
---@field MaxOwnedGroupChannelsPerUser number
---@field OnlyWhitelisted boolean
---@field VerifyPlayerAuth boolean
---@field DefaultSpawn PlayerSpawnPos
---@field AllowPvP boolean
---@field AllowFireSpread boolean
---@field AllowFallingBlocks boolean
---@field HostedMode boolean
---@field HostedModeAllowMods boolean
---@field StartupCommands string
---@field RepairMode boolean
---@field AnalyzeMode boolean
---@field CorruptionProtection boolean
---@field RegenerateCorruptChunks boolean
---@field ChatRateLimitMs number
---@field DieBelowDiskSpaceMb number
---@field ModIdBlackList string
---@field ServerIdentifier string
---@field onUpnpChanged function
---@field onAdvertiseChanged function
---@field LoadedConfigVersion string
---@field RuntimeUpnp boolean
---@field Seed Nullable`1
---@field RolesByCode table
ServerConfig = {}

---@return ServerConfig
function ServerConfig.ctor() end

---@param value function
function ServerConfig.add_onUpnpChanged(value) end

---@param value function
function ServerConfig.remove_onUpnpChanged(value) end

---@param value function
function ServerConfig.add_onAdvertiseChanged(value) end

---@param value function
function ServerConfig.remove_onAdvertiseChanged(value) end

---@return string
function ServerConfig.get_FileEditWarning() end

---@param value string
function ServerConfig.set_FileEditWarning(value) end

---@return string
function ServerConfig.get_ConfigVersion() end

---@param value string
function ServerConfig.set_ConfigVersion(value) end

---@return string
function ServerConfig.get_ServerName() end

---@param value string
function ServerConfig.set_ServerName(value) end

---@return string
function ServerConfig.get_ServerUrl() end

---@param value string
function ServerConfig.set_ServerUrl(value) end

---@return string
function ServerConfig.get_ServerDescription() end

---@param value string
function ServerConfig.set_ServerDescription(value) end

---@return string
function ServerConfig.get_WelcomeMessage() end

---@param value string
function ServerConfig.set_WelcomeMessage(value) end

---@return string
function ServerConfig.get_Ip() end

---@param value string
function ServerConfig.set_Ip(value) end

---@return number
function ServerConfig.get_Port() end

---@param value number
function ServerConfig.set_Port(value) end

---@return boolean
function ServerConfig.get_Upnp() end

---@param value boolean
function ServerConfig.set_Upnp(value) end

---@return boolean
function ServerConfig.get_CompressPackets() end

---@param value boolean
function ServerConfig.set_CompressPackets(value) end

---@return boolean
function ServerConfig.get_AdvertiseServer() end

---@param value boolean
function ServerConfig.set_AdvertiseServer(value) end

---@return number
function ServerConfig.get_MaxClients() end

---@param value number
function ServerConfig.set_MaxClients(value) end

---@return boolean
function ServerConfig.get_PassTimeWhenEmpty() end

---@param value boolean
function ServerConfig.set_PassTimeWhenEmpty(value) end

---@return string
function ServerConfig.get_MasterserverUrl() end

---@param value string
function ServerConfig.set_MasterserverUrl(value) end

---@return string
function ServerConfig.get_ModDbUrl() end

---@param value string
function ServerConfig.set_ModDbUrl(value) end

---@return number
function ServerConfig.get_ClientConnectionTimeout() end

---@param value number
function ServerConfig.set_ClientConnectionTimeout(value) end

---@return boolean
function ServerConfig.get_EntityDebugMode() end

---@param value boolean
function ServerConfig.set_EntityDebugMode(value) end

---@return string
function ServerConfig.get_Password() end

---@param value string
function ServerConfig.set_Password(value) end

---@return number
function ServerConfig.get_MapSizeX() end

---@param value number
function ServerConfig.set_MapSizeX(value) end

---@return number
function ServerConfig.get_MapSizeY() end

---@param value number
function ServerConfig.set_MapSizeY(value) end

---@return number
function ServerConfig.get_MapSizeZ() end

---@param value number
function ServerConfig.set_MapSizeZ(value) end

---@return string
function ServerConfig.get_ServerLanguage() end

---@param value string
function ServerConfig.set_ServerLanguage(value) end

---@return number
function ServerConfig.get_MaxChunkRadius() end

---@param value number
function ServerConfig.set_MaxChunkRadius(value) end

---@return number
function ServerConfig.get_TickTime() end

---@param value number
function ServerConfig.set_TickTime(value) end

---@return number
function ServerConfig.get_SpawnCapPlayerScaling() end

---@param value number
function ServerConfig.set_SpawnCapPlayerScaling(value) end

---@return number
function ServerConfig.get_BlockTickChunkRange() end

---@param value number
function ServerConfig.set_BlockTickChunkRange(value) end

---@return number
function ServerConfig.get_MaxMainThreadBlockTicks() end

---@param value number
function ServerConfig.set_MaxMainThreadBlockTicks(value) end

---@return number
function ServerConfig.get_RandomBlockTicksPerChunk() end

---@param value number
function ServerConfig.set_RandomBlockTicksPerChunk(value) end

---@return number
function ServerConfig.get_BlockTickInterval() end

---@param value number
function ServerConfig.set_BlockTickInterval(value) end

---@return number
function ServerConfig.get_SkipEveryChunkRow() end

---@param value number
function ServerConfig.set_SkipEveryChunkRow(value) end

---@return number
function ServerConfig.get_SkipEveryChunkRowWidth() end

---@param value number
function ServerConfig.set_SkipEveryChunkRowWidth(value) end

---@return table
function ServerConfig.get_Roles() end

---@param value table
function ServerConfig.set_Roles(value) end

---@return string
function ServerConfig.get_DefaultRoleCode() end

---@param value string
function ServerConfig.set_DefaultRoleCode(value) end

---@return string
function ServerConfig.get_ModPaths() end

---@param value string
function ServerConfig.set_ModPaths(value) end

---@return EnumProtectionLevel # How strongly the Server should protect against hacking
function ServerConfig.get_AntiAbuse() end

---@param value EnumProtectionLevel How strongly the Server should protect against hacking
function ServerConfig.set_AntiAbuse(value) end

---@return StartServerArgs
function ServerConfig.get_WorldConfig() end

---@param value StartServerArgs
function ServerConfig.set_WorldConfig(value) end

---@return number
function ServerConfig.get_NextPlayerGroupUid() end

---@param value number
function ServerConfig.set_NextPlayerGroupUid(value) end

---@return number
function ServerConfig.get_GroupChatHistorySize() end

---@param value number
function ServerConfig.set_GroupChatHistorySize(value) end

---@return number
function ServerConfig.get_MaxOwnedGroupChannelsPerUser() end

---@param value number
function ServerConfig.set_MaxOwnedGroupChannelsPerUser(value) end

---@return boolean
function ServerConfig.get_OnlyWhitelisted() end

---@param value boolean
function ServerConfig.set_OnlyWhitelisted(value) end

---@return boolean
function ServerConfig.get_VerifyPlayerAuth() end

---@param value boolean
function ServerConfig.set_VerifyPlayerAuth(value) end

---@return PlayerSpawnPos
function ServerConfig.get_DefaultSpawn() end

---@param value PlayerSpawnPos
function ServerConfig.set_DefaultSpawn(value) end

---@return boolean
function ServerConfig.get_AllowPvP() end

---@param value boolean
function ServerConfig.set_AllowPvP(value) end

---@return boolean
function ServerConfig.get_AllowFireSpread() end

---@param value boolean
function ServerConfig.set_AllowFireSpread(value) end

---@return boolean
function ServerConfig.get_AllowFallingBlocks() end

---@param value boolean
function ServerConfig.set_AllowFallingBlocks(value) end

---@return boolean
function ServerConfig.get_HostedMode() end

---@param value boolean
function ServerConfig.set_HostedMode(value) end

---@return boolean
function ServerConfig.get_HostedModeAllowMods() end

---@param value boolean
function ServerConfig.set_HostedModeAllowMods(value) end

---@return string
function ServerConfig.get_StartupCommands() end

---@param value string
function ServerConfig.set_StartupCommands(value) end

---@return boolean
function ServerConfig.get_RepairMode() end

---@param value boolean
function ServerConfig.set_RepairMode(value) end

---@return boolean
function ServerConfig.get_AnalyzeMode() end

---@param value boolean
function ServerConfig.set_AnalyzeMode(value) end

---@return boolean
function ServerConfig.get_CorruptionProtection() end

---@param value boolean
function ServerConfig.set_CorruptionProtection(value) end

---@return boolean
function ServerConfig.get_RegenerateCorruptChunks() end

---@param value boolean
function ServerConfig.set_RegenerateCorruptChunks(value) end

---@return number
function ServerConfig.get_ChatRateLimitMs() end

---@param value number
function ServerConfig.set_ChatRateLimitMs(value) end

---@return number
function ServerConfig.get_DieBelowDiskSpaceMb() end

---@param value number
function ServerConfig.set_DieBelowDiskSpaceMb(value) end

---@return string
function ServerConfig.get_ModIdBlackList() end

---@param value string
function ServerConfig.set_ModIdBlackList(value) end

---@return string
function ServerConfig.get_ServerIdentifier() end

---@param value string
function ServerConfig.set_ServerIdentifier(value) end

---@return boolean
function ServerConfig.IsPasswordProtected() end

---@param server ServerMain
---@return number
function ServerConfig.GetMaxClients(server) end

---@param propertyName string
---@return userdata
function ServerConfig.Get(propertyName) end

---@param propertyName string
---@param value userdata
function ServerConfig.Set(propertyName, value) end

---@param serverargs StartServerArgs
function ServerConfig.ApplyStartServerArgs(serverargs) end

function ServerConfig.InitializeRoles() end

---@return userdata
function ServerConfig.GetType() end

---@return string
function ServerConfig.ToString() end

---@param obj userdata
---@return boolean
function ServerConfig.Equals(obj) end

---@return number
function ServerConfig.GetHashCode() end


