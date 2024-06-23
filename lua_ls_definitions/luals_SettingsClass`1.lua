---@meta SettingsClass`1
---@class SettingsClass`1: Object
---@field ctor fun(): SettingsClass`1
---@field Exists fun(key: string): boolean
---@field Get fun(key: string, defaultValue: T): T
---@field get_Item fun(key: string): T
---@field set_Item fun(key: string, value: T): nil
---@field TriggerWatcher fun(key: string): nil
---@field AddWatcher fun(key: string, handler: OnSettingsChanged`1): nil
---@field RemoveWatcher fun(key: string, handler: OnSettingsChanged`1): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Item T
---@field values T
---@field defaultValue T
---@field Watchers T
---@field Dirty T
---@field ShouldTriggerWatchers T
SettingsClass`1 = {}