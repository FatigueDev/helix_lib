---@meta

---@class ServerMain: GameMain, GameMain, IShutDownMonitor, IServerWorldAccessor, IWorldIntersectionSupplier, IWorldAccessor
---@field World IWorldAccessor
---@field Seed number
---@field SavegameIdentifier string
---@field Suspended boolean
---@field ServerConsoleId number
---@field MainSockets NetServer[]
---@field Side EnumAppSide
---@field Api ICoreAPI
---@field Claims ILandClaimAPI
---@field DefaultSpawnPosition EntityPos
---@field BlockLightLevels number
---@field SunLightLevels number
---@field SeaLevel number
---@field SunBrightness number
---@field IsDedicatedServer boolean
---@field BlockAccessor IBlockAccessor
---@field BulkBlockAccessor IBulkBlockAccessor
---@field ElapsedMilliseconds number
---@field EntityTypes table
---@field EntityTypeCodes table
---@field DefaultEntityTrackingRange number
---@field RemappedEntities table
---@field TreeGenerators OrderedDictionary`2
---@field AllOnlinePlayers IPlayer[]
---@field AllPlayers IPlayer[]
---@field EntityDebugMode boolean
---@field CollisionTester CollisionTester
---@field MapSize Vec3i
---@field blockAccessor IBlockAccessor
---@field Calendar IGameCalendar
---@field ShuttingDown boolean
---@field LoadedChunkIndices number
---@field LoadedMapChunkIndices number
---@field WaterBlock Block
---@field InteresectionTester AABBIntersectionTest
---@field exit GameExit
---@field rand ThreadLocal`1
---@field Saving boolean
---@field SendChunks boolean
---@field AutoGenerateChunks boolean
---@field stopped boolean
---@field mapMiddleSpawnPos PlayerSpawnPos
---@field AssetManager AssetManager
---@field readyToAutoSave boolean
---@field Serverthreads table
---@field ServerThreadsCts CancellationTokenSource
---@field ModEventManager ServerEventManager
---@field EventManager CoreServerEventManager
---@field PlayerDataManager PlayerDataManager
---@field EntityPhysics ServerSystemEntityPhysics
---@field WorldMap ServerWorldMap
---@field Standalone boolean
---@field totalUnpausedTime Stopwatch
---@field totalUpTime Stopwatch
---@field AllPrivileges HashSet`1
---@field PrivilegeDescriptions table
---@field StatsCollector StatsCollection[]
---@field StatsCollectorIndex number
---@field Clients table
---@field PlayersByUid table
---@field TotalSentBytes number
---@field TotalReceivedBytes number
---@field Config ServerConfig
---@field ConfigNeedsSaving boolean
---@field DirtyBlockEntities ConcurrentQueue`1
---@field ModifiedBlocks ConcurrentQueue`1
---@field DirtyBlocks ConcurrentQueue`1
---@field ModifiedDecors ConcurrentQueue`1
---@field ModifiedBlocksNoRelight ConcurrentQueue`1
---@field ModifiedBlocksMinimal table
---@field UpdatedBlocks Queue`1
---@field TreeGeneratorsByTreeCode OrderedDictionary`2
---@field EntityTypesByCode OrderedDictionary`2
---@field nextFreeItemId number
---@field mainThreadTasksLock userdata
---@field serverStartArgs StartServerArgs
---@field progArgs ServerProgramArgs
---@field RawCmdLineArgs string
---@field TickPosition number
---@field ExitCode number
---@field Timers table
---@field DebugPrivileges boolean
---@field ClearPlayerInvs HashSet`1
---@field EntitySpawnSendQueue table
---@field EntityDespawnSendQueue table
---@field DelayedSpawnQueue ConcurrentQueue`1
---@field EntityCodeRemappings table
---@field requiresRemaps boolean
---@field xPlatInterface IXPlatformInterface
---@field Logger Logger
---@field ClassRegistry ClassRegistry
---@field FrameProfiler FrameProfilerUtil
---@field ItemsByCode table
ServerMain = {}

---@param serverargs StartServerArgs
---@param cmdlineArgsRaw string
---@param progArgs ServerProgramArgs
---@param isDedicatedServer? boolean
---@return ServerMain
function ServerMain.ctor(serverargs, cmdlineArgsRaw, progArgs, isDedicatedServer) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerMain.SendRoles(player) end

function ServerMain.BroadcastRoles() end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerMain.broadCastModeChange(player) end

---@param ofPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param skipSelf? boolean
function ServerMain.BroadcastHotbarSlot(ofPlayer, skipSelf) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param groupid number
---@param message string
function ServerMain.HandleChatMessage(player, groupid, message) end

---@return IWorldAccessor # Important interface to access the game world.
function ServerMain.get_World() end

---@return number
function ServerMain.get_Seed() end

---@return string
function ServerMain.get_SavegameIdentifier() end

---@return boolean
function ServerMain.get_Suspended() end

---@return number
function ServerMain.get_ServerConsoleId() end

---@return NetServer[]
function ServerMain.get_MainSockets() end

---@param value NetServer[]
function ServerMain.set_MainSockets(value) end

---@return EnumAppSide
function ServerMain.get_Side() end

---@return ICoreAPI # Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function ServerMain.get_Api() end

---@return ILandClaimAPI
function ServerMain.get_Claims() end

---@param name string
---@param modsystem IAsyncServerSystem Mods can create server threads to carry out an asynchronous process, by implementing this interface and calling IServerApi.AddServerThread()
function ServerMain.AddServerThread(name, modsystem) end

function ServerMain.StandbyLaunch() end

function ServerMain.Launch() end

function ServerMain.AfterConfigLoaded() end

function ServerMain.Process() end

function ServerMain.ProcessMain() end

---@param newSuspendState boolean
---@param maxWaitMilliseconds? number
---@return boolean
function ServerMain.Suspend(newSuspendState, maxWaitMilliseconds) end

---@param reason string
---@param timeout number
function ServerMain.AttemptShutdown(reason, timeout) end

---@param reason string
function ServerMain.Stop(reason) end

function ServerMain.Dispose() end

---@return boolean
function ServerMain.DidExit() end

---@param message string
function ServerMain.ReceiveServerConsole(message) end

---@return string
function ServerMain.GetSaveFilename() end

---@return number
function ServerMain.GenerateClientId() end

---@param client ConnectedClient
---@param othersKickmessage? string
---@param hisKickMessage? string
function ServerMain.DisconnectPlayer(client, othersKickmessage, hisKickMessage) end

---@param client ConnectedClient
---@return number
function ServerMain.GetAllowedChunkRadius(client) end

---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function ServerMain.get_DefaultSpawnPosition() end

---@param playerUID? string
---@param onlyGlobalDefaultSpawn? boolean
---@param consumeSpawn? boolean
---@return FuzzyEntityPos
function ServerMain.GetSpawnPosition(playerUID, onlyGlobalDefaultSpawn, consumeSpawn) end

---@param client ConnectedClient
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function ServerMain.GetJoinPosition(client) end

---@param playerName string
---@return ConnectedClient
function ServerMain.GetClientByPlayername(playerName) end

---@param targetPlayerName string
---@param onPlayerReceived function
function ServerMain.GetOnlineOrOfflinePlayer(targetPlayerName, onPlayerReceived) end

---@param targetPlayeruid string
---@param onPlayerReceived function
function ServerMain.GetOnlineOrOfflinePlayerByUid(targetPlayeruid, onPlayerReceived) end

---@param id number
---@return ConnectedClient
function ServerMain.GetClient(id) end

---@param playerUID string
---@return ConnectedClient
function ServerMain.GetClientByUID(playerUID) end

---@param block Block Basic class for a placeable block
function ServerMain.RegisterBlock(block) end

---@param itemId number
---@return Item # Represents an in game Item of Vintage Story
function ServerMain.GetItem(itemId) end

---@param blockId number
---@return Block # Basic class for a placeable block
function ServerMain.GetBlock(blockId) end

---@param entityCode AssetLocation Defines a complete path to an assets, including it's domain
---@return EntityProperties
function ServerMain.GetEntityType(entityCode) end

---@return number
function ServerMain.get_BlockLightLevels() end

---@return number
function ServerMain.get_SunLightLevels() end

---@return number
function ServerMain.get_SeaLevel() end

---@return number
function ServerMain.get_SunBrightness() end

---@param seaLevel number
function ServerMain.SetSeaLevel(seaLevel) end

---@param lightLevels number
function ServerMain.SetBlockLightLevels(lightLevels) end

---@param lightLevels number
function ServerMain.SetSunLightLevels(lightLevels) end

---@return boolean
function ServerMain.get_IsDedicatedServer() end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function ServerMain.get_BlockAccessor() end

---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function ServerMain.get_BulkBlockAccessor() end

---@return number
function ServerMain.get_ElapsedMilliseconds() end

---@return table
function ServerMain.get_EntityTypes() end

---@return table
function ServerMain.get_EntityTypeCodes() end

---@return number
function ServerMain.get_DefaultEntityTrackingRange() end

---@return table
function ServerMain.get_RemappedEntities() end

---@return OrderedDictionary`2 # Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
function ServerMain.get_TreeGenerators() end

