---@meta

---@class ThemeFolderOrigin: FolderOrigin, FolderOrigin, IAssetOrigin
---@field OriginPath string
ThemeFolderOrigin = {}

---@param fullPath string
---@return ThemeFolderOrigin
function ThemeFolderOrigin.ctor(fullPath) end

---@return boolean
function ThemeFolderOrigin.IsAllowedToAffectGameplay() end

---@return string
function ThemeFolderOrigin.get_OriginPath() end

---@param asset IAsset Represents a loaded asset from the assets folder
function ThemeFolderOrigin.LoadAsset(asset) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return boolean
function ThemeFolderOrigin.TryLoadAsset(asset) end

---@param Category AssetCategory
---@param shouldLoad? boolean
---@return table
function ThemeFolderOrigin.GetAssets(Category, shouldLoad) end

---@param baseLocation AssetLocation Defines a complete path to an assets, including it's domain
---@param shouldLoad? boolean
---@return table
function ThemeFolderOrigin.GetAssets(baseLocation, shouldLoad) end

---@return userdata
function ThemeFolderOrigin.GetType() end

---@return string
function ThemeFolderOrigin.ToString() end

---@param obj userdata
---@return boolean
function ThemeFolderOrigin.Equals(obj) end

---@return number
function ThemeFolderOrigin.GetHashCode() end


