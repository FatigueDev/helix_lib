---@type HelixMod
HelixMod = HelixMod and HelixMod or {}

-- If we wanted to run some code here, we totally can as well.
-- We lack any access to the CoreAPI here though, because Sandboxing.

HelixMod = {
    id = "helix_mod_example",
    name = "Helix Mod Example",
    authors = {"Lila"},
    description = "This is a description for the mod.",
    dependencies = {
        ["game"] = "1.19.8",
    },
    version = "1.0.0",
    -- genericEventHooks = {
    --     [GenericEventHook.RegisterGameTickListener] = {
    --         require("cl_hook_example")
    --     }
    -- },
    -- sharedEventHooks = {
    --     [EventShared.OnEntitySpawn] = {
    --         require("sh_entityWasSpawned")
    --     }
    -- },
    clientEventHooks = {
        [EventClientside.AfterActiveSlotChanged] = {
            require("cl_hook_example2")
        },
        [EventClientside.KeyUp] = {
            require("cl_event_keyup")
        }
    }
}

return HelixMod;

