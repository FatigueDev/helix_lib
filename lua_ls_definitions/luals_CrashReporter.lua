---@meta CrashReporter
---@class CrashReporter: Object
---@field ctor fun(side: EnumAppSide): CrashReporter
---@field get_LoadedMods fun(): any[]
---@field set_LoadedMods fun(value: any[]): nil
---@field SetLogger fun(logger: Logger): nil
---@field EnableGlobalExceptionHandling fun(blnIsConsole: boolean): nil
---@field Start fun(start: ThreadStart): nil
---@field Crash fun(exCrash: Exception): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field LoadedMods any[]
---@field OnCrash any[]
---@field isCrashing any[]
CrashReporter = {}
