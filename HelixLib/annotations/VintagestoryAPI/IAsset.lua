---@meta

-- Represents a loaded asset from the assets folder
---@class IAsset
---@field Name string The assets Filename 
---@field Location AssetLocation The AssetLocation of the asset.
---@field Origin IAssetOrigin The origin informaton of the asset.
---@field Data number The file contents in binary format
IAsset = {}


---@return string
function IAsset.get_Name() end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function IAsset.get_Location() end

---@return IAssetOrigin
function IAsset.get_Origin() end

---@param value IAssetOrigin
function IAsset.set_Origin(value) end

---@return number
function IAsset.get_Data() end

---@param value number
function IAsset.set_Data(value) end

---@param settings? JsonSerializerSettings
---@return T
function IAsset.ToObject(settings) end

-- Turns the binary data into a UTF-8 string. Use for text files.
---@return string
function IAsset.ToText() end

-- Turns the binary data into a Bitmap. Use for .png images. Does not work on other image formats.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return BitmapRef
function IAsset.ToBitmap(capi) end

-- Whether or not the asset is currently loaded.
---@return boolean
function IAsset.IsLoaded() end


