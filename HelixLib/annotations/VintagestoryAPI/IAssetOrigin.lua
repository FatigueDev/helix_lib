---@meta

---@class IAssetOrigin
---@field OriginPath string
IAssetOrigin = {}


---@return string
function IAssetOrigin.get_OriginPath() end

-- Loads the asset into memeory.
---@param asset IAsset Represents a loaded asset from the assets folder
function IAssetOrigin.LoadAsset(asset) end

-- Attempts to load the asset.  Returns false if it fails.
---@param asset IAsset Represents a loaded asset from the assets folder
---@return boolean
function IAssetOrigin.TryLoadAsset(asset) end

-- Returns all assets of the given category which can be found in this origin 
---@param category AssetCategory
---@param shouldLoad? boolean
---@return table
function IAssetOrigin.GetAssets(category, shouldLoad) end

-- Returns all assets of the given base location path which can be found in this origin 
---@param baseLocation AssetLocation Defines a complete path to an assets, including it's domain
---@param shouldLoad? boolean
---@return table
function IAssetOrigin.GetAssets(baseLocation, shouldLoad) end

-- Resource packs are not allowed to affect gameplay
---@return boolean
function IAssetOrigin.IsAllowedToAffectGameplay() end


