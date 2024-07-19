---@meta

---@class Asset:  IAsset
---@field Origin IAssetOrigin
---@field Name string
---@field Data number
---@field Location AssetLocation
---@field FilePath string
Asset = {}

---@param bytes number
---@param Location AssetLocation Defines a complete path to an assets, including it's domain
---@param origin IAssetOrigin
---@return Asset
function Asset.ctor(bytes, Location, origin) end
---@param Location AssetLocation Defines a complete path to an assets, including it's domain
---@return Asset
function Asset.ctor(Location) end

---@return IAssetOrigin
function Asset.get_Origin() end

---@param value IAssetOrigin
function Asset.set_Origin(value) end

---@return string
function Asset.get_Name() end

---@param settings? JsonSerializerSettings
---@return T
function Asset.ToObject(settings) end

---@return string
function Asset.ToText() end

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return BitmapRef
function Asset.ToBitmap(api) end

---@return boolean
function Asset.IsLoaded() end

---@return string
function Asset.ToString() end

---@return number
function Asset.GetHashCode() end

---@param obj userdata
---@return boolean
function Asset.Equals(obj) end

---@param data number
---@return string
function Asset.BytesToString(data) end

---@return userdata
function Asset.GetType() end


