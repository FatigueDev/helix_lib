---@meta

-- A config item for the GUIElementConfigList.
---@class ConfigItem
---@field Type EnumItemType Item or title
---@field Key string The name of the config item.
---@field Value string the value of the config item.  
---@field Code string The code of the config item.
---@field error boolean Has this particular config item errored?
---@field posY number The y position of the config item.
---@field height number The height of the config item.
---@field Data userdata
ConfigItem = {}

---@return ConfigItem
function ConfigItem.ctor() end

---@return userdata
function ConfigItem.GetType() end

---@return string
function ConfigItem.ToString() end

---@param obj userdata
---@return boolean
function ConfigItem.Equals(obj) end

---@return number
function ConfigItem.GetHashCode() end


