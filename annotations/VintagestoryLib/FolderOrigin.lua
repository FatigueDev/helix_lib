---@meta

---@class FolderOrigin:  IAssetOrigin
---@field OriginPath string
FolderOrigin = {}

---@param fullPath string
---@return FolderOrigin
function FolderOrigin.ctor(fullPath) end

---@return string
function FolderOrigin.get_OriginPath() end

---@param asset IAsset Represents a loaded asset from the assets folder
function FolderOrigin.LoadAsset(asset) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return boolean
function FolderOrigin.TryLoadAsset(asset) end

---@param Category AssetCategory
---@param shouldLoad? boolean
---@return table
function FolderOrigin.GetAssets(Category, shouldLoad) end

---@param baseLocation AssetLocation Defines a complete path to an assets, including it's domain
---@param shouldLoad? boolean
---@return table
function FolderOrigin.GetAssets(baseLocation, shouldLoad) end

---@return boolean
function FolderOrigin.IsAllowedToAffectGameplay() end

---@return userdata
function FolderOrigin.GetType() end

---@return string
function FolderOrigin.ToString() end

---@param obj userdata
---@return boolean
function FolderOrigin.Equals(obj) end

---@return number
function FolderOrigin.GetHashCode() end


