---@meta

-- Setting interface.
---@class ISettingsClass`1
---@field Item T
ISettingsClass`1 = {}


---@param key string
---@return T
function ISettingsClass`1.get_Item(key) end

---@param key string
---@param value T
function ISettingsClass`1.set_Item(key, value) end

-- Gets the setting with the provided key
---@param key string
---@param defaultValue? T
---@return T
function ISettingsClass`1.Get(key, defaultValue) end

-- Does this setting exist?
---@param key string
---@return boolean
function ISettingsClass`1.Exists(key) end

-- Setting watcher for changes in values for a given setting.
---@param key string
---@param OnValueChanged OnSettingsChanged`1
function ISettingsClass`1.AddWatcher(key, OnValueChanged) end

-- Removes a previously assigned watcher
---@param key string
---@param handler OnSettingsChanged`1
---@return boolean
function ISettingsClass`1.RemoveWatcher(key, handler) end


