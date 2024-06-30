---@meta

---@class SettingsClass`1
---@field Item T
---@field values table
---@field defaultValue T
---@field Watchers table
---@field Dirty boolean
---@field ShouldTriggerWatchers boolean
SettingsClass`1 = {}

---@return SettingsClass`1
function SettingsClass`1.ctor() end

---@param key string
---@return boolean
function SettingsClass`1.Exists(key) end

---@param key string
---@param defaultValue? T
---@return T
function SettingsClass`1.Get(key, defaultValue) end

---@param key string
---@return T
function SettingsClass`1.get_Item(key) end

---@param key string
---@param value T
function SettingsClass`1.set_Item(key, value) end

---@param key string
function SettingsClass`1.TriggerWatcher(key) end

---@param key string
---@param handler OnSettingsChanged`1
function SettingsClass`1.AddWatcher(key, handler) end

---@param key string
---@param handler OnSettingsChanged`1
---@return boolean
function SettingsClass`1.RemoveWatcher(key, handler) end

---@return userdata
function SettingsClass`1.GetType() end

---@return string
function SettingsClass`1.ToString() end

---@param obj userdata
---@return boolean
function SettingsClass`1.Equals(obj) end

---@return number
function SettingsClass`1.GetHashCode() end


