---@meta

---@class ItemTextureAtlasManager: TextureAtlasManager, TextureAtlasManager, IItemTextureAtlasAPI, ITextureAtlasAPI, ITextureLocationDictionary, Multithreaded
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
ItemTextureAtlasManager = {}

---@param game ClientMain
---@return ItemTextureAtlasManager
function ItemTextureAtlasManager.ctor(game) end

---@param item Item Represents an in game Item of Vintage Story
---@param textureName? string
---@param returnNullWhenMissing? boolean
---@return TextureAtlasPosition # The position of a texture inside an atlas
function ItemTextureAtlasManager.GetPosition(item, textureName, returnNullWhenMissing) end

---@param item Item Represents an in game Item of Vintage Story
---@param itemShapes table
function ItemTextureAtlasManager.ResolveTextureCodes(item, itemShapes) end

---@return number
function ItemTextureAtlasManager.get_Count() end

---@return TextureAtlasPosition # The position of a texture inside an atlas
function ItemTextureAtlasManager.get_UnknownTexturePosition() end

---@param textureLoc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return number
function ItemTextureAtlasManager.get_Item(textureLoc) end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function ItemTextureAtlasManager.get_Size() end

---@param value Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function ItemTextureAtlasManager.set_Size(value) end

---@param textureLocation AssetLocation Defines a complete path to an assets, including it's domain
---@return TextureAtlasPosition # The position of a texture inside an atlas
function ItemTextureAtlasManager.get_Item(textureLocation) end

---@return number
function ItemTextureAtlasManager.get_SubPixelPaddingX() end

---@return number
function ItemTextureAtlasManager.get_SubPixelPaddingY() end

---@return TextureAtlasPosition[] # The position of a texture inside an atlas
function ItemTextureAtlasManager.get_Positions() end

---@param itemclass string
function ItemTextureAtlasManager.CreateNewAtlas(itemclass) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return boolean
function ItemTextureAtlasManager.AddTextureLocation(loc) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
function ItemTextureAtlasManager.SetTextureLocation(loc) end

---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return number
function ItemTextureAtlasManager.GetOrAddTextureLocation(loc) end

---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function ItemTextureAtlasManager.ContainsKey(loc) end

function ItemTextureAtlasManager.GenFramebuffer() end

---@param atlasTextureId number
---@param fromTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param targetX number
---@param targetY number
---@param alphaTest? number
function ItemTextureAtlasManager.RenderTextureIntoAtlas(atlasTextureId, fromTexture, sourceX, sourceY, sourceWidth, sourceHeight, targetX, targetY, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param onCreate? CreateTextureDelegate
---@param alphaTest? number
---@return boolean
function ItemTextureAtlasManager.GetOrInsertTexture(path, textureSubId, texPos, onCreate, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param bmp IBitmap
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function ItemTextureAtlasManager.InsertTextureCached(path, bmp, textureSubId, texPos, alphaTest) end

---@param bmp IBitmap
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function ItemTextureAtlasManager.InsertTexture(bmp, textureSubId, texPos, alphaTest) end

---@param atlasNumber number
function ItemTextureAtlasManager.RegenMipMaps(atlasNumber) end

---@param bmp BitmapRef
---@param loc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@param textureSubIdOut number
---@return boolean
function ItemTextureAtlasManager.InsertTexture(bmp, loc, textureSubIdOut) end

---@param width number
---@param height number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@return boolean
function ItemTextureAtlasManager.AllocateTextureSpace(width, height, textureSubId, texPos) end

---@param textureSubId number
function ItemTextureAtlasManager.FreeTextureSpace(textureSubId) end

function ItemTextureAtlasManager.PopulateTextureAtlassesFromTextures() end

function ItemTextureAtlasManager.ComposeTextureAtlasses_StageA() end

function ItemTextureAtlasManager.ComposeTextureAtlasses_StageB() end

function ItemTextureAtlasManager.ComposeTextureAtlasses_StageC() end

---@return TextureAtlasManager
function ItemTextureAtlasManager.ReloadTextures() end

---@return TextureAtlasManager
function ItemTextureAtlasManager.PauseRegenMipmaps() end

---@return TextureAtlasManager
function ItemTextureAtlasManager.ResumeRegenMipmaps() end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@return IBitmap
function ItemTextureAtlasManager.LoadCompositeBitmap(path) end

---@param shape Shape The base shape for all json objects.
function ItemTextureAtlasManager.LoadShapeTextureCodes(shape) end

---@param texturesDict FastSmallDictionary`2 A fast implementation of IDictionary using arrays.  Only suitable for small dictionaries, typically 1-20 entries. Note that Add is implemented differently from a standard Dictionary, it does not check that the key is not already present (and does not throw an ArgumentException) Additional methods AddIfNotPresent() and Clone() are provided for convenience.  There are also additional convenient constructors
function ItemTextureAtlasManager.ResolveTextureDict(texturesDict) end

function ItemTextureAtlasManager.Dispose() end

---@param textureSubId number
---@return number
function ItemTextureAtlasManager.GetRandomColor(textureSubId) end

---@param textureSubId number
---@param rndIndex number
---@return number
function ItemTextureAtlasManager.GetRandomColor(textureSubId, rndIndex) end

---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@param rndIndex number
---@return number
function ItemTextureAtlasManager.GetRandomColor(texPos, rndIndex) end

---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@return number
function ItemTextureAtlasManager.GetRandomColors(texPos) end

---@param textureSubId number
---@return number
function ItemTextureAtlasManager.GetAverageColor(textureSubId) end

---@param bytes number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function ItemTextureAtlasManager.InsertTexture(bytes, textureSubId, texPos, alphaTest) end

---@param path AssetLocation Defines a complete path to an assets, including it's domain
---@param bytes number
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function ItemTextureAtlasManager.InsertTextureCached(path, bytes, textureSubId, texPos, alphaTest) end

---@param ct CompositeTexture A single block texture
---@param textureSubId number
---@param texPos TextureAtlasPosition&
---@param alphaTest? number
---@return boolean
function ItemTextureAtlasManager.InsertTextureCached(ct, textureSubId, texPos, alphaTest) end

---@param compositeShape Shape The base shape for all json objects.
---@param targetDict IDictionary`2
---@param baseLoc AssetLocation Defines a complete path to an assets, including it's domain
function ItemTextureAtlasManager.CollectAndBakeTexturesFromShape(compositeShape, targetDict, baseLoc) end

---@return userdata
function ItemTextureAtlasManager.GetType() end

---@return string
function ItemTextureAtlasManager.ToString() end

---@param obj userdata
---@return boolean
function ItemTextureAtlasManager.Equals(obj) end

---@return number
function ItemTextureAtlasManager.GetHashCode() end


