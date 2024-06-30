---@meta HELIX

---@enum GenericEventHook
GenericEventHook = {
    RegisterCallback = 0,
    RegisterGameTickListener = 1
}

---@enum EventClientside # This enum is in bitwise flags.
EventClientside = {
    AfterActiveSlotChanged = 0,
    BeforeActiveSlotChanged = 1 << 0,
    BlockChanged = 1 << 1,
    BlockTexturesLoaded = 1 << 2,
    ChatMessage = 1 << 3,
    ColorsPresetChanged = 1 << 4,
    FileDrop = 1 << 5,
    HotkeysChanged = 1 << 6,
    InGameDiscovery = 1 << 7,
    InGameError = 1 << 8,
    IsPlayerReady = 1 << 9,
    KeyDown = 1 << 10,
    KeyUp = 1 << 11,
    LeaveWorld = 1 << 12,
    LeftWorld = 1 << 13,
    LevelFinalize = 1 << 14,
    MouseDown = 1 << 15,
    MouseMove = 1 << 16,
    MouseUp = 1 << 17,
    OnSendChatMessage = 1 << 18,
    PauseResume = 1 << 19,
    PlayerDeath = 1 << 20,
    PlayerEntityDespawn = 1 << 21,
    PlayerEntitySpawn = 1 << 22,
    PlayerJoin = 1 << 23,
    PlayerLeave = 1 << 24,
    ReloadShader = 1 << 25,
    ReloadShapes = 1 << 26,
    ReloadTextures = 1 << 27,
    TestBlockAccess = 1 << 28
}

---@enum EventServerside
EventServerside = {
    AfterActiveSlotChanged = 0,
    AssetsFinalizers = 1 << 0,
    BeforeActiveSlotChanged = 1 << 1,
    BeginChunkColumnLoadChunkThread = 1 << 2,
    BreakBlock = 1 << 3,
    CanPlaceOrBreakBlock = 1 << 4,
    CanUseBlock = 1 << 5,
    ChunkColumnLoaded = 1 << 6,
    ChunkColumnUnloaded = 1 << 7,
    DidBreakBlock = 1 << 8,
    DidPlaceBlock = 1 << 9,
    DidUseBlock = 1 << 10,
    GameWorldSave = 1 << 11,
    OnPlayerInteractEntity = 1 << 12,
    OnTrySpawnEntity = 1 << 13,
    PlayerChat = 1 << 14,
    PlayerCreate = 1 << 15,
    PlayerDeath = 1 << 16,
    PlayerDisconnect = 1 << 17,
    PlayerJoin = 1 << 18,
    PlayerLeave = 1 << 19,
    PlayerNowPlaying = 1 << 20,
    PlayerRespawn = 1 << 21,
    PlayerSwitchGameMode = 1 << 22,
    SaveGameCreated = 1 << 23,
    SaveGameLoaded = 1 << 24,
    ServerResume = 1 << 25,
    ServerSuspend = 1 << 26,
    WorldgenStartup = 1 << 27
}

---@enum EventShared
EventShared = {
    ChunkDirty = 0,
    MapRegionLoaded = 1 << 0,
    MapRegionUnloaded = 1 << 1,
    MatchesGridRecipe = 1 << 2,
    OnEntityDeath = 1 << 3,
    OnEntityDespawn = 1 << 4,
    OnEntityLoaded = 1 << 5,
    OnEntitySpawn = 1 << 6,
    OnGetClimate = 1 << 7,
    OnGetWindSpeed = 1 << 8,
    OnTestBlockAccess = 1 << 9
}