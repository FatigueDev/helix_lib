---@meta

-- An expanded, atlas-friendly version of a CompositeTexture
---@class BakedCompositeTexture
---@field TextureSubId number Unique identifier for this texture
---@field BakedName AssetLocation The Base name and Overlay concatenated (if there was any defined)
---@field TextureFilenames AssetLocation[] The base name and overlays as array
---@field BakedVariants BakedCompositeTexture[] If non-null also contains BakedName
---@field BakedTiles BakedCompositeTexture[] If non-null also contains BakedName
---@field TilesWidth number
BakedCompositeTexture = {}

---@return BakedCompositeTexture
function BakedCompositeTexture.ctor() end

---@return userdata
function BakedCompositeTexture.GetType() end

---@return string
function BakedCompositeTexture.ToString() end

---@param obj userdata
---@return boolean
function BakedCompositeTexture.Equals(obj) end

---@return number
function BakedCompositeTexture.GetHashCode() end


