---@meta

-- Facilitates the Accessibility tab wireframe colors setting.  Offers three preset color options, "Default", "Preset2" and "Preset3". The selection between these three options is chosen by the ClientSettings int value "guiColorsPreset". Within these presets, individual color values are stored by string key.
---@class IColorPresets
IColorPresets = {}


-- Mods (e.g. VSSurvivalMod) can call this to insert into the presets their configured color keys and values, which will be specific to mod content
---@param asset IAsset Represents a loaded asset from the assets folder
function IColorPresets.Initialize(asset) end

-- To be called when the ClientSetting "guiColorsPreset" is changed
function IColorPresets.OnUpdateSetting() end

-- Called to fetch a color value from the currently selected preset colors
---@param key string
---@return number
function IColorPresets.GetColor(key) end


