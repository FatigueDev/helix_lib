---@meta

---@class EntityTextureAtlasManager: TextureAtlasManager, TextureAtlasManager, ITextureAtlasAPI, ITextureLocationDictionary, Multithreaded
---@field Count number
---@field UnknownTexturePosition TextureAtlasPosition
---@field Item number
---@field Size Size2i
---@field Item TextureAtlasPosition
---@field SubPixelPaddingX number
---@field SubPixelPaddingY number
---@field Positions TextureAtlasPosition[]
---@field Atlasses table
---@field AtlasTextures table
---@field TextureAtlasPositionsByTextureSubId TextureAtlasPosition[]
---@field UnknownTexturePos TextureAtlasPosition
EntityTextureAtlasManager = {}

---@param game ClientMain
---@return EntityTextureAtlasManager
function EntityTextureAtlasManager.ctor(game) end

---@param typeClient EntityClientProperties
---@param shape Shape The base shape for all json objects.
function EntityTextureAtlasManager.ResolveTextureCodes(typeClient, shape) end

---@return number
function EntityTextureAtlasManager.get_Count() end

---@return TextureAtlasPosition # The position of a texture inside an atlas
function EntityTextureAtlasManager.get_UnknownTexturePosition() end

---@param textureLoc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return number
function EntityTextureAtlasManager.get_Item(textureLoc) end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityTextureAtlasManager.get_Size() end

---@param value Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityTextureAtlasManager.set_Size(value) end

---@param textureLocation AssetLocation Defines a complete path to an assets, including it's domain
---@return TextureAtlasPosition # The position of a texture inside an atlas
function EntityTextureAtlasManager.get_Item(textureLocation) end

---@return number
function EntityTextureAtlasManager.get_SubPixelPaddingX() end

---@return number
function EntityTextureAtlasManager.get_SubPixelPaddingY() end

---@return TextureAtlasPosition[] # The position of a texture inside an atlas
function EntityTextureAtlasManager.get_Positions() end

---@param itemclass string
function EntityTextureAtlasManager.CreateNewAtlas(itemclass) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return boolean
function EntityTextureAtlasManager.AddTextureLocation(loc) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
function EntityTextureAtlasManager.SetTextureLocation(loc) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return number
function EntityTextureAtlasManager.GetOrAddTextureLocation(loc) end

---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function EntityTextureAtlasManager.ContainsKey(loc) end

function EntityTextureAtlasManager.GenFramebuffer() end

---@param atlasTextureId number
---@param fromTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param targetX number
---@param targetY number
---@param alphaTest? number
function EntityTextureAtlasManager.RenderTextureIntoAtlas(atlasTextureId, fromTexture, sourceX, sourceY, sourceWidth, sourceHeight, targetX, targetY, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param onCreate? CreateTextureDelegate
---@param alphaTest? number
---@return boolean
function EntityTextureAtlasManager.GetOrInsertTexture(path, textureSubId, texPos, onCreate, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param bmp IBitmap
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function EntityTextureAtlasManager.InsertTextureCached(path, bmp, textureSubId, texPos, alphaTest) end

---@param bmp IBitmap
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function EntityTextureAtlasManager.InsertTexture(bmp, textureSubId, texPos, alphaTest) end

---@param atlasNumber number
function EntityTextureAtlasManager.RegenMipMaps(atlasNumber) end

---@param bmp BitmapRef
---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@param textureSubIdOut number
---@return boolean
function EntityTextureAtlasManager.InsertTexture(bmp, loc, textureSubIdOut) end

---@param width number
---@param height number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@return boolean
function EntityTextureAtlasManager.AllocateTextureSpace(width, height, textureSubId, texPos) end

---@param textureSubId number
function EntityTextureAtlasManager.FreeTextureSpace(textureSubId) end

function EntityTextureAtlasManager.PopulateTextureAtlassesFromTextures() end

function EntityTextureAtlasManager.ComposeTextureAtlasses_StageA() end

function EntityTextureAtlasManager.ComposeTextureAtlasses_StageB() end

function EntityTextureAtlasManager.ComposeTextureAtlasses_StageC() end

---@return TextureAtlasManager
function EntityTextureAtlasManager.ReloadTextures() end

---@return TextureAtlasManager
function EntityTextureAtlasManager.PauseRegenMipmaps() end

---@return TextureAtlasManager
function EntityTextureAtlasManager.ResumeRegenMipmaps() end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@return IBitmap
function EntityTextureAtlasManager.LoadCompositeBitmap(path) end

---@param shape Shape The base shape for all json objects.
function EntityTextureAtlasManager.LoadShapeTextureCodes(shape) end

---@param texturesDict FastSmallDictionary`2 A fast implementation of IDictionary using arrays.  Only suitable for small dictionaries, typically 1-20 entries. Note that Add is implemented differently from a standard Dictionary, it does not check that the key is not already present (and does not throw an ArgumentException) Additional methods AddIfNotPresent() and Clone() are provided for convenience.  There are also additional convenient constructors
function EntityTextureAtlasManager.ResolveTextureDict(texturesDict) end

function EntityTextureAtlasManager.Dispose() end

---@param textureSubId number
---@return number
function EntityTextureAtlasManager.GetRandomColor(textureSubId) end

---@param textureSubId number
---@param rndIndex number
---@return number
function EntityTextureAtlasManager.GetRandomColor(textureSubId, rndIndex) end

---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@param rndIndex number
---@return number
function EntityTextureAtlasManager.GetRandomColor(texPos, rndIndex) end

---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@return number
function EntityTextureAtlasManager.GetRandomColors(texPos) end

---@param textureSubId number
---@return number
function EntityTextureAtlasManager.GetAverageColor(textureSubId) end

---@param bytes number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function EntityTextureAtlasManager.InsertTexture(bytes, textureSubId, texPos, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param bytes number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function EntityTextureAtlasManager.InsertTextureCached(path, bytes, textureSubId, texPos, alphaTest) end

---@param ct CompositeTexture A single block texture
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function EntityTextureAtlasManager.InsertTextureCached(ct, textureSubId, texPos, alphaTest) end

---@param compositeShape Shape The base shape for all json objects.
---@param targetDict IDictionary`2
---@param baseLoc AssetLocation Defines a complete path to an assets, including it's domain
function EntityTextureAtlasManager.CollectAndBakeTexturesFromShape(compositeShape, targetDict, baseLoc) end

---@return userdata
function EntityTextureAtlasManager.GetType() end

---@return string
function EntityTextureAtlasManager.ToString() end

---@param obj userdata
---@return boolean
function EntityTextureAtlasManager.Equals(obj) end

---@return number
function EntityTextureAtlasManager.GetHashCode() end


