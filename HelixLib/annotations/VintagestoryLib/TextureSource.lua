---@meta

---@class TextureSource:  ITexPositionSource
---@field AtlasSize Size2i
---@field Item TextureAtlasPosition
---@field atlasSize Size2i
---@field entity Entity
---@field block Block
---@field item Item
---@field isDecalUv boolean
---@field returnNullWhenMissing boolean
---@field atlasMgr TextureAtlasManager
TextureSource = {}

---@param game ClientMain
---@param atlasSize Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param block Block Basic class for a placeable block
---@param forInventory? boolean
---@return TextureSource
function TextureSource.ctor(game, atlasSize, block, forInventory) end
---@param game ClientMain
---@param atlasSize Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param item Item Represents an in game Item of Vintage Story
---@return TextureSource
function TextureSource.ctor(game, atlasSize, item) end
---@param game ClientMain
---@param atlasSize Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param entity Entity The basic class for all entities in the game
---@param extraTextures? table
---@param altTextureNumber? number
---@return TextureSource
function TextureSource.ctor(game, atlasSize, entity, extraTextures, altTextureNumber) end
---@param game ClientMain
---@param atlasSize Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param block Block Basic class for a placeable block
---@param altTextureNumber number
---@return TextureSource
function TextureSource.ctor(game, atlasSize, block, altTextureNumber) end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function TextureSource.get_AtlasSize() end

---@param block Block Basic class for a placeable block
---@param altTextureNumber number
function TextureSource.UpdateVariant(block, altTextureNumber) end

---@param textureCode string
---@return TextureAtlasPosition # The position of a texture inside an atlas
function TextureSource.get_Item(textureCode) end

---@return userdata
function TextureSource.GetType() end

---@return string
function TextureSource.ToString() end

---@param obj userdata
---@return boolean
function TextureSource.Equals(obj) end

---@return number
function TextureSource.GetHashCode() end


