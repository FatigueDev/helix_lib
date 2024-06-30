---@meta HELIX

---@class HelixMod
---@field id string
---@field name string
---@field authors string[]
---@field description string
---@field version string
---@field dependencies table<string, string>
---@field genericEventHooks [table<GenericEventHook, function[]>]
---@field clientEventHooks [table<EventClientside, function[]>]
---@field serverEventHooks [table<EventServerside, function[]>]
---@field sharedEventHooks [table<EventShared, function[]>]
HelixMod = {}