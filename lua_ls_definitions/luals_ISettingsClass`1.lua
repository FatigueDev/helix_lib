---@meta ISettingsClass`1
---@class ISettingsClass`1
---@field get_Item fun(key: string): T
---@field set_Item fun(key: string, value: T): nil
---@field Get fun(key: string, defaultValue: T): T
---@field Exists fun(key: string): boolean
---@field AddWatcher fun(key: string, OnValueChanged: OnSettingsChanged`1): nil
---@field RemoveWatcher fun(key: string, handler: OnSettingsChanged`1): boolean
---@field Item T
ISettingsClass`1 = {}
