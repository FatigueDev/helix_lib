using HarmonyLib;
using Vintagestory.API.Common;
using Vintagestory.Common;

namespace HelixLib.HarmonyPatches
{
    [HarmonyPatch]
    public class HarmonyPatches
    {
        public const string MOD_ID = "helix_lib";
        public static Harmony harmony;

        public static void ApplyPatches()
        {
            if(!Harmony.HasAnyPatches(MOD_ID))
            {
                harmony = new Harmony(MOD_ID);
                harmony.PatchAll();
            }
        }

        public static void Dispose()
        {
            harmony?.UnpatchAll(MOD_ID);
        }

        [HarmonyPatch(typeof(Vintagestory.Common.ModLoader), MethodType.Constructor)]
        static bool Prefix(Vintagestory.Common.ModLoader __instance, ILogger logger, EnumAppSide side, IEnumerable<string> modSearchPaths, bool traceLog)
        {
            // if(__instance.GetType() != typeof(HelixModLoader))
            // {
            //     __instance = new HelixModLoader(logger, side, modSearchPaths, traceLog);
            //     return false;
            // }

            return true;
        }

    }
}