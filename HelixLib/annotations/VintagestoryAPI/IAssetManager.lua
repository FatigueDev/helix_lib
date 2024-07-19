---@meta

-- Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
---@class IAssetManager
---@field AllAssets table All assets found in the assets folder
---@field Origins table Returns all origins in the priority order. Highest (First) to Lowest (Last)
IAssetManager = {}


---@return table
function IAssetManager.get_AllAssets() end

-- Returns true if given asset exists in the list of loaded assets
---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function IAssetManager.Exists(location) end

-- Adds a runtime asset to the game, curently used by ModCompatiblityUtil. Allows you do add an asset found at path but loaded from path asset.Path. 
---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param asset IAsset Represents a loaded asset from the assets folder
function IAssetManager.Add(path, asset) end

-- Retrieves an asset from given path within the assets folder. Throws an exception when the asset does not exist. Remember to use lower case paths.
---@param path string
---@return IAsset # Represents a loaded asset from the assets folder
function IAssetManager.Get(path) end

-- Retrieves an asset from given path within the assets folder. Throws an exception when the asset does not exist. Remember to use lower case paths.
---@param Location AssetLocation Defines a complete path to an assets, including it's domain
---@return IAsset # Represents a loaded asset from the assets folder
function IAssetManager.Get(Location) end

-- Retrieves an asset from given path within the assets folder. Returns null when the asset does not exist. Remember to use lower case paths.
--  Mods must not call TryGet to get assets before AssetsLoaded stage in a ModSystem - do not load assets in the Start() method!  In StartClientSide() is OK though.  (Or if you absolutely have to load assets in Start(), use IAssetManager.Get(), but it will throw an exception for anything except a base asset.)
---@param Path string
---@param loadAsset? boolean
---@return IAsset # Represents a loaded asset from the assets folder
function IAssetManager.TryGet(Path, loadAsset) end

-- Retrieves an asset from given path within the assets folder. Returns null when the asset does not exist. Remember to use lower case paths.
--  Mods must not call TryGet to get assets before AssetsLoaded stage in a ModSystem - do not load assets in the Start() method!  (Or if you absolutely have to load assets in Start(), use IAssetManager.Get(), but it will throw an exception for anything except a base asset.)
---@param Location AssetLocation Defines a complete path to an assets, including it's domain
---@param loadAsset? boolean
---@return IAsset # Represents a loaded asset from the assets folder
function IAssetManager.TryGet(Location, loadAsset) end

-- Returns all assets inside given category with the given path. If no domain is specified, all domains will be searched. The returned list is considered unsorted.
---@param pathBegins string
---@param domain? string
---@param loadAsset? boolean
---@return table
function IAssetManager.GetMany(pathBegins, domain, loadAsset) end

---@param categoryCode string
---@param pathBegins string
---@param domain? string
---@param loadAsset? boolean
---@return table
function IAssetManager.GetManyInCategory(categoryCode, pathBegins, domain, loadAsset) end

---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param pathBegins string
---@param domain? string
---@return table
function IAssetManager.GetMany(logger, pathBegins, domain) end

-- Returns all asset locations that begins with given path and domain. If no domain is specified, all domains will be searched. The returned list is considered unsorted.
---@param pathBegins string
---@param domain? string
---@return table
function IAssetManager.GetLocations(pathBegins, domain) end

-- Retrieves an asset from given path within the assets folder. Throws an exception when the asset does not exist. Remember to use lower case paths.
---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@return T
function IAssetManager.Get(location) end

-- Reloads all assets in given base location path. It returns the amount of the found locations.
---@param baseLocation AssetLocation Defines a complete path to an assets, including it's domain
---@return number
function IAssetManager.Reload(baseLocation) end

-- Reloads all assets in given base location path. It returns the amount of the found locations.
---@param category AssetCategory
---@return number
function IAssetManager.Reload(category) end

---@return table
function IAssetManager.get_Origins() end

---@param domain string
---@param fullPath string
function IAssetManager.AddPathOrigin(domain, fullPath) end

---@param domain string
---@param fullPath string
function IAssetManager.AddModOrigin(domain, fullPath) end