---@return IPlayer[] # Represents a player
function ServerMain.get_AllOnlinePlayers() end

---@return IPlayer[] # Represents a player
function ServerMain.get_AllPlayers() end

---@return boolean
function ServerMain.get_EntityDebugMode() end

---@return CollisionTester
function ServerMain.get_CollisionTester() end

---@param playerUID string
---@return ConnectedClient
function ServerMain.GetConnectedClient(playerUID) end

---@param playerUID string
---@return IWorldPlayerData # Some world-specific information about a connected player. If you want modify any value, also broadcast the playerdata to all connected clients. This is the object that stored and loaded with the save game
function ServerMain.GetWorldPlayerData(playerUID) end

---@param playerName string
---@return ServerPlayerData
function ServerMain.FindServerPlayerDataByLastKnownPlayerName(playerName) end

---@param playeruid string
---@return ServerPlayerData
function ServerMain.GetServerPlayerData(playeruid) end

---@param clientid number
---@param privilege string
---@return boolean
function ServerMain.PlayerHasPrivilege(clientid, privilege) end

---@param location string
---@param atPlayer IPlayer Represents a player
---@param ignorePlayerUID? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function ServerMain.PlaySoundAt(location, atPlayer, ignorePlayerUID, randomizePitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param posx number
---@param posy number
---@param posz number
---@param dualCallByPlayer IPlayer Represents a player
---@param soundType EnumSoundType
---@param pitch number
---@param range? number
---@param volume? number
function ServerMain.PlaySoundAt(location, posx, posy, posz, dualCallByPlayer, soundType, pitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param entity Entity The basic class for all entities in the game
---@param dualCallByPlayer? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function ServerMain.PlaySoundAt(location, entity, dualCallByPlayer, randomizePitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param atPlayer IPlayer Represents a player
---@param ignorePlayerUID? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function ServerMain.PlaySoundAt(location, atPlayer, ignorePlayerUID, randomizePitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param entity Entity The basic class for all entities in the game
---@param ignorePlayerUID IPlayer Represents a player
---@param pitch number
---@param range? number
---@param volume? number
function ServerMain.PlaySoundAt(location, entity, ignorePlayerUID, pitch, range, volume) end

---@param location string
---@param posx number
---@param posy number
---@param posz number
---@param ignorePlayerUID? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function ServerMain.PlaySoundAt(location, posx, posy, posz, ignorePlayerUID, randomizePitch, range, volume) end

---@param location string
---@param entity Entity The basic class for all entities in the game
---@param dualCallByPlayer? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function ServerMain.PlaySoundAt(location, entity, dualCallByPlayer, randomizePitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param posx number
---@param posy number
---@param posz number
---@param ignorePlayerUID? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function ServerMain.PlaySoundAt(location, posx, posy, posz, ignorePlayerUID, randomizePitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param posx number
---@param posy number
---@param posz number
---@param ignorePlayerUID IPlayer Represents a player
---@param pitch number
---@param range? number
---@param volume? number
function ServerMain.PlaySoundAt(location, posx, posy, posz, ignorePlayerUID, pitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param forPlayer IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
function ServerMain.PlaySoundFor(location, forPlayer, randomizePitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param forPlayer IPlayer Represents a player
---@param pitch number
---@param range? number
---@param volume? number
function ServerMain.PlaySoundFor(location, forPlayer, pitch, range, volume) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param posx number
---@param posy number
---@param posz number
---@param clientId? Nullable`1
---@param pitch? number
---@param range? number
---@param volume? number
---@param soundType? EnumSoundType
function ServerMain.PlaySoundAtExceptPlayer(location, posx, posy, posz, clientId, pitch, range, volume, soundType) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ServerMain.TriggerNeighbourBlocksUpdate(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function ServerMain.IsValidPos(pos) end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ServerMain.get_MapSize() end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function ServerMain.GetBlockIntersectionBoxes(pos) end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function ServerMain.get_blockAccessor() end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function ServerMain.GetBlock(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function ServerMain.IsFullyLoadedChunk(pos) end

---@param itemstack ItemStack
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param velocity? Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Entity # The basic class for all entities in the game
function ServerMain.SpawnItemEntity(itemstack, position, velocity) end

---@param entity Entity The basic class for all entities in the game
function ServerMain.SpawnEntity(entity) end

---@param entity Entity The basic class for all entities in the game
---@param type EntityProperties
function ServerMain.SpawnEntity(entity, type) end

---@return number
function ServerMain.GetNextHerdId() end

---@param entity Entity The basic class for all entities in the game
---@param despawnData EntityDespawnData
function ServerMain.DespawnEntity(entity, despawnData) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRange number
---@param vertRange number
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity # The basic class for all entities in the game
function ServerMain.GetNearestEntity(position, horRange, vertRange, matches) end

---@param entityId number
---@return Entity # The basic class for all entities in the game
function ServerMain.GetEntityById(entityId) end

---@param OnGameTick function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ServerMain.RegisterGameTickListener(OnGameTick, millisecondInterval, initialDelayOffsetMs) end

---@param OnGameTick function
---@param errorHandler function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ServerMain.RegisterGameTickListener(OnGameTick, errorHandler, millisecondInterval, initialDelayOffsetMs) end

---@param OnTimePassed function
---@param millisecondDelay number
---@return number
function ServerMain.RegisterCallback(OnTimePassed, millisecondDelay) end

---@param OnGameTick function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function ServerMain.RegisterGameTickListener(OnGameTick, pos, millisecondInterval, initialDelayOffsetMs) end

---@param OnTimePassed function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondDelay number
---@return number
function ServerMain.RegisterCallback(OnTimePassed, pos, millisecondDelay) end

---@param OnGameTick function
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param millisecondInterval number
---@return number
function ServerMain.RegisterCallbackUnique(OnGameTick, pos, millisecondInterval) end

---@param listenerId number
function ServerMain.UnregisterCallback(listenerId) end

---@param listenerId number
function ServerMain.UnregisterGameTickListener(listenerId) end

---@param quantity number
---@param color number
---@param minPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param maxPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param minVelocity Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param maxVelocity Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param lifeLength number
---@param gravityEffect number
---@param scale? number
---@param model? EnumParticleModel
---@param dualCallByPlayer? IPlayer Represents a player
function ServerMain.SpawnParticles(quantity, color, minPos, maxPos, minVelocity, maxVelocity, lifeLength, gravityEffect, scale, model, dualCallByPlayer) end

---@param provider IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
---@param dualCallByPlayer? IPlayer Represents a player
function ServerMain.SpawnParticles(provider, dualCallByPlayer) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param stack ItemStack
---@param radius number
---@param quantity number
---@param scale? number
---@param dualCallByPlayer? IPlayer Represents a player
---@param velocity? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ServerMain.SpawnCubeParticles(pos, stack, radius, quantity, scale, dualCallByPlayer, velocity) end

---@param blockpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param radius number
---@param quantity number
---@param scale? number
---@param dualCallByPlayer? IPlayer Represents a player
---@param velocity? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ServerMain.SpawnCubeParticles(blockpos, pos, radius, quantity, scale, dualCallByPlayer, velocity) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blastType EnumBlastType
---@param destructionRadius number
---@param injureRadius number
---@param blockDropChanceMultiplier? number
function ServerMain.CreateExplosion(pos, blastType, destructionRadius, injureRadius, blockDropChanceMultiplier) end

---@param clientID number
---@return IWorldPlayerData # Some world-specific information about a connected player. If you want modify any value, also broadcast the playerdata to all connected clients. This is the object that stored and loaded with the save game
function ServerMain.GetWorldPlayerData(clientID) end

---@param x number
---@param y number
---@param z number
---@return IPlayer # Represents a player
function ServerMain.NearestPlayer(x, y, z) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRange number
---@param vertRange number
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return IPlayer[] # Represents a player
function ServerMain.GetPlayersAround(position, horRange, vertRange, matches) end

---@param playerUid string
---@return IPlayer # Represents a player
function ServerMain.PlayerByUid(playerUid) end

---@param task function
function ServerMain.EnqueueMainThreadTask(task) end

function ServerMain.ProcessMainThreadTasks() end

---@param player IPlayer Represents a player
---@param slotId number
---@param blocks table
---@param colors table
---@param mode? EnumHighlightBlocksMode
---@param shape? EnumHighlightShape
---@param scale? number
function ServerMain.HighlightBlocks(player, slotId, blocks, colors, mode, shape, scale) end

---@param player IPlayer Represents a player
---@param slotId number
---@param blocks table
---@param mode? EnumHighlightBlocksMode
---@param shape? EnumHighlightShape
function ServerMain.HighlightBlocks(player, slotId, blocks, mode, shape) end

---@param centerPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param radius number
---@param tries number
---@param testThisPosition function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param onSearchOver function
function ServerMain.LocateRandomPosition(centerPos, radius, tries, testThisPosition, onSearchOver) end

---@param data number
---@param players IServerPlayer[] Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerMain.SendArbitraryPacket(data, players) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param x number
---@param y number
---@param z number
---@param packetId number
---@param data? number
function ServerMain.SendBlockEntityMessagePacket(player, x, y, z, packetId, data) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param entityId number
---@param packetId number
---@param data? number
function ServerMain.SendEntityPacket(player, entityId, packetId, data) end

---@param entityId number
---@param packetId number
---@param data? number
function ServerMain.BroadcastEntityPacket(entityId, packetId, data) end

---@param x number
---@param y number
---@param z number
---@param packetId number
---@param data? number
function ServerMain.BroadcastBlockEntityPacket(x, y, z, packetId, data) end

---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param exceptPlayer? IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param data? string
function ServerMain.SendMessageToGeneral(message, chatType, exceptPlayer, data) end

---@param groupid number
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param exceptPlayer? IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param data? string
function ServerMain.SendMessageToGroup(groupid, message, chatType, exceptPlayer, data) end

---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ServerMain.BroadcastMessageToAllGroups(message, chatType, data) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ServerMain.SendMessageToCurrentCh(player, message, chatType, data) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ServerMain.ReplyMessage(player, message, chatType, data) end

---@param caller Caller
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ServerMain.SendMessage(caller, message, chatType, data) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param groupid number
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ServerMain.SendMessage(player, groupid, message, chatType, data) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param errorCode string
---@param text? string
---@param langparams userdata
function ServerMain.SendIngameError(player, errorCode, text, langparams) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param discoveryCode string
---@param text? string
---@param langparams userdata
function ServerMain.SendIngameDiscovery(player, discoveryCode, text, langparams) end

---@param p Packet_Server
---@return number
function ServerMain.Serialize(p) end

---@param positions table
---@param packetId number
function ServerMain.SendSetBlocksPacket(positions, packetId) end

---@param positions table
function ServerMain.SendSetDecorsPackets(positions) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param slotId number
---@param justBlocks table
---@param colors table
---@param mode EnumHighlightBlocksMode
---@param shape EnumHighlightShape
---@param scale? number
function ServerMain.SendHighlightBlocksPacket(player, slotId, justBlocks, colors, mode, shape, scale) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param x number
---@param y number
---@param z number
---@param pitch number
---@param range number
---@param volume number
---@param soundType? EnumSoundType
function ServerMain.SendSound(player, location, x, y, z, pitch, range, volume, soundType) end

---@param packet Packet_Server
---@param skipPlayers IServerPlayer[] Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerMain.BroadcastPacket(packet, skipPlayers) end

---@param clientId number
---@param packet Packet_Server
function ServerMain.SendPacket(clientId, packet) end

---@param clientId number
---@param packet Packet_Server
function ServerMain.SendPacketFast(clientId, packet) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param packet Packet_Server
function ServerMain.SendPacket(player, packet) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerMain.SendServerAssets(player) end

---@param owningPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param sendInventory? boolean
---@param sendPrivileges? boolean
function ServerMain.BroadcastPlayerData(owningPlayer, sendInventory, sendPrivileges) end

---@param owningPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param sendInventory? boolean
---@param sendPrivileges? boolean
function ServerMain.SendOwnPlayerData(owningPlayer, sendInventory, sendPrivileges) end

---@param owningPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param toPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerMain.SendInitialPlayerDataForOthers(owningPlayer, toPlayer) end

function ServerMain.BroadcastPlayerPings() end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param host string
---@param name string
function ServerMain.SendServerRedirect(player, host, name) end

---@return IGameCalendar # Main API for retrieving anything calender or astronomy related
function ServerMain.get_Calendar() end

---@param entitybehavior IServerPhysicsTicker
function ServerMain.AddPhysicsTick(entitybehavior) end

---@param dimension IMiniDimension Provides read/write access to the blocks of a movable mini-dimension. 
---@param index number
---@return number
function ServerMain.SetMiniDimension(dimension, index) end

---@return boolean
function ServerMain.get_ShuttingDown() end

---@return number
function ServerMain.get_LoadedChunkIndices() end

---@return number
function ServerMain.get_LoadedMapChunkIndices() end

---@param index3d number
---@return ServerChunk
function ServerMain.GetLoadedChunk(index3d) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param onlyIfInRange boolean
function ServerMain.SendChunk(chunkX, chunkY, chunkZ, player, onlyIfInRange) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param onlyIfInRange boolean
function ServerMain.BroadcastChunk(chunkX, chunkY, chunkZ, onlyIfInRange) end

---@param chunkX number
---@param chunkZ number
---@param onlyIfInRange boolean
function ServerMain.BroadcastChunkColumn(chunkX, chunkZ, onlyIfInRange) end

---@param chunkX number
---@param chunkZ number
---@param onlyIfInRange boolean
function ServerMain.ResendMapChunk(chunkX, chunkZ, onlyIfInRange) end

---@param chunkX number
---@param chunkZ number
---@param options? ChunkLoadOptions
function ServerMain.LoadChunkColumnFast(chunkX, chunkZ, options) end

---@param chunkX1 number
---@param chunkZ1 number
---@param chunkX2 number
---@param chunkZ2 number
---@param options? ChunkLoadOptions
function ServerMain.LoadChunkColumnFast(chunkX1, chunkZ1, chunkX2, chunkZ2, options) end

---@param chunkX number
---@param chunkZ number
---@param options ChunkPeekOptions
function ServerMain.PeekChunkColumn(chunkX, chunkZ, options) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param onTested function
---@param type EnumChunkType
function ServerMain.TestChunkExists(chunkX, chunkY, chunkZ, onTested, type) end

---@param chunkX number
---@param chunkZ number
---@param keepLoaded? boolean
function ServerMain.LoadChunkColumn(chunkX, chunkZ, keepLoaded) end

---@param mapindex2d number
function ServerMain.AddChunkColumnToForceLoadedList(mapindex2d) end

---@param mapindex2d number
function ServerMain.RemoveChunkColumnFromForceLoadedList(mapindex2d) end

---@param chunkX number
---@param chunkZ number
---@return boolean
function ServerMain.IsChunkColumnFullyLoaded(chunkX, chunkZ) end

---@return Block # Basic class for a placeable block
function ServerMain.get_WaterBlock() end

---@param value Block Basic class for a placeable block
function ServerMain.set_WaterBlock(value) end

---@return number
function ServerMain.RandomPitch() end

---@param code string
---@return RecipeRegistryBase
function ServerMain.GetRecipeRegistry(code) end

---@param recipeRegistryCode string
---@return T
function ServerMain.RegisterRecipeRegistry(recipeRegistryCode) end

---@return AABBIntersectionTest
function ServerMain.get_InteresectionTester() end

---@param supplier IWorldIntersectionSupplier
---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param toPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function ServerMain.RayTraceForSelection(supplier, fromPos, toPos, blockSelection, entitySelection, bfilter, efilter) end

---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param toPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function ServerMain.RayTraceForSelection(fromPos, toPos, blockSelection, entitySelection, bfilter, efilter) end

---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param pitch number
---@param yaw number
---@param range number
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function ServerMain.RayTraceForSelection(fromPos, pitch, yaw, range, blockSelection, entitySelection, bfilter, efilter) end

---@param ray Ray
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function ServerMain.RayTraceForSelection(ray, blockSelection, entitySelection, bfilter, efilter) end

---@param supplier IWorldIntersectionSupplier
---@param ray Ray
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function ServerMain.RayTraceForSelection(supplier, ray, blockSelection, entitySelection, bfilter, efilter) end

---@param player IPlayer Represents a player
---@param blockSelection BlockSelection&
---@param entitySelection EntitySelection&
---@param bfilter? BlockFilter
---@param efilter? EntityFilter
function ServerMain.RayTraceForSelection(player, blockSelection, entitySelection, bfilter, efilter) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param pitch number
---@param yaw number
---@param pickingRange number
---@return Ray
function ServerMain.GetPickingRay(pos, pitch, yaw, pickingRange) end

---@param fromPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param toPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Ray
function ServerMain.GetPickingRay(fromPos, toPos) end

---@param basePos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param collisionBoxes Cuboidf[] Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function ServerMain.GetIntersectingEntities(basePos, collisionBoxes, matches) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRange number
---@param vertRange number
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function ServerMain.GetEntitiesAround(position, horRange, vertRange, matches) end

---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param endPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function ServerMain.GetEntitiesInsideCuboid(startPos, endPos, matches) end

---@param itemCode AssetLocation Defines a complete path to an assets, including it's domain
---@return Item # Represents an in game Item of Vintage Story
function ServerMain.GetItem(itemCode) end

---@param blockCode AssetLocation Defines a complete path to an assets, including it's domain
---@return Block # Basic class for a placeable block
function ServerMain.GetBlock(blockCode) end

---@param wildcard AssetLocation Defines a complete path to an assets, including it's domain
---@return Block[] # Basic class for a placeable block
function ServerMain.SearchBlocks(wildcard) end

---@param wildcard AssetLocation Defines a complete path to an assets, including it's domain
---@return Item[] # Represents an in game Item of Vintage Story
function ServerMain.SearchItems(wildcard) end

---@param synchronize boolean
---@param relight boolean
---@return ICachingBlockAccessor
function ServerMain.GetCachingBlockAccessor(synchronize, relight) end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function ServerMain.GetLockFreeBlockAccessor() end

---@param synchronize boolean
---@param relight boolean
---@param strict boolean
---@param debug? boolean
---@return IBlockAccessor # Provides read/write access to the blocks of a world
function ServerMain.GetBlockAccessor(synchronize, relight, strict, debug) end

---@param synchronize boolean
---@param relight boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function ServerMain.GetBlockAccessorBulkUpdate(synchronize, relight, debug) end

---@param synchronize boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function ServerMain.GetBlockAccessorBulkMinimalUpdate(synchronize, debug) end

---@param synchronize boolean
---@param relight boolean
---@param debug? boolean
---@return IBlockAccessorRevertable # Provides read/write access to the blocks of a world. 
function ServerMain.GetBlockAccessorRevertable(synchronize, relight, debug) end

---@param synchronize boolean
---@param relight boolean
---@return IBlockAccessorPrefetch # Useful for when you have to scan multiple times over the same set of blocks
function ServerMain.GetBlockAccessorPrefetch(synchronize, relight) end

---@param synchronize boolean
---@param debug? boolean
---@return IBulkBlockAccessor # Useful for setting many blocks at once efficiently
function ServerMain.GetBlockAccessorMapChunkLoading(synchronize, debug) end

---@return userdata
function ServerMain.GetType() end

---@return string
function ServerMain.ToString() end

---@param obj userdata
---@return boolean
function ServerMain.Equals(obj) end

---@return number
function ServerMain.GetHashCode() end


