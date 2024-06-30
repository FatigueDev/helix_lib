---@meta

---@class BlockTextureAtlasManager: TextureAtlasManager, TextureAtlasManager, IBlockTextureAtlasAPI, ITextureAtlasAPI, ITextureLocationDictionary, Multithreaded
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
BlockTextureAtlasManager = {}

---@param game ClientMain
---@return BlockTextureAtlasManager
function BlockTextureAtlasManager.ctor(game) end

---@param compositeShape Shape The base shape for all json objects.
---@param targetDict IDictionary`2
---@param baseLoc AssetLocation Defines a complete path to an assets, including it's domain
function BlockTextureAtlasManager.CollectAndBakeTexturesFromShape(compositeShape, targetDict, baseLoc) end

---@param block Block Basic class for a placeable block
---@param blockShapes OrderedDictionary`2 Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
---@param basicTexturesCache table
function BlockTextureAtlasManager.ResolveTextureCodes(block, blockShapes, basicTexturesCache) end

---@param block Block Basic class for a placeable block
---@param blockShape Shape The base shape for all json objects.
function BlockTextureAtlasManager.LoadAllTextureCodes(block, blockShape) end

---@param block Block Basic class for a placeable block
---@param textureName string
---@param returnNullWhenMissing? boolean
---@return TextureAtlasPosition # The position of a texture inside an atlas
function BlockTextureAtlasManager.GetPosition(block, textureName, returnNullWhenMissing) end

---@return number
function BlockTextureAtlasManager.get_Count() end

---@return TextureAtlasPosition # The position of a texture inside an atlas
function BlockTextureAtlasManager.get_UnknownTexturePosition() end

---@param textureLoc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return number
function BlockTextureAtlasManager.get_Item(textureLoc) end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockTextureAtlasManager.get_Size() end

---@param value Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockTextureAtlasManager.set_Size(value) end

---@param textureLocation AssetLocation Defines a complete path to an assets, including it's domain
---@return TextureAtlasPosition # The position of a texture inside an atlas
function BlockTextureAtlasManager.get_Item(textureLocation) end

---@return number
function BlockTextureAtlasManager.get_SubPixelPaddingX() end

---@return number
function BlockTextureAtlasManager.get_SubPixelPaddingY() end

---@return TextureAtlasPosition[] # The position of a texture inside an atlas
function BlockTextureAtlasManager.get_Positions() end

---@param itemclass string
function BlockTextureAtlasManager.CreateNewAtlas(itemclass) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return boolean
function BlockTextureAtlasManager.AddTextureLocation(loc) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
function BlockTextureAtlasManager.SetTextureLocation(loc) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return number
function BlockTextureAtlasManager.GetOrAddTextureLocation(loc) end

---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function BlockTextureAtlasManager.ContainsKey(loc) end

function BlockTextureAtlasManager.GenFramebuffer() end

---@param atlasTextureId number
---@param fromTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param targetX number
---@param targetY number
---@param alphaTest? number
function BlockTextureAtlasManager.RenderTextureIntoAtlas(atlasTextureId, fromTexture, sourceX, sourceY, sourceWidth, sourceHeight, targetX, targetY, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param onCreate? CreateTextureDelegate
---@param alphaTest? number
---@return boolean
function BlockTextureAtlasManager.GetOrInsertTexture(path, textureSubId, texPos, onCreate, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param bmp IBitmap
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function BlockTextureAtlasManager.InsertTextureCached(path, bmp, textureSubId, texPos, alphaTest) end

---@param bmp IBitmap
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function BlockTextureAtlasManager.InsertTexture(bmp, textureSubId, texPos, alphaTest) end

---@param atlasNumber number
function BlockTextureAtlasManager.RegenMipMaps(atlasNumber) end

---@param bmp BitmapRef
---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@param textureSubIdOut number
---@return boolean
function BlockTextureAtlasManager.InsertTexture(bmp, loc, textureSubIdOut) end

---@param width number
---@param height number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@return boolean
function BlockTextureAtlasManager.AllocateTextureSpace(width, height, textureSubId, texPos) end

---@param textureSubId number
function BlockTextureAtlasManager.FreeTextureSpace(textureSubId) end

function BlockTextureAtlasManager.PopulateTextureAtlassesFromTextures() end

function BlockTextureAtlasManager.ComposeTextureAtlasses_StageA() end

function BlockTextureAtlasManager.ComposeTextureAtlasses_StageB() end

function BlockTextureAtlasManager.ComposeTextureAtlasses_StageC() end

---@return TextureAtlasManager
function BlockTextureAtlasManager.ReloadTextures() end

---@return TextureAtlasManager
function BlockTextureAtlasManager.PauseRegenMipmaps() end

---@return TextureAtlasManager
function BlockTextureAtlasManager.ResumeRegenMipmaps() end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@return IBitmap
function BlockTextureAtlasManager.LoadCompositeBitmap(path) end

---@param shape Shape The base shape for all json objects.
function BlockTextureAtlasManager.LoadShapeTextureCodes(shape) end

---@param texturesDict FastSmallDictionary`2 A fast implementation of IDictionary using arrays.  Only suitable for small dictionaries, typically 1-20 entries. Note that Add is implemented differently from a standard Dictionary, it does not check that the key is not already present (and does not throw an ArgumentException) Additional methods AddIfNotPresent() and Clone() are provided for convenience.  There are also additional convenient constructors
function BlockTextureAtlasManager.ResolveTextureDict(texturesDict) end

function BlockTextureAtlasManager.Dispose() end

---@param textureSubId number
---@return number
function BlockTextureAtlasManager.GetRandomColor(textureSubId) end

---@param textureSubId number
---@param rndIndex number
---@return number
function BlockTextureAtlasManager.GetRandomColor(textureSubId, rndIndex) end

---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@param rndIndex number
---@return number
function BlockTextureAtlasManager.GetRandomColor(texPos, rndIndex) end

---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@return number
function BlockTextureAtlasManager.GetRandomColors(texPos) end

---@param textureSubId number
---@return number
function BlockTextureAtlasManager.GetAverageColor(textureSubId) end

---@param bytes number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function BlockTextureAtlasManager.InsertTexture(bytes, textureSubId, texPos, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param bytes number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function BlockTextureAtlasManager.InsertTextureCached(path, bytes, textureSubId, texPos, alphaTest) end

---@param ct CompositeTexture A single block texture
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function BlockTextureAtlasManager.InsertTextureCached(ct, textureSubId, texPos, alphaTest) end

---@return userdata
function BlockTextureAtlasManager.GetType() end

---@return string
function BlockTextureAtlasManager.ToString() end

---@param obj userdata
---@return boolean
function BlockTextureAtlasManager.Equals(obj) end

---@return number
function BlockTextureAtlasManager.GetHashCode() end


