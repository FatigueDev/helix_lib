---@meta ServerMain
---@class ServerMain: GameMain
---@field ctor fun(serverargs: StartServerArgs, cmdlineArgsRaw: string[], progArgs: ServerProgramArgs, isDedicatedServer: boolean): ServerMain
---@field SendRoles fun(player: IServerPlayer): nil
---@field BroadcastRoles fun(): nil
---@field broadCastModeChange fun(player: IServerPlayer): nil
---@field BroadcastHotbarSlot fun(ofPlayer: IServerPlayer, skipSelf: boolean): nil
---@field HandleChatMessage fun(player: IServerPlayer, groupid: number, message: string): nil
---@field get_World fun(): IWorldAccessor
---@field get_Seed fun(): number
---@field get_SavegameIdentifier fun(): string
---@field get_Suspended fun(): boolean
---@field get_ServerConsoleId fun(): number
---@field get_MainSockets fun(): NetServer[]
---@field set_MainSockets fun(value: NetServer[]): nil
---@field get_Side fun(): EnumAppSide
---@field get_Api fun(): ICoreAPI
---@field get_Claims fun(): ILandClaimAPI
---@field AddServerThread fun(name: string, modsystem: IAsyncServerSystem): nil
---@field StandbyLaunch fun(): nil
---@field Launch fun(): nil
---@field AfterConfigLoaded fun(): nil
---@field Process fun(): nil
---@field ProcessMain fun(): nil
---@field Suspend fun(newSuspendState: boolean, maxWaitMilliseconds: number): boolean
---@field AttemptShutdown fun(reason: string, timeout: number): nil
---@field Stop fun(reason: string): nil
---@field Dispose fun(): nil
---@field DidExit fun(): boolean
---@field ReceiveServerConsole fun(message: string): nil
---@field GetSaveFilename fun(): string
---@field GenerateClientId fun(): number
---@field DisconnectPlayer fun(client: ConnectedClient, othersKickmessage: string, hisKickMessage: string): nil
---@field GetAllowedChunkRadius fun(client: ConnectedClient): number
---@field get_DefaultSpawnPosition fun(): EntityPos
---@field GetSpawnPosition fun(playerUID: string, onlyGlobalDefaultSpawn: boolean, consumeSpawn: boolean): FuzzyEntityPos
---@field GetJoinPosition fun(client: ConnectedClient): EntityPos
---@field GetClientByPlayername fun(playerName: string): ConnectedClient
---@field GetOnlineOrOfflinePlayer fun(targetPlayerName: string, onPlayerReceived: Action`2): nil
---@field GetOnlineOrOfflinePlayerByUid fun(targetPlayeruid: string, onPlayerReceived: Action`2): nil
---@field GetClient fun(id: number): ConnectedClient
---@field GetClientByUID fun(playerUID: string): ConnectedClient
---@field RegisterBlock fun(block: Block): nil
---@field GetItem fun(itemId: number): Item
---@field GetBlock fun(blockId: number): Block
---@field GetEntityType fun(entityCode: AssetLocation): EntityProperties
---@field get_BlockLightLevels fun(): Single[]
---@field get_SunLightLevels fun(): Single[]
---@field get_SeaLevel fun(): number
---@field get_SunBrightness fun(): number
---@field SetSeaLevel fun(seaLevel: number): nil
---@field SetBlockLightLevels fun(lightLevels: Single[]): nil
---@field SetSunLightLevels fun(lightLevels: Single[]): nil
---@field get_IsDedicatedServer fun(): boolean
---@field get_BlockAccessor fun(): IBlockAccessor
---@field get_BulkBlockAccessor fun(): IBulkBlockAccessor
---@field get_ElapsedMilliseconds fun(): Int64
---@field get_EntityTypes fun(): any[]
---@field get_EntityTypeCodes fun(): any[]
---@field get_DefaultEntityTrackingRange fun(): number
---@field get_RemappedEntities fun(): table<any, any>
---@field get_TreeGenerators fun(): Orderedtable<any, any>
---@field get_AllOnlinePlayers fun(): IPlayer[]
---@field get_AllPlayers fun(): IPlayer[]
---@field get_EntityDebugMode fun(): boolean
---@field get_CollisionTester fun(): CollisionTester
---@field GetConnectedClient fun(playerUID: string): ConnectedClient
---@field GetWorldPlayerData fun(playerUID: string): IWorldPlayerData
---@field FindServerPlayerDataByLastKnownPlayerName fun(playerName: string): ServerPlayerData
---@field GetServerPlayerData fun(playeruid: string): ServerPlayerData
---@field PlayerHasPrivilege fun(clientid: number, privilege: string): boolean
---@field PlaySoundAt fun(location: string, atPlayer: IPlayer, ignorePlayerUID: IPlayer, randomizePitch: boolean, range: Single, volume: Single): nil
---@overload fun(location: AssetLocation, posx: Double, posy: Double, posz: Double, dualCallByPlayer: IPlayer, soundType: EnumSoundany, pitch: Single, range: Single, volume: Single): nil
---@overload fun(location: AssetLocation, entity: Entity, dualCallByPlayer: IPlayer, randomizePitch: boolean, range: Single, volume: Single): nil
---@overload fun(location: AssetLocation, atPlayer: IPlayer, ignorePlayerUID: IPlayer, randomizePitch: boolean, range: Single, volume: Single): nil
---@overload fun(location: AssetLocation, entity: Entity, ignorePlayerUID: IPlayer, pitch: Single, range: Single, volume: Single): nil
---@overload fun(location: string, posx: Double, posy: Double, posz: Double, ignorePlayerUID: IPlayer, randomizePitch: boolean, range: Single, volume: Single): nil
---@overload fun(location: string, entity: Entity, dualCallByPlayer: IPlayer, randomizePitch: boolean, range: Single, volume: Single): nil
---@overload fun(location: AssetLocation, posx: Double, posy: Double, posz: Double, ignorePlayerUID: IPlayer, randomizePitch: boolean, range: Single, volume: Single): nil
---@overload fun(location: AssetLocation, posx: Double, posy: Double, posz: Double, ignorePlayerUID: IPlayer, pitch: Single, range: Single, volume: Single): nil
---@field PlaySoundFor fun(location: AssetLocation, forPlayer: IPlayer, randomizePitch: boolean, range: Single, volume: Single): nil
---@overload fun(location: AssetLocation, forPlayer: IPlayer, pitch: Single, range: Single, volume: Single): nil
---@field PlaySoundAtExceptPlayer fun(location: AssetLocation, posx: Double, posy: Double, posz: Double, clientId: Nullable`1, pitch: Single, range: Single, volume: Single, soundType: EnumSoundany): nil
---@field TriggerNeighbourBlocksUpdate fun(pos: BlockPos): nil
---@field IsValidPos fun(pos: BlockPos): boolean
---@field get_MapSize fun(): Vec3i
---@field GetBlockIntersectionBoxes fun(pos: BlockPos): Cuboidf[]
---@field get_blockAccessor fun(): IBlockAccessor
---@field GetBlock fun(pos: BlockPos): Block
---@field IsFullyLoadedChunk fun(pos: BlockPos): boolean
---@field SpawnItemEntity fun(itemstack: ItemStack, position: Vec3d, velocity: Vec3d): Entity
---@field SpawnEntity fun(entity: Entity): nil
---@overload fun(entity: Entity, type: EntityProperties): nil
---@field GetNextHerdId fun(): Int64
---@field DespawnEntity fun(entity: Entity, despawnData: EntityDespawnData): nil
---@field GetNearestEntity fun(position: Vec3d, horRange: Single, vertRange: Single, matches: ActionConsumable`1): Entity
---@field GetEntityById fun(entityId: Int64): Entity
---@field RegisterGameTickListener fun(OnGameTick: any`1, millisecondInterval: number, initialDelayOffsetMs: number): Int64
---@overload fun(OnGameTick: any`1, errorHandler: any`1, millisecondInterval: number, initialDelayOffsetMs: number): Int64
---@field RegisterCallback fun(OnTimePassed: any`1, millisecondDelay: number): Int64
---@overload fun(OnGameTick: Action`3, pos: BlockPos, millisecondInterval: number, initialDelayOffsetMs: number): Int64
---@overload fun(OnTimePassed: Action`3, pos: BlockPos, millisecondDelay: number): Int64
---@field RegisterCallbackUnique fun(OnGameTick: Action`3, pos: BlockPos, millisecondInterval: number): Int64
---@field UnregisterCallback fun(listenerId: Int64): nil
---@field UnregisterGameTickListener fun(listenerId: Int64): nil
---@field SpawnParticles fun(quantity: Single, color: number, minPos: Vec3d, maxPos: Vec3d, minVelocity: Vec3f, maxVelocity: Vec3f, lifeLength: Single, gravityEffect: Single, scale: Single, model: EnumParticleModel, dualCallByPlayer: IPlayer): nil
---@overload fun(provider: IParticlePropertiesProvider, dualCallByPlayer: IPlayer): nil
---@field SpawnCubeParticles fun(pos: Vec3d, stack: ItemStack, radius: Single, quantity: number, scale: Single, dualCallByPlayer: IPlayer, velocity: Vec3f): nil
---@overload fun(blockpos: BlockPos, pos: Vec3d, radius: Single, quantity: number, scale: Single, dualCallByPlayer: IPlayer, velocity: Vec3f): nil
---@field CreateExplosion fun(pos: BlockPos, blastType: EnumBlastany, destructionRadius: Double, injureRadius: Double, blockDropChanceMultiplier: Single): nil
---@field GetWorldPlayerData fun(clientID: number): IWorldPlayerData
---@field NearestPlayer fun(x: Double, y: Double, z: Double): IPlayer
---@field GetPlayersAround fun(position: Vec3d, horRange: Single, vertRange: Single, matches: ActionConsumable`1): IPlayer[]
---@field PlayerByUid fun(playerUid: string): IPlayer
---@field EnqueueMainThreadTask fun(task: Action): nil
---@field ProcessMainThreadTasks fun(): nil
---@field HighlightBlocks fun(player: IPlayer, slotId: number, blocks: any[], colors: any[], mode: EnumHighlightBlocksMode, shape: EnumHighlightShape, scale: Single): nil
---@overload fun(player: IPlayer, slotId: number, blocks: any[], mode: EnumHighlightBlocksMode, shape: EnumHighlightShape): nil
---@field LocateRandomPosition fun(centerPos: Vec3d, radius: Single, tries: number, testThisPosition: ActionConsumable`1, onSearchOver: any`1): nil
---@field SendArbitraryPacket fun(data: number[], players: IServerPlayer[]): nil
---@field SendBlockEntityMessagePacket fun(player: IServerPlayer, x: number, y: number, z: number, packetId: number, data: number[]): nil
---@field SendEntityPacket fun(player: IServerPlayer, entityId: Int64, packetId: number, data: number[]): nil
---@field BroadcastEntityPacket fun(entityId: Int64, packetId: number, data: number[]): nil
---@field BroadcastBlockEntityPacket fun(x: number, y: number, z: number, packetId: number, data: number[]): nil
---@field SendMessageToGeneral fun(message: string, chatType: EnumChatany, exceptPlayer: IServerPlayer, data: string): nil
---@field SendMessageToGroup fun(groupid: number, message: string, chatType: EnumChatany, exceptPlayer: IServerPlayer, data: string): nil
---@field BroadcastMessageToAllGroups fun(message: string, chatType: EnumChatany, data: string): nil
---@field SendMessageToCurrentCh fun(player: IServerPlayer, message: string, chatType: EnumChatany, data: string): nil
---@field ReplyMessage fun(player: IServerPlayer, message: string, chatType: EnumChatany, data: string): nil
---@field SendMessage fun(caller: Caller, message: string, chatType: EnumChatany, data: string): nil
---@overload fun(player: IServerPlayer, groupid: number, message: string, chatType: EnumChatany, data: string): nil
---@field SendIngameError fun(player: IServerPlayer, errorCode: string, text: string, langparams: table[]): nil
---@field SendIngameDiscovery fun(player: IServerPlayer, discoveryCode: string, text: string, langparams: table[]): nil
---@field Serialize fun(p: Packet_Server): number[]
---@field SendSetBlocksPacket fun(positions: any[], packetId: number): nil
---@field SendSetDecorsPackets fun(positions: any[]): nil
---@field SendHighlightBlocksPacket fun(player: IServerPlayer, slotId: number, justBlocks: any[], colors: any[], mode: EnumHighlightBlocksMode, shape: EnumHighlightShape, scale: Single): nil
---@field SendSound fun(player: IServerPlayer, location: AssetLocation, x: Double, y: Double, z: Double, pitch: Single, range: Single, volume: Single, soundType: EnumSoundany): nil
---@field BroadcastPacket fun(packet: Packet_Server, skipPlayers: IServerPlayer[]): nil
---@field SendPacket fun(clientId: number, packet: Packet_Server): nil
---@field SendPacketFast fun(clientId: number, packet: Packet_Server): nil
---@field SendPacket fun(player: IServerPlayer, packet: Packet_Server): nil
---@field SendServerAssets fun(player: IServerPlayer): nil
---@field BroadcastPlayerData fun(owningPlayer: IServerPlayer, sendInventory: boolean, sendPrivileges: boolean): nil
---@field SendOwnPlayerData fun(owningPlayer: IServerPlayer, sendInventory: boolean, sendPrivileges: boolean): nil
---@field SendInitialPlayerDataForOthers fun(owningPlayer: IServerPlayer, toPlayer: IServerPlayer): nil
---@field BroadcastPlayerPings fun(): nil
---@field SendServerRedirect fun(player: IServerPlayer, host: string, name: string): nil
---@field get_Calendar fun(): IGameCalendar
---@field AddPhysicsTick fun(entitybehavior: IServerPhysicsTicker): nil
---@field SetMiniDimension fun(dimension: IMiniDimension, index: number): number
---@field get_ShuttingDown fun(): boolean
---@field get_LoadedChunkIndices fun(): Int64[]
---@field get_LoadedMapChunkIndices fun(): Int64[]
---@field GetLoadedChunk fun(index3d: Int64): ServerChunk
---@field SendChunk fun(chunkX: number, chunkY: number, chunkZ: number, player: IServerPlayer, onlyIfInRange: boolean): nil
---@field BroadcastChunk fun(chunkX: number, chunkY: number, chunkZ: number, onlyIfInRange: boolean): nil
---@field BroadcastChunkColumn fun(chunkX: number, chunkZ: number, onlyIfInRange: boolean): nil
---@field ResendMapChunk fun(chunkX: number, chunkZ: number, onlyIfInRange: boolean): nil
---@field LoadChunkColumnFast fun(chunkX: number, chunkZ: number, options: ChunkLoadOptions): nil
---@overload fun(chunkX1: number, chunkZ1: number, chunkX2: number, chunkZ2: number, options: ChunkLoadOptions): nil
---@field PeekChunkColumn fun(chunkX: number, chunkZ: number, options: ChunkPeekOptions): nil
---@field TestChunkExists fun(chunkX: number, chunkY: number, chunkZ: number, onTested: any`1, type: EnumChunkany): nil
---@field LoadChunkColumn fun(chunkX: number, chunkZ: number, keepLoaded: boolean): nil
---@field AddChunkColumnToForceLoadedList fun(mapindex2d: Int64): nil
---@field RemoveChunkColumnFromForceLoadedList fun(mapindex2d: Int64): nil
---@field IsChunkColumnFullyLoaded fun(chunkX: number, chunkZ: number): boolean
---@field get_WaterBlock fun(): Block
---@field set_WaterBlock fun(value: Block): nil
---@field RandomPitch fun(): Single
---@field GetRecipeRegistry fun(code: string): RecipeRegistryBase
---@field RegisterRecipeRegistry fun(recipeRegistryCode: string): T
---@field get_InteresectionTester fun(): AABBIntersectionTest
---@field RayTraceForSelection fun(supplier: IWorldIntersectionSupplier, fromPos: Vec3d, toPos: Vec3d, blockSelection: BlockSelection&, entitySelection: EntitySelection&, bfilter: BlockFilter, efilter: EntityFilter): nil
---@overload fun(fromPos: Vec3d, toPos: Vec3d, blockSelection: BlockSelection&, entitySelection: EntitySelection&, bfilter: BlockFilter, efilter: EntityFilter): nil
---@overload fun(fromPos: Vec3d, pitch: Single, yaw: Single, range: Single, blockSelection: BlockSelection&, entitySelection: EntitySelection&, bfilter: BlockFilter, efilter: EntityFilter): nil
---@overload fun(ray: Ray, blockSelection: BlockSelection&, entitySelection: EntitySelection&, bfilter: BlockFilter, efilter: EntityFilter): nil
---@overload fun(supplier: IWorldIntersectionSupplier, ray: Ray, blockSelection: BlockSelection&, entitySelection: EntitySelection&, bfilter: BlockFilter, efilter: EntityFilter): nil
---@overload fun(player: IPlayer, blockSelection: BlockSelection&, entitySelection: EntitySelection&, bfilter: BlockFilter, efilter: EntityFilter): nil
---@field GetPickingRay fun(pos: Vec3d, pitch: Single, yaw: Single, pickingRange: Single): Ray
---@overload fun(fromPos: Vec3d, toPos: Vec3d): Ray
---@field GetIntersectingEntities fun(basePos: BlockPos, collisionBoxes: Cuboidf[], matches: ActionConsumable`1): Entity[]
---@field GetEntitiesAround fun(position: Vec3d, horRange: Single, vertRange: Single, matches: ActionConsumable`1): Entity[]
---@field GetEntitiesInsideCuboid fun(startPos: BlockPos, endPos: BlockPos, matches: ActionConsumable`1): Entity[]
---@field GetItem fun(itemCode: AssetLocation): Item
---@overload fun(blockCode: AssetLocation): Block
---@field SearchBlocks fun(wildcard: AssetLocation): Block[]
---@field SearchItems fun(wildcard: AssetLocation): Item[]
---@field GetCachingBlockAccessor fun(synchronize: boolean, relight: boolean): ICachingBlockAccessor
---@field GetLockFreeBlockAccessor fun(): IBlockAccessor
---@field GetBlockAccessor fun(synchronize: boolean, relight: boolean, strict: boolean, debug: boolean): IBlockAccessor
---@field GetBlockAccessorBulkUpdate fun(synchronize: boolean, relight: boolean, debug: boolean): IBulkBlockAccessor
---@field GetBlockAccessorBulkMinimalUpdate fun(synchronize: boolean, debug: boolean): IBulkBlockAccessor
---@field GetBlockAccessorRevertable fun(synchronize: boolean, relight: boolean, debug: boolean): IBlockAccessorRevertable
---@field GetBlockAccessorPrefetch fun(synchronize: boolean, relight: boolean): IBlockAccessorPrefetch
---@field GetBlockAccessorMapChunkLoading fun(synchronize: boolean, debug: boolean): IBulkBlockAccessor
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field World IWorldAccessor
---@field Seed IWorldAccessor
---@field SavegameIdentifier IWorldAccessor
---@field Suspended IWorldAccessor
---@field ServerConsoleId IWorldAccessor
---@field MainSockets IWorldAccessor
---@field Side IWorldAccessor
---@field Api IWorldAccessor
---@field Claims IWorldAccessor
---@field DefaultSpawnPosition IWorldAccessor
---@field BlockLightLevels IWorldAccessor
---@field SunLightLevels IWorldAccessor
---@field SeaLevel IWorldAccessor
---@field SunBrightness IWorldAccessor
---@field IsDedicatedServer IWorldAccessor
---@field BlockAccessor IWorldAccessor
---@field BulkBlockAccessor IWorldAccessor
---@field ElapsedMilliseconds IWorldAccessor
---@field EntityTypes IWorldAccessor
---@field EntityTypeCodes IWorldAccessor
---@field DefaultEntityTrackingRange IWorldAccessor
---@field RemappedEntities IWorldAccessor
---@field TreeGenerators IWorldAccessor
---@field AllOnlinePlayers IWorldAccessor
---@field AllPlayers IWorldAccessor
---@field EntityDebugMode IWorldAccessor
---@field CollisionTester IWorldAccessor
---@field MapSize IWorldAccessor
---@field blockAccessor IWorldAccessor
---@field Calendar IWorldAccessor
---@field ShuttingDown IWorldAccessor
---@field LoadedChunkIndices IWorldAccessor
---@field LoadedMapChunkIndices IWorldAccessor
---@field WaterBlock IWorldAccessor
---@field InteresectionTester IWorldAccessor
---@field exit IWorldAccessor
---@field rand IWorldAccessor
---@field Saving IWorldAccessor
---@field SendChunks IWorldAccessor
---@field AutoGenerateChunks IWorldAccessor
---@field stopped IWorldAccessor
---@field mapMiddleSpawnPos IWorldAccessor
---@field AssetManager IWorldAccessor
---@field readyToAutoSave IWorldAccessor
---@field Serverthreads IWorldAccessor
---@field ServerThreadsCts IWorldAccessor
---@field ModEventManager IWorldAccessor
---@field EventManager IWorldAccessor
---@field PlayerDataManager IWorldAccessor
---@field EntityPhysics IWorldAccessor
---@field WorldMap IWorldAccessor
---@field Standalone IWorldAccessor
---@field totalUnpausedTime IWorldAccessor
---@field totalUpTime IWorldAccessor
---@field AllPrivileges IWorldAccessor
---@field PrivilegeDescriptions IWorldAccessor
---@field StatsCollector IWorldAccessor
---@field StatsCollectorIndex IWorldAccessor
---@field Clients IWorldAccessor
---@field PlayersByUid IWorldAccessor
---@field TotalSentBytes IWorldAccessor
---@field TotalReceivedBytes IWorldAccessor
---@field Config IWorldAccessor
---@field ConfigNeedsSaving IWorldAccessor
---@field DirtyBlockEntities IWorldAccessor
---@field ModifiedBlocks IWorldAccessor
---@field DirtyBlocks IWorldAccessor
---@field ModifiedDecors IWorldAccessor
---@field ModifiedBlocksNoRelight IWorldAccessor
---@field ModifiedBlocksMinimal IWorldAccessor
---@field UpdatedBlocks IWorldAccessor
---@field TreeGeneratorsByTreeCode IWorldAccessor
---@field EntityTypesByCode IWorldAccessor
---@field nextFreeItemId IWorldAccessor
---@field mainThreadTasksLock IWorldAccessor
---@field serverStartArgs IWorldAccessor
---@field progArgs IWorldAccessor
---@field RawCmdLineArgs IWorldAccessor
---@field TickPosition IWorldAccessor
---@field ExitCode IWorldAccessor
---@field Timers IWorldAccessor
---@field DebugPrivileges IWorldAccessor
---@field ClearPlayerInvs IWorldAccessor
---@field EntitySpawnSendQueue IWorldAccessor
---@field EntityDespawnSendQueue IWorldAccessor
---@field DelayedSpawnQueue IWorldAccessor
---@field EntityCodeRemappings IWorldAccessor
---@field requiresRemaps IWorldAccessor
---@field xPlatInterface IWorldAccessor
---@field Logger IWorldAccessor
---@field ClassRegistry IWorldAccessor
---@field FrameProfiler IWorldAccessor
---@field ItemsByCode IWorldAccessor
ServerMain = {}
