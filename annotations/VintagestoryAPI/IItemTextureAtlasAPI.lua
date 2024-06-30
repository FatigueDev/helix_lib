---@meta

-- Item texture Atlas.
---@class IItemTextureAtlasAPI:  ITextureAtlasAPI
IItemTextureAtlasAPI = {}


-- Returns the position in the item texture atlas of given item. For items that don't use custom shapes you don't have to supply the textureName
---@param item Item Represents an in game Item of Vintage Story
---@param textureName? string
---@param returnNullWhenMissing? boolean
---@return TextureAtlasPosition # The position of a texture inside an atlas
function IItemTextureAtlasAPI.GetPosition(item, textureName, returnNullWhenMissing) end


