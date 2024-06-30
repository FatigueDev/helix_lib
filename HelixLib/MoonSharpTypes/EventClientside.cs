using MoonSharp.Interpreter;

namespace HelixLib.Types
{
    // [MoonSharpUserData]
    // public class ClientEventHook
    // {
    //     public EventClientside eventClientside;
    //     public DynValue luaFunction;
    // }

    [Flags]
    public enum EventClientside
    {
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
}