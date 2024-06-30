---@meta

---@class ColorPresets:  IColorPresets
ColorPresets = {}

---@param game ClientMain
---@param api ClientCoreAPI
---@return ColorPresets
function ColorPresets.ctor(game, api) end

---@param key string
---@return number
function ColorPresets.GetColor(key) end

function ColorPresets.OnUpdateSetting() end

---@param configfile IAsset Represents a loaded asset from the assets folder
function ColorPresets.Initialize(configfile) end

---@return userdata
function ColorPresets.GetType() end

---@return string
function ColorPresets.ToString() end

---@param obj userdata
---@return boolean
function ColorPresets.Equals(obj) end

---@return number
function ColorPresets.GetHashCode() end


