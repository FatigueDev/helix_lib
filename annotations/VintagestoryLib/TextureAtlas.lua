---@meta

---@class TextureAtlas
---@field textureBounds table
---@field Full boolean
---@field width number
---@field height number
TextureAtlas = {}

---@param width number
---@param height number
---@param subPixelPaddingx number
---@param subPixelPaddingy number
---@return TextureAtlas
function TextureAtlas.ctor(width, height, subPixelPaddingx, subPixelPaddingy) end

---@param textureSubId number
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param asset IAsset Represents a loaded asset from the assets folder
---@return boolean
function TextureAtlas.InsertTexture(textureSubId, capi, asset) end

---@param textureSubId number
---@param bmp IBitmap
---@param copyPixels? boolean
---@return boolean
function TextureAtlas.InsertTexture(textureSubId, bmp, copyPixels) end

---@param textureSubId number
---@param width number
---@param height number
---@param pixels number
---@return boolean
function TextureAtlas.InsertTexture(textureSubId, width, height, pixels) end

---@param tpos TextureAtlasPosition The position of a texture inside an atlas
---@param pixels number
function TextureAtlas.UpdateTexture(tpos, pixels) end

---@param textureSubId number
---@param width number
---@param height number
---@return TextureAtlasPosition # The position of a texture inside an atlas
function TextureAtlas.AllocateTextureSpace(textureSubId, width, height) end

---@param textureSubId number
---@return boolean
function TextureAtlas.FreeTextureSpace(textureSubId) end

---@return number
function TextureAtlas.AtlasWidth() end

---@return number
function TextureAtlas.AtlasHeight() end

---@param filename string
---@param game ClientMain
---@param atlasTextureId number
function TextureAtlas.Export(filename, game, atlasTextureId) end

---@param x number
---@param y number
---@return number
function TextureAtlas.GetPixel(x, y) end

---@param game ClientMain
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function TextureAtlas.Upload(game) end

---@param positions TextureAtlasPosition[] The position of a texture inside an atlas
---@param atlasNumber number
function TextureAtlas.PopulateAtlasPositions(positions, atlasNumber) end

---@param platform ClientPlatformAbstract
---@param texAtlas LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function TextureAtlas.DrawToTexture(platform, texAtlas) end

function TextureAtlas.DisposePixels() end

function TextureAtlas.ReinitPixels() end

---@return userdata
function TextureAtlas.GetType() end

---@return string
function TextureAtlas.ToString() end

---@param obj userdata
---@return boolean
function TextureAtlas.Equals(obj) end

---@return number
function TextureAtlas.GetHashCode() end


