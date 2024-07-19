---@meta

---@class SettingsBaseNoObf
---@field ShouldTriggerWatchers boolean
---@field Bool ISettingsClass`1
---@field Int ISettingsClass`1
---@field Float ISettingsClass`1
---@field String ISettingsClass`1
---@field Strings ISettingsClass`1
---@field OtherDirty boolean
SettingsBaseNoObf = {}


---@param value boolean
function SettingsBaseNoObf.set_ShouldTriggerWatchers(value) end

---@return ISettingsClass`1 # Setting interface.
function SettingsBaseNoObf.get_Bool() end

---@return ISettingsClass`1 # Setting interface.
function SettingsBaseNoObf.get_Int() end

---@return ISettingsClass`1 # Setting interface.
function SettingsBaseNoObf.get_Float() end

---@return ISettingsClass`1 # Setting interface.
function SettingsBaseNoObf.get_String() end

---@return ISettingsClass`1 # Setting interface.
function SettingsBaseNoObf.get_Strings() end

---@return userdata
function SettingsBaseNoObf.GetType() end

---@return string
function SettingsBaseNoObf.ToString() end

---@param obj userdata
---@return boolean
function SettingsBaseNoObf.Equals(obj) end

---@return number
function SettingsBaseNoObf.GetHashCode() end


