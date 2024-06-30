---@meta

-- Helper class for implementors of ITexPositionSource
---@class ContainedTextureSource:  ITexPositionSource
---@field AtlasSize Size2i
---@field Item TextureAtlasPosition
---@field Textures table
ContainedTextureSource = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param targetAtlas ITextureAtlasAPI Entity texture Atlas.
---@param textures table
---@param sourceForErrorLogging string
---@return ContainedTextureSource
function ContainedTextureSource.ctor(capi, targetAtlas, textures, sourceForErrorLogging) end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function ContainedTextureSource.get_AtlasSize() end

---@param textureCode string
---@return TextureAtlasPosition # The position of a texture inside an atlas
function ContainedTextureSource.get_Item(textureCode) end

---@return userdata
function ContainedTextureSource.GetType() end

---@return string
function ContainedTextureSource.ToString() end

---@param obj userdata
---@return boolean
function ContainedTextureSource.Equals(obj) end

---@return number
function ContainedTextureSource.GetHashCode() end


