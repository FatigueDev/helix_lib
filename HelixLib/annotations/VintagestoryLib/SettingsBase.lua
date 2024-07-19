---@meta

---@class SettingsBase: SettingsBaseNoObf, SettingsBaseNoObf, ISettings
---@field FileName string
---@field TempFileName string
---@field BkpFileName string
---@field IsDirty boolean
---@field ShouldTriggerWatchers boolean
---@field Bool ISettingsClass`1
---@field Int ISettingsClass`1
---@field Float ISettingsClass`1
---@field String ISettingsClass`1
---@field Strings ISettingsClass`1
---@field OtherDirty boolean
SettingsBase = {}


---@param key string
---@param handler OnSettingsChanged`1
function SettingsBase.AddWatcher(key, handler) end

function SettingsBase.ClearWatchers() end

---@param key string
---@param defaultValue? string
---@return string
function SettingsBase.GetStringSetting(key, defaultValue) end

---@param key string
---@param defaultValue? table
---@return table
function SettingsBase.GetStringListSetting(key, defaultValue) end

---@param key string
---@return number
function SettingsBase.GetIntSetting(key) end

---@param key string
---@return number
function SettingsBase.GetFloatSetting(key) end

---@param key string
---@return boolean
function SettingsBase.GetBoolSetting(key) end

---@param name string
---@return boolean
function SettingsBase.HasSetting(name) end

---@param name string
---@return userdata
function SettingsBase.GetSettingType(name) end

---@return string
function SettingsBase.get_FileName() end

---@return string
function SettingsBase.get_TempFileName() end

---@return string
function SettingsBase.get_BkpFileName() end

function SettingsBase.Load() end

---@return boolean
function SettingsBase.get_IsDirty() end

---@param force? boolean
---@return boolean
function SettingsBase.Save(force) end

function SettingsBase.LoadDefaultValues() end

---@param value boolean
function SettingsBase.set_ShouldTriggerWatchers(value) end

---@return ISettingsClass`1 # Setting interface.
function SettingsBase.get_Bool() end

---@return ISettingsClass`1 # Setting interface.
function SettingsBase.get_Int() end

---@return ISettingsClass`1 # Setting interface.
function SettingsBase.get_Float() end

---@return ISettingsClass`1 # Setting interface.
function SettingsBase.get_String() end

---@return ISettingsClass`1 # Setting interface.
function SettingsBase.get_Strings() end

---@return userdata
function SettingsBase.GetType() end

---@return string
function SettingsBase.ToString() end

---@param obj userdata
---@return boolean
function SettingsBase.Equals(obj) end

---@return number
function SettingsBase.GetHashCode() end


