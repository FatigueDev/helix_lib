---@meta

-- An interface that can supply texture atlas positions 
---@class ITexPositionSource
---@field Item TextureAtlasPosition
---@field AtlasSize Size2i This returns the size of the atlas this texture resides in.
ITexPositionSource = {}


---@param textureCode string
---@return TextureAtlasPosition # The position of a texture inside an atlas
function ITexPositionSource.get_Item(textureCode) end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function ITexPositionSource.get_AtlasSize() end


