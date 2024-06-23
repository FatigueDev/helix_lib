---@meta ScreenManager
---@class ScreenManager: Object
---@field ctor fun(platform: ClientPlatformAbstract): ScreenManager
---@field get_GamePlatform fun(): ClientPlatformAbstract
---@field get_OpenedInventories fun(): any[]
---@field get_World fun(): IWorldAccessor
---@field Start fun(args: ClientProgramArgs, rawArgs: string[]): nil
---@field registerSettingsWatchers fun(): nil
---@field DoGameInitStage1 fun(): nil
---@field DoGameInitStage2 fun(): nil
---@field get_AsyncSoundLoadComplete fun(): boolean
---@field set_AsyncSoundLoadComplete fun(value: boolean): nil
---@field CatalogSounds fun(onCompleted: Action): nil
---@field LoadSoundsSlow_Async fun(game: ClientMain): nil
---@field LoadSoundsInitial fun(): nil
---@field LoadSoundsSlow fun(game: ClientMain): nil
---@field LoadMusicTrack fun(asset: IAsset): AudioData
---@field LoadSound fun(asset: IAsset): AudioData
---@field loadMods fun(): nil
---@field OnNewFrame fun(dt: Single): nil
---@field EnqueueMainThreadTask fun(a: Action): nil
---@field EnqueueCallBack fun(a: Action, msdelay: number): nil
---@field GetOwnInventory fun(className: string): IInventory
---@field SendPacketClient fun(packetClient: Packet_Client): nil
---@field TriggerOnMouseEnterSlot fun(slot: ItemSlot): nil
---@field TriggerOnMouseLeaveSlot fun(itemSlot: ItemSlot): nil
---@field TriggerOnMouseClickSlot fun(itemSlot: ItemSlot): nil
---@field get_PlayerInventoryManager fun(): IPlayerInventoryManager
---@field get_Player fun(): IPlayer
---@field RenderItemstack fun(itemstack: ItemStack, posX: Double, posY: Double, posZ: Double, size: Single, color: number, rotate: boolean, showStackSize: boolean): nil
---@field BeginClipArea fun(bounds: ElementBounds): nil
---@field EndClipArea fun(): nil
---@field OnKeyDown fun(e: KeyEvent): nil
---@field OnKeyUp fun(e: KeyEvent): nil
---@field OnKeyPress fun(e: KeyEvent): nil
---@field OnMouseDown fun(e: MouseEvent): nil
---@field OnMouseUp fun(e: MouseEvent): nil
---@field OnMouseMove fun(e: MouseEvent): nil
---@field OnMouseWheel fun(e: MouseWheelEventArgs): nil
---@field LoadAndCacheScreen fun(screenType: any): nil
---@field LoadScreen fun(screen: GuiScreen): nil
---@field LoadScreenNoLoadCall fun(screen: GuiScreen): nil
---@field StartGame fun(singleplayer: boolean, serverargs: StartServerArgs, connectData: ServerConnectData): nil
---@field InstallMod fun(modid: string): nil
---@field ConnectToMultiplayer fun(host: string, password: string): nil
---@field ConnectToSingleplayer fun(serverargs: StartServerArgs): nil
---@field GetMouseCurrentX fun(): number
---@field GetMouseCurrentY fun(): number
---@field PlaySound fun(name: string): nil
---@overload fun(location: AssetLocation): nil
---@field getGamePlatform fun(): ClientPlatformAbstract
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field GamePlatform ClientPlatformAbstract
---@field OpenedInventories ClientPlatformAbstract
---@field World ClientPlatformAbstract
---@field AsyncSoundLoadComplete ClientPlatformAbstract
---@field PlayerInventoryManager ClientPlatformAbstract
---@field Player ClientPlatformAbstract
---@field sessionManager ClientPlatformAbstract
---@field loadingText ClientPlatformAbstract
---@field ClientIsOffline ClientPlatformAbstract
---@field api ClientPlatformAbstract
---@field MainThreadId ClientPlatformAbstract
---@field GuiComposers ClientPlatformAbstract
---@field Platform ClientPlatformAbstract
---@field FrameProfiler ClientPlatformAbstract
---@field KeyboardModifiers ClientPlatformAbstract
---@field KeyboardKeyState ClientPlatformAbstract
---@field MouseButtonState ClientPlatformAbstract
---@field soundAudioData ClientPlatformAbstract
---@field soundAudioDataAsyncLoadTemp ClientPlatformAbstract
---@field MainThreadTasks ClientPlatformAbstract
---@field debugDrawCallNextFrame ClientPlatformAbstract
---@field hotkeyManager ClientPlatformAbstract
---@field ParsedArgs ClientPlatformAbstract
---@field RawCmdLineArgs ClientPlatformAbstract
ScreenManager = {}
