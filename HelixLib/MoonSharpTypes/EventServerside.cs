using MoonSharp.Interpreter;

namespace HelixLib.Types
{
    [Flags]
    public enum EventServerside
    {
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
}