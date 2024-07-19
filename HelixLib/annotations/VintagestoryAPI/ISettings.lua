---@meta

-- Setting interface for multiple settings.
---@class ISettings
---@field Bool ISettingsClass`1 Setting collection for boolean values.
---@field Int ISettingsClass`1 Setting collection for integer values.
---@field Float ISettingsClass`1 Setting collection for float values.
---@field String ISettingsClass`1 Setting collection for string values.
---@field Strings ISettingsClass`1 Setting collection for string list values.
ISettings = {}


---@return ISettingsClass`1 # Setting interface.
function ISettings.get_Bool() end

---@return ISettingsClass`1 # Setting interface.
function ISettings.get_Int() end

---@return ISettingsClass`1 # Setting interface.
function ISettings.get_Float() end

---@return ISettingsClass`1 # Setting interface.
function ISettings.get_String() end

---@return ISettingsClass`1 # Setting interface.
function ISettings.get_Strings() end

---@param key string
---@param OnValueChanged OnSettingsChanged`1
function ISettings.AddWatcher(key, OnValueChanged) end


