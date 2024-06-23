---@meta CoreServerEventManager
---@class CoreServerEventManager: ServerEventManager
---@field ctor fun(server: ServerMain, modEventManager: ServerEventManager): CoreServerEventManager
---@field TriggerPlayerInteractEntity fun(entity: Entity, byPlayer: IPlayer, slot: ItemSlot, hitPosition: Vec3d, mode: number, handling: EnumHandling&): nil
---@field TriggerDidBreakBlock fun(player: IServerPlayer, oldBlockId: number, blockSel: BlockSelection): nil
---@field TriggerBreakBlock fun(player: IServerPlayer, blockSel: BlockSelection, dropQuantityMultiplier: Single&, handling: EnumHandling&): nil
---@field TriggerDidPlaceBlock fun(player: IServerPlayer, oldBlockId: number, blockSel: BlockSelection, withItemStack: ItemStack): nil
---@field TriggerDidUseBlock fun(player: IServerPlayer, blockSel: BlockSelection): nil
---@field TriggerGameTick fun(ellapsedMilliseconds: Int64, world: IWorldAccessor): nil
---@field TriggerGameTickDebug fun(ellapsedMilliseconds: Int64, world: IWorldAccessor): nil
---@field TriggerCanPlaceOrBreak fun(player: IServerPlayer, blockSel: BlockSelection, claimant: string&): boolean
---@field TriggerCanUse fun(player: IServerPlayer, blockSel: BlockSelection): boolean
---@field TriggerOnplayerChat fun(player: IServerPlayer, channelId: number, message: string&, data: string&, consumed: BoolRef): nil
---@field TriggerPlayerDisconnect fun(player: IServerPlayer): nil
---@field TriggerPlayerJoin fun(player: IServerPlayer): nil
---@field TriggerPlayerNowPlaying fun(player: IServerPlayer): nil
---@field TriggerPlayerLeave fun(player: IServerPlayer): nil
---@field TriggerBeforeActiveSlotChanged fun(player: IServerPlayer, fromSlot: number, toSlot: number): boolean
---@field TriggerAfterActiveSlotChanged fun(player: IServerPlayer, fromSlot: number, toSlot: number): nil
---@field TriggerPlayerRespawn fun(player: IServerPlayer): nil
---@field TriggerPlayerCreate fun(player: IServerPlayer): nil
---@field TriggerTrySpawnEntity fun(blockaccessor: IBlockAccessor, properties: EntityProperties&, position: Vec3d, herdId: Int64): boolean
---@field TriggerGameWorldBeingSaved fun(): nil
---@field TriggerSaveGameLoaded fun(): nil
---@field TriggerEntitySpawned fun(entity: Entity): nil
---@field TriggerEntityDespawned fun(entity: Entity, reason: EntityDespawnData): nil
---@field TriggerPlayerChangeGamemode fun(player: IServerPlayer): nil
---@field TriggerEntityLoaded fun(entity: Entity): nil
---@field TriggerPlayerDeath fun(player: IServerPlayer, source: DamageSource): nil
---@field TriggerOnGetClimate fun(climate: ClimateCondition&, pos: BlockPos, mode: EnumGetClimateMode, totalDays: Double): nil
---@field TriggerOnGetWindSpeed fun(pos: Vec3d, windSpeed: Vec3d&): nil
---@field get_Logger fun(): ILogger
---@field get_CommandPrefix fun(): string
---@field get_InWorldEllapsedMs fun(): Int64
---@field add_OnSaveGameCreated fun(value: Action): nil
---@field remove_OnSaveGameCreated fun(value: Action): nil
---@field add_OnSaveGameLoaded fun(value: Action): nil
---@field remove_OnSaveGameLoaded fun(value: Action): nil
---@field add_AssetsFirstLoaded fun(value: Action): nil
---@field remove_AssetsFirstLoaded fun(value: Action): nil
---@field add_AssetsFinalizer fun(value: Action): nil
---@field remove_AssetsFinalizer fun(value: Action): nil
---@field add_OnGameWorldBeingSaved fun(value: Action): nil
---@field remove_OnGameWorldBeingSaved fun(value: Action): nil
---@field add_OnWorldgenStartup fun(value: Action): nil
---@field remove_OnWorldgenStartup fun(value: Action): nil
---@field add_OnUpnpComplete fun(value: UpnpCompleteDelegate): nil
---@field remove_OnUpnpComplete fun(value: UpnpCompleteDelegate): nil
---@field add_OnPlayerRespawn fun(value: PlayerDelegate): nil
---@field remove_OnPlayerRespawn fun(value: PlayerDelegate): nil
---@field add_OnPlayerJoin fun(value: PlayerDelegate): nil
---@field remove_OnPlayerJoin fun(value: PlayerDelegate): nil
---@field add_OnPlayerNowPlaying fun(value: PlayerDelegate): nil
---@field remove_OnPlayerNowPlaying fun(value: PlayerDelegate): nil
---@field add_OnPlayerLeave fun(value: PlayerDelegate): nil
---@field remove_OnPlayerLeave fun(value: PlayerDelegate): nil
---@field add_OnPlayerDisconnect fun(value: PlayerDelegate): nil
---@field remove_OnPlayerDisconnect fun(value: PlayerDelegate): nil
---@field add_OnPlayerChat fun(value: PlayerChatDelegate): nil
---@field remove_OnPlayerChat fun(value: PlayerChatDelegate): nil
---@field add_OnPlayerDeath fun(value: PlayerDeathDelegate): nil
---@field remove_OnPlayerDeath fun(value: PlayerDeathDelegate): nil
---@field add_OnPlayerChangeGamemode fun(value: PlayerDelegate): nil
---@field remove_OnPlayerChangeGamemode fun(value: PlayerDelegate): nil
---@field add_BeforeActiveSlotChanged fun(value: Func`3): nil
---@field remove_BeforeActiveSlotChanged fun(value: Func`3): nil
---@field add_AfterActiveSlotChanged fun(value: Action`2): nil
---@field remove_AfterActiveSlotChanged fun(value: Action`2): nil
---@field add_OnPlayerCreate fun(value: PlayerDelegate): nil
---@field remove_OnPlayerCreate fun(value: PlayerDelegate): nil
---@field add_CanUseBlock fun(value: CanUseDelegate): nil
---@field remove_CanUseBlock fun(value: CanUseDelegate): nil
---@field add_CanPlaceOrBreakBlock fun(value: CanPlaceOrBreakDelegate): nil
---@field remove_CanPlaceOrBreakBlock fun(value: CanPlaceOrBreakDelegate): nil
---@field add_DidUseBlock fun(value: BlockUsedDelegate): nil
---@field remove_DidUseBlock fun(value: BlockUsedDelegate): nil
---@field add_DidPlaceBlock fun(value: BlockPlacedDelegate): nil
---@field remove_DidPlaceBlock fun(value: BlockPlacedDelegate): nil
---@field add_DidBreakBlock fun(value: BlockBrokenDelegate): nil
---@field remove_DidBreakBlock fun(value: BlockBrokenDelegate): nil
---@field add_BreakBlock fun(value: BlockBreakDelegate): nil
---@field remove_BreakBlock fun(value: BlockBreakDelegate): nil
---@field add_OnPlayerInteractEntity fun(value: OnInteractDelegate): nil
---@field remove_OnPlayerInteractEntity fun(value: OnInteractDelegate): nil
---@field add_OnEntitySpawn fun(value: EntityDelegate): nil
---@field remove_OnEntitySpawn fun(value: EntityDelegate): nil
---@field add_OnEntityDespawn fun(value: EntityDespawnDelegate): nil
---@field remove_OnEntityDespawn fun(value: EntityDespawnDelegate): nil
---@field add_OnEntityLoaded fun(value: EntityDelegate): nil
---@field remove_OnEntityLoaded fun(value: EntityDelegate): nil
---@field add_OnTrySpawnEntity fun(value: TrySpawnEntityDelegate): nil
---@field remove_OnTrySpawnEntity fun(value: TrySpawnEntityDelegate): nil
---@field HasPrivilege fun(playerUid: string, privilegecode: string): boolean
---@field TriggerUpnpComplete fun(success: boolean): nil
---@field OnAssetsFirstLoaded fun(): nil
---@field TriggerFinalizeAssets fun(): nil
---@field TriggerWorldgenStartup fun(): nil
---@field TriggerSaveGameCreated fun(): nil
---@field GetWorldGenHandler fun(worldType: string): WorldGenHandler
---@field GetOrCreateWorldGenHandler fun(worldType: string): WorldGenHandler
---@field WipeAllDelegates fun(): nil
---@field add_OnGetClimate fun(value: OnGetClimateDelegate): nil
---@field remove_OnGetClimate fun(value: OnGetClimateDelegate): nil
---@field add_OnGetWindSpeed fun(value: OnGetWindSpeedDelegate): nil
---@field remove_OnGetWindSpeed fun(value: OnGetWindSpeedDelegate): nil
---@field AddGameTickListener fun(handler: any`1, millisecondInterval: number, initialDelayOffsetMs: number): Int64
---@overload fun(handler: any`1, errorHandler: any`1, millisecondInterval: number, initialDelayOffsetMs: number): Int64
---@overload fun(handler: Action`3, pos: BlockPos, millisecondInterval: number, initialDelayOffsetMs: number): Int64
---@field AddDelayedCallback fun(handler: any`1, callAfterEllapsedMS: Int64): Int64
---@overload fun(handler: Action`3, pos: BlockPos, callAfterEllapsedMS: Int64): Int64
---@field RemoveDelayedCallback fun(listenerId: Int64): nil
---@field RemoveGameTickListener fun(listenerId: Int64): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Logger ILogger
---@field CommandPrefix ILogger
---@field InWorldEllapsedMs ILogger
---@field OnSaveGameCreated ILogger
---@field OnSaveGameLoaded ILogger
---@field AssetsFirstLoaded ILogger
---@field AssetsFinalizer ILogger
---@field OnGameWorldBeingSaved ILogger
---@field OnWorldgenStartup ILogger
---@field OnUpnpComplete ILogger
---@field OnPlayerRespawn ILogger
---@field OnPlayerJoin ILogger
---@field OnPlayerNowPlaying ILogger
---@field OnPlayerLeave ILogger
---@field OnPlayerDisconnect ILogger
---@field OnPlayerChat ILogger
---@field OnPlayerDeath ILogger
---@field OnPlayerChangeGamemode ILogger
---@field BeforeActiveSlotChanged ILogger
---@field AfterActiveSlotChanged ILogger
---@field OnPlayerCreate ILogger
---@field CanUseBlock ILogger
---@field CanPlaceOrBreakBlock ILogger
---@field DidUseBlock ILogger
---@field DidPlaceBlock ILogger
---@field DidBreakBlock ILogger
---@field BreakBlock ILogger
---@field OnPlayerInteractEntity ILogger
---@field OnEntitySpawn ILogger
---@field OnEntityDespawn ILogger
---@field OnEntityLoaded ILogger
---@field OnTrySpawnEntity ILogger
---@field OnGetClimate ILogger
---@field OnGetWindSpeed ILogger
---@field serverRunPhaseDelegates ILogger
---@field WorldgenBlockAccessor ILogger
---@field WorldgenHandlers ILogger
---@field EventBusListeners ILogger
CoreServerEventManager = {}
