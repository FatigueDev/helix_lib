using System.Diagnostics;
using HelixLib.Types;
using MoonSharp.Interpreter;
using MoonSharp.Interpreter.Serialization.Json;
using Vintagestory.API.Client;
using Vintagestory.API.Common;

namespace HelixLib
{
    public static class EventHandler
    {
        public static void SetupClientsideEvents(ICoreClientAPI capi, HelixMod modInfo)
        {
            foreach(var hook in modInfo.mod.clientEventHooks)
            {
                switch (hook.Key)
                {
                    case EventClientside.AfterActiveSlotChanged:
                        hook.Value.ForEach(f => capi.Event.AfterActiveSlotChanged += (a) => {
                            f.Table.OwnerScript.Call(f, capi, a);
                        });
                        break;
                    case EventClientside.BeforeActiveSlotChanged:
                        break;
                    case EventClientside.BlockChanged:
                        break;
                    case EventClientside.BlockTexturesLoaded:
                        break;
                    case EventClientside.ChatMessage:
                        break;
                    case EventClientside.ColorsPresetChanged:
                        break;
                    case EventClientside.FileDrop:
                        break;
                    case EventClientside.HotkeysChanged:
                        break;
                    case EventClientside.InGameDiscovery:
                        break;
                    case EventClientside.InGameError:
                        break;
                    case EventClientside.IsPlayerReady:
                        break;
                    case EventClientside.KeyDown:
                        break;
                    case EventClientside.KeyUp:
                        hook.Value.ForEach(f => capi.Event.KeyUp += (KeyEvent) => {
                            f.Table.OwnerScript.Call(f, capi, KeyEvent);
                        });
                        break;
                    case EventClientside.LeaveWorld:
                        break;
                    case EventClientside.LeftWorld:
                        break;
                    case EventClientside.LevelFinalize:
                        break;
                    case EventClientside.MouseDown:
                        break;
                    case EventClientside.MouseMove:
                        break;
                    case EventClientside.MouseUp:
                        break;
                    case EventClientside.OnSendChatMessage:
                        break;
                    case EventClientside.PauseResume:
                        break;
                    case EventClientside.PlayerDeath:
                        break;
                    case EventClientside.PlayerEntityDespawn:
                        break;
                    case EventClientside.PlayerEntitySpawn:
                        break;
                    case EventClientside.PlayerJoin:
                        break;
                    case EventClientside.PlayerLeave:
                        break;
                    case EventClientside.ReloadShader:
                        break;
                    case EventClientside.ReloadShapes:
                        break;
                    case EventClientside.ReloadTextures:
                        break;
                    case EventClientside.TestBlockAccess:
                        break;
                    default:
                        break;
                }
            }
        }
    }
}