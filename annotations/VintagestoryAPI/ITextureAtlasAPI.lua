---@meta

-- Entity texture Atlas.
---@class ITextureAtlasAPI
---@field Item TextureAtlasPosition
---@field UnknownTexturePosition TextureAtlasPosition The texture atlas position of the "unknown.png" texture
---@field Size Size2i Size of one block texture atlas
---@field SubPixelPaddingX number As configured in the clientsettings.json divided by the texture atlas size
---@field SubPixelPaddingY number
---@field Positions TextureAtlasPosition[] Returns the default texture atlas position for all blocks, referenced  by the texturesubid
---@field AtlasTextures table Returns the list of currently loaded texture atlas ids
ITextureAtlasAPI = {}


---@param textureLocation AssetLocation Defines a complete path to an assets, including it's domain
---@return TextureAtlasPosition # The position of a texture inside an atlas
function ITextureAtlasAPI.get_Item(textureLocation) end

---@return TextureAtlasPosition # The position of a texture inside an atlas
function ITextureAtlasAPI.get_UnknownTexturePosition() end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function ITextureAtlasAPI.get_Size() end

---@return number
function ITextureAtlasAPI.get_SubPixelPaddingX() end

---@return number
function ITextureAtlasAPI.get_SubPixelPaddingY() end

---@return TextureAtlasPosition[] # The position of a texture inside an atlas
function ITextureAtlasAPI.get_Positions() end

---@return table
function ITextureAtlasAPI.get_AtlasTextures() end

---@param width number
---@param height number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@return boolean
function ITextureAtlasAPI.AllocateTextureSpace(width, height, textureSubId, texPos) end

---@param bmp IBitmap
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function ITextureAtlasAPI.InsertTexture(bmp, textureSubId, texPos, alphaTest) end

---@param pngBytes number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function ITextureAtlasAPI.InsertTexture(pngBytes, textureSubId, texPos, alphaTest) end

-- Loads a bitmap from given asset. Can use ++ syntax for texture overlay and @[int] for texture rotation
---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@return IBitmap
function ITextureAtlasAPI.LoadCompositeBitmap(path) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param onCreate? CreateTextureDelegate
---@param alphaTest? number
---@return boolean
function ITextureAtlasAPI.GetOrInsertTexture(path, textureSubId, texPos, onCreate, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param bmp IBitmap
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function ITextureAtlasAPI.InsertTextureCached(path, bmp, textureSubId, texPos, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param pngBytes number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function ITextureAtlasAPI.InsertTextureCached(path, pngBytes, textureSubId, texPos, alphaTest) end

---@param texture CompositeTexture A single block texture
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function ITextureAtlasAPI.InsertTextureCached(texture, textureSubId, texPos, alphaTest) end

-- Deallocates a previously allocated texture space
---@param textureSubId number
function ITextureAtlasAPI.FreeTextureSpace(textureSubId) end

-- Returns an rgba value picked randomly inside the given texture (defined by its sub-id)
---@param textureSubId number
---@return number
function ITextureAtlasAPI.GetRandomColor(textureSubId) end

-- Regenerates the mipmaps for one of the atlas textures, given by its array index
---@param atlasIndex number
function ITextureAtlasAPI.RegenMipMaps(atlasIndex) end

-- Returns one of 30 random rgba values inside the given texture (defined by its sub-id)
---@param textureSubId number
---@param rndIndex number
---@return number
function ITextureAtlasAPI.GetRandomColor(textureSubId, rndIndex) end

-- Returns one of 30 random rgba values inside the given texture (defined by its sub-id)
---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@param rndIndex number
---@return number
function ITextureAtlasAPI.GetRandomColor(texPos, rndIndex) end

-- Get the random colors array for the specified TextureAtlasPosition, creating it if necessary
---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@return number
function ITextureAtlasAPI.GetRandomColors(texPos) end

-- Returns you an average rgba value picked inside the texture subid
---@param textureSubId number
---@return number
function ITextureAtlasAPI.GetAverageColor(textureSubId) end

-- Renders given texture into the texture atlas at given location
---@param intoAtlasTextureId number
---@param fromTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param targetX number
---@param targetY number
---@param alphaTest? number
function ITextureAtlasAPI.RenderTextureIntoAtlas(intoAtlasTextureId, fromTexture, sourceX, sourceY, sourceWidth, sourceHeight, targetX, targetY, alphaTest) end


