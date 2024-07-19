---@meta

---@class AssetManager:  IAssetManager
---@field AllAssets table
---@field allAssetsLoaded boolean
---@field Assets table
---@field RuntimeAssets table
---@field Origins table
---@field CustomAppOrigins table
---@field CustomModOrigins table
AssetManager = {}

---@param assetsPath string
---@param side EnumAppSide
---@return AssetManager
function AssetManager.ctor(assetsPath, side) end

---@return table
function AssetManager.get_AllAssets() end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param asset IAsset Represents a loaded asset from the assets folder
function AssetManager.Add(path, asset) end

---@param Logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@return number
function AssetManager.InitAndLoadBaseAssets(Logger) end

---@param Logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param modloader? ModLoader
---@return number
function AssetManager.AddExternalAssets(Logger, modloader) end

---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
function AssetManager.UnloadExternalAssets(logger) end

---@param category AssetCategory
function AssetManager.UnloadAssets(category) end

function AssetManager.UnloadAssets() end

---@param fullPathBeginsWith string
---@param domain? string
---@return table
function AssetManager.GetLocations(fullPathBeginsWith, domain) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function AssetManager.Exists(location) end

---@param Path string
---@param loadAsset? boolean
---@return IAsset # Represents a loaded asset from the assets folder
function AssetManager.TryGet(Path, loadAsset) end

---@param Location AssetLocation Defines a complete path to an assets, including it's domain
---@param loadAsset? boolean
---@return IAsset # Represents a loaded asset from the assets folder
function AssetManager.TryGet(Location, loadAsset) end

---@param Path string
---@param loadAsset? boolean
---@return IAsset # Represents a loaded asset from the assets folder
function AssetManager.TryGet_BaseAssets(Path, loadAsset) end

---@param Location AssetLocation Defines a complete path to an assets, including it's domain
---@param loadAsset? boolean
---@return IAsset # Represents a loaded asset from the assets folder
function AssetManager.TryGet_BaseAssets(Location, loadAsset) end

---@param Path string
---@return IAsset # Represents a loaded asset from the assets folder
function AssetManager.Get(Path) end

---@param Location AssetLocation Defines a complete path to an assets, including it's domain
---@return IAsset # Represents a loaded asset from the assets folder
function AssetManager.Get(Location) end

---@param Location AssetLocation Defines a complete path to an assets, including it's domain
---@return T
function AssetManager.Get(Location) end

---@param category AssetCategory
---@param loadAsset? boolean
---@return table
function AssetManager.GetMany(category, loadAsset) end

---@param categoryCode string
---@param pathBegins string
---@param domain? string
---@param loadAsset? boolean
---@return table
function AssetManager.GetManyInCategory(categoryCode, pathBegins, domain, loadAsset) end

---@param partialPath string
---@param domain? string
---@param loadAsset? boolean
---@return table
function AssetManager.GetMany(partialPath, domain, loadAsset) end

---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param fullPath string
---@param domain? string
---@return table
function AssetManager.GetMany(logger, fullPath, domain) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@return number
function AssetManager.Reload(location) end

---@param category AssetCategory
---@return number
function AssetManager.Reload(category) end

---@param fullpath string
---@return AssetCategory
function AssetManager.GetCategoryFromFullPath(fullpath) end

---@param domain string
---@param fullPath string
function AssetManager.AddPathOrigin(domain, fullPath) end

---@param domain string
---@param fullPath string
function AssetManager.AddModOrigin(domain, fullPath) end

---@return userdata
function AssetManager.GetType() end

---@return string
function AssetManager.ToString() end

---@param obj userdata
---@return boolean
function AssetManager.Equals(obj) end

---@return number
function AssetManager.GetHashCode() end


