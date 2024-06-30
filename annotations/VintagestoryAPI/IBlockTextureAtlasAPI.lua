---@meta

-- Block texture Atlas
---@class IBlockTextureAtlasAPI:  ITextureAtlasAPI
IBlockTextureAtlasAPI = {}


-- Returns the position in the block texture atlas of given block. 
---@param block Block Basic class for a placeable block
---@param textureName string
---@param returnNullWhenMissing? boolean
---@return TextureAtlasPosition # The position of a texture inside an atlas
function IBlockTextureAtlasAPI.GetPosition(block, textureName, returnNullWhenMissing) end


