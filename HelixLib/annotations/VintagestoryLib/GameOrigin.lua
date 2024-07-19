---@meta

---@class GameOrigin: PathOrigin, PathOrigin, IAssetOrigin
---@field OriginPath string
---@field Domain string
GameOrigin = {}

---@param assetsPath string
---@return GameOrigin
function GameOrigin.ctor(assetsPath) end

---@return string
function GameOrigin.get_OriginPath() end

---@return string
function GameOrigin.get_Domain() end

---@param asset IAsset Represents a loaded asset from the assets folder
function GameOrigin.LoadAsset(asset) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return boolean
function GameOrigin.TryLoadAsset(asset) end

---@param Category AssetCategory
---@param shouldLoad? boolean
---@return table
function GameOrigin.GetAssets(Category, shouldLoad) end

---@param baseLocation AssetLocation Defines a complete path to an assets, including it's domain
---@param shouldLoad? boolean
---@return table
function GameOrigin.GetAssets(baseLocation, shouldLoad) end

---@return boolean
function GameOrigin.IsAllowedToAffectGameplay() end

---@return string
function GameOrigin.GetDefaultDomain() end

---@return userdata
function GameOrigin.GetType() end

---@return string
function GameOrigin.ToString() end

---@param obj userdata
---@return boolean
function GameOrigin.Equals(obj) end

---@return number
function GameOrigin.GetHashCode() end


