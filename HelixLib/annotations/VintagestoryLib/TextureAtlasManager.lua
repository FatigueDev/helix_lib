---@meta

---@class TextureAtlasManager: Multithreaded, ITextureAtlasAPI, ITextureLocationDictionary, Multithreaded
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
---@field atlasFramebuffer FrameBufferRef
TextureAtlasManager = {}

---@param game ClientMain
---@return TextureAtlasManager
function TextureAtlasManager.ctor(game) end

---@return number
function TextureAtlasManager.get_Count() end

---@return TextureAtlasPosition # The position of a texture inside an atlas
function TextureAtlasManager.get_UnknownTexturePosition() end

---@param textureLoc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return number
function TextureAtlasManager.get_Item(textureLoc) end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function TextureAtlasManager.get_Size() end

---@param value Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function TextureAtlasManager.set_Size(value) end

---@param textureLocation AssetLocation Defines a complete path to an assets, including it's domain
---@return TextureAtlasPosition # The position of a texture inside an atlas
function TextureAtlasManager.get_Item(textureLocation) end

---@return number
function TextureAtlasManager.get_SubPixelPaddingX() end

---@return number
function TextureAtlasManager.get_SubPixelPaddingY() end

---@return TextureAtlasPosition[] # The position of a texture inside an atlas
function TextureAtlasManager.get_Positions() end

---@param itemclass string
function TextureAtlasManager.CreateNewAtlas(itemclass) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return boolean
function TextureAtlasManager.AddTextureLocation(loc) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
function TextureAtlasManager.SetTextureLocation(loc) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return number
function TextureAtlasManager.GetOrAddTextureLocation(loc) end

---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function TextureAtlasManager.ContainsKey(loc) end

function TextureAtlasManager.GenFramebuffer() end

---@param atlasTextureId number
---@param fromTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param targetX number
---@param targetY number
---@param alphaTest? number
function TextureAtlasManager.RenderTextureIntoAtlas(atlasTextureId, fromTexture, sourceX, sourceY, sourceWidth, sourceHeight, targetX, targetY, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param onCreate? CreateTextureDelegate
---@param alphaTest? number
---@return boolean
function TextureAtlasManager.GetOrInsertTexture(path, textureSubId, texPos, onCreate, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param bmp IBitmap
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function TextureAtlasManager.InsertTextureCached(path, bmp, textureSubId, texPos, alphaTest) end

---@param bmp IBitmap
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function TextureAtlasManager.InsertTexture(bmp, textureSubId, texPos, alphaTest) end

---@param atlasNumber number
function TextureAtlasManager.RegenMipMaps(atlasNumber) end

---@param bmp BitmapRef
---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@param textureSubIdOut number
---@return boolean
function TextureAtlasManager.InsertTexture(bmp, loc, textureSubIdOut) end

---@param width number
---@param height number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@return boolean
function TextureAtlasManager.AllocateTextureSpace(width, height, textureSubId, texPos) end

---@param textureSubId number
function TextureAtlasManager.FreeTextureSpace(textureSubId) end

function TextureAtlasManager.PopulateTextureAtlassesFromTextures() end

function TextureAtlasManager.ComposeTextureAtlasses_StageA() end

function TextureAtlasManager.ComposeTextureAtlasses_StageB() end

function TextureAtlasManager.ComposeTextureAtlasses_StageC() end

---@return TextureAtlasManager
function TextureAtlasManager.ReloadTextures() end

---@return TextureAtlasManager
function TextureAtlasManager.PauseRegenMipmaps() end

---@return TextureAtlasManager
function TextureAtlasManager.ResumeRegenMipmaps() end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@return IBitmap
function TextureAtlasManager.LoadCompositeBitmap(path) end

---@param game ClientMain
---@param compositeTextureName string
---@return BakedBitmap
function TextureAtlasManager.LoadCompositeBitmap(game, compositeTextureName) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return AssetLocationAndSource # Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
function TextureAtlasManager.ToTextureAssetLocation(loc) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return number
function TextureAtlasManager.getRotation(loc) end

---@param tex AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return number
function TextureAtlasManager.getAlpha(tex) end

---@param game ClientMain
---@param compositeTextureLocation AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return BakedBitmap
function TextureAtlasManager.LoadCompositeBitmap(game, compositeTextureLocation) end

---@param game ClientMain
---@param compositeTextureLocation AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@param cache table
---@return BakedBitmap
function TextureAtlasManager.LoadCompositeBitmap(game, compositeTextureLocation, cache) end

---@param game ClientMain
---@param textureLoc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return BitmapRef
function TextureAtlasManager.LoadBitmap(game, textureLoc) end

---@param shape Shape The base shape for all json objects.
function TextureAtlasManager.LoadShapeTextureCodes(shape) end

---@param texturesDict FastSmallDictionary`2 A fast implementation of IDictionary using arrays.  Only suitable for small dictionaries, typically 1-20 entries. Note that Add is implemented differently from a standard Dictionary, it does not check that the key is not already present (and does not throw an ArgumentException) Additional methods AddIfNotPresent() and Clone() are provided for convenience.  There are also additional convenient constructors
function TextureAtlasManager.ResolveTextureDict(texturesDict) end

function TextureAtlasManager.Dispose() end

---@param textureSubId number
---@return number
function TextureAtlasManager.GetRandomColor(textureSubId) end

---@param textureSubId number
---@param rndIndex number
---@return number
function TextureAtlasManager.GetRandomColor(textureSubId, rndIndex) end

---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@param rndIndex number
---@return number
function TextureAtlasManager.GetRandomColor(texPos, rndIndex) end

---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@return number
function TextureAtlasManager.GetRandomColors(texPos) end

---@param textureSubId number
---@return number
function TextureAtlasManager.GetAverageColor(textureSubId) end

---@param bytes number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function TextureAtlasManager.InsertTexture(bytes, textureSubId, texPos, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param bytes number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function TextureAtlasManager.InsertTextureCached(path, bytes, textureSubId, texPos, alphaTest) end

---@param ct CompositeTexture A single block texture
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function TextureAtlasManager.InsertTextureCached(ct, textureSubId, texPos, alphaTest) end

---@param compositeShape Shape The base shape for all json objects.
---@param targetDict IDictionary`2
---@param baseLoc AssetLocation Defines a complete path to an assets, including it's domain
function TextureAtlasManager.CollectAndBakeTexturesFromShape(compositeShape, targetDict, baseLoc) end

---@return userdata
function TextureAtlasManager.GetType() end

---@return string
function TextureAtlasManager.ToString() end

---@param obj userdata
---@return boolean
function TextureAtlasManager.Equals(obj) end

---@return number
function TextureAtlasManager.GetHashCode() end


