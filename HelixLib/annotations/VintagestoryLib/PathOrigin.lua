---@meta

---@class PathOrigin:  IAssetOrigin
---@field OriginPath string
---@field Domain string
PathOrigin = {}

---@param domain string
---@param fullPath string
---@return PathOrigin
function PathOrigin.ctor(domain, fullPath) end

---@return string
function PathOrigin.get_OriginPath() end

---@return string
function PathOrigin.get_Domain() end

---@param asset IAsset Represents a loaded asset from the assets folder
function PathOrigin.LoadAsset(asset) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return boolean
function PathOrigin.TryLoadAsset(asset) end

---@param Category AssetCategory
---@param shouldLoad? boolean
---@return table
function PathOrigin.GetAssets(Category, shouldLoad) end

---@param baseLocation AssetLocation Defines a complete path to an assets, including it's domain
---@param shouldLoad? boolean
---@return table
function PathOrigin.GetAssets(baseLocation, shouldLoad) end

---@return boolean
function PathOrigin.IsAllowedToAffectGameplay() end

---@return string
function PathOrigin.GetDefaultDomain() end

---@return userdata
function PathOrigin.GetType() end

---@return string
function PathOrigin.ToString() end

---@param obj userdata
---@return boolean
function PathOrigin.Equals(obj) end

---@return number
function PathOrigin.GetHashCode() end


