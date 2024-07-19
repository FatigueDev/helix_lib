---@meta

-- The servers configuration
---@class IServerConfig
---@field Port number The current network port 
---@field ServerName string Name of the server, currently not used
---@field WelcomeMessage string Displays when the user logs in.
---@field MaxClients number Max amount of concurrent players, any beyond will be denied to join
---@field Password string Password the player has to supply to join
---@field MaxChunkRadius number How many chunks in each direction should be loaded at most for each player (1 chunk = 32 blocks) 
---@field TickTime number Of often the server should tick in milliesconds
---@field BlockTickChunkRange number Horizontal distance in chunks from each player to tick blocks randomly
---@field MaxMainThreadBlockTicks number The maximum number of blocks to tick per server tick
---@field RandomBlockTicksPerChunk number The number of blocks to sample for ticks each pass within a single chunk
---@field BlockTickInterval number The interval of time in ms between each execution of the random tick system
---@field Roles table List of player roles 
---@field DefaultRoleCode string Default player role
---@field AntiAbuse EnumProtectionLevel AntiAbuse protection level. Use not recommended, it is very buggy at the moment
---@field OnlyWhitelisted boolean If true, only whitelisted players can join
---@field DefaultSpawn PlayerSpawnPos Default spawn position for players
---@field AllowPvP boolean Whether or not to allow Player versus Player
---@field AllowFireSpread boolean Whether or not fire should spread
---@field AllowFallingBlocks boolean Whether or not falling blocks should fall (e.g. sand and gravel) and floating single rock blocks should break
---@field HostedMode boolean Used to disable certain features in HostedMode (wgen commands, ...)
---@field HostedModeAllowMods boolean Used to enable/disable the /moddb commands in HostedMode only
---@field SpawnCapPlayerScaling number
IServerConfig = {}


---@return number
function IServerConfig.get_Port() end

---@return string
function IServerConfig.get_ServerName() end

---@param value string
function IServerConfig.set_ServerName(value) end

---@return string
function IServerConfig.get_WelcomeMessage() end

---@param value string
function IServerConfig.set_WelcomeMessage(value) end

---@return number
function IServerConfig.get_MaxClients() end

---@param value number
function IServerConfig.set_MaxClients(value) end

---@return string
function IServerConfig.get_Password() end

---@param value string
function IServerConfig.set_Password(value) end

---@return number
function IServerConfig.get_MaxChunkRadius() end

---@param value number
function IServerConfig.set_MaxChunkRadius(value) end

---@return number
function IServerConfig.get_TickTime() end

---@param value number
function IServerConfig.set_TickTime(value) end

---@return number
function IServerConfig.get_BlockTickChunkRange() end

---@param value number
function IServerConfig.set_BlockTickChunkRange(value) end

---@return number
function IServerConfig.get_MaxMainThreadBlockTicks() end

---@param value number
function IServerConfig.set_MaxMainThreadBlockTicks(value) end

---@return number
function IServerConfig.get_RandomBlockTicksPerChunk() end

---@param value number
function IServerConfig.set_RandomBlockTicksPerChunk(value) end

---@return number
function IServerConfig.get_BlockTickInterval() end

---@param value number
function IServerConfig.set_BlockTickInterval(value) end

---@return table
function IServerConfig.get_Roles() end

---@return string
function IServerConfig.get_DefaultRoleCode() end

---@param value string
function IServerConfig.set_DefaultRoleCode(value) end

---@return EnumProtectionLevel # How strongly the Server should protect against hacking
function IServerConfig.get_AntiAbuse() end

---@param value EnumProtectionLevel How strongly the Server should protect against hacking
function IServerConfig.set_AntiAbuse(value) end

---@return boolean
function IServerConfig.get_OnlyWhitelisted() end

---@param value boolean
function IServerConfig.set_OnlyWhitelisted(value) end

---@return PlayerSpawnPos
function IServerConfig.get_DefaultSpawn() end

---@param value PlayerSpawnPos
function IServerConfig.set_DefaultSpawn(value) end

---@return boolean
function IServerConfig.get_AllowPvP() end

---@param value boolean
function IServerConfig.set_AllowPvP(value) end

---@return boolean
function IServerConfig.get_AllowFireSpread() end

---@param value boolean
function IServerConfig.set_AllowFireSpread(value) end

---@return boolean
function IServerConfig.get_AllowFallingBlocks() end

---@param value boolean
function IServerConfig.set_AllowFallingBlocks(value) end

---@return boolean
function IServerConfig.get_HostedMode() end

---@param value boolean
function IServerConfig.set_HostedMode(value) end

---@return boolean
function IServerConfig.get_HostedModeAllowMods() end

---@param value boolean
function IServerConfig.set_HostedModeAllowMods(value) end

---@return number
function IServerConfig.get_SpawnCapPlayerScaling() end

---@param value number
function IServerConfig.set_SpawnCapPlayerScaling(value) end


