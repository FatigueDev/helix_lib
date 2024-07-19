---@meta

---@class ShapeTesselator:  ITesselatorAPI
---@field shapes OrderedDictionary`2
---@field objs OrderedDictionary`2
---@field gltfs OrderedDictionary`2
---@field unknownItemModelData MeshData
ShapeTesselator = {}

---@param game ClientMain
---@param shapes OrderedDictionary`2 Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
---@param objs OrderedDictionary`2 Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
---@param gltfs OrderedDictionary`2 Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
---@return ShapeTesselator
function ShapeTesselator.ctor(game, shapes, objs, gltfs) end

---@param type string
---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@param compositeShape CompositeShape
---@param modeldata MeshData&
---@param texSource ITexPositionSource An interface that can supply texture atlas positions 
---@param generalGlowLevel? number
---@param climateColorMapIndex? number
---@param seasonColorMapIndex? number
---@param quantityElements? Nullable`1
---@param selectiveElements? string
function ShapeTesselator.TesselateShape(type, name, compositeShape, modeldata, texSource, generalGlowLevel, climateColorMapIndex, seasonColorMapIndex, quantityElements, selectiveElements) end

---@param collObj CollectibleObject Contains all properties shared by Blocks and Items
---@param shape Shape The base shape for all json objects.
---@param modeldata MeshData&
---@param rotation? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param quantityElements? Nullable`1
---@param selectiveElements? string
function ShapeTesselator.TesselateShape(collObj, shape, modeldata, rotation, quantityElements, selectiveElements) end

---@param typeForLogging string
---@param shapeBase Shape The base shape for all json objects.
---@param modeldata MeshData&
---@param texSource ITexPositionSource An interface that can supply texture atlas positions 
---@param wholeMeshRotation? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param generalGlowLevel? number
---@param climateColorMapId? number
---@param seasonColorMapId? number
---@param quantityElements? Nullable`1
---@param selectiveElements? string
function ShapeTesselator.TesselateShape(typeForLogging, shapeBase, modeldata, texSource, wholeMeshRotation, generalGlowLevel, climateColorMapId, seasonColorMapId, quantityElements, selectiveElements) end

---@param typeForLogging string
---@param shapeBase Shape The base shape for all json objects.
---@param modeldata MeshData&
---@param texSource ITexPositionSource An interface that can supply texture atlas positions 
---@param rotation Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param quantityElements Nullable`1
---@param selectiveElements string
function ShapeTesselator.TesselateShapeWithJointIds(typeForLogging, shapeBase, modeldata, texSource, rotation, quantityElements, selectiveElements) end

---@param meta TesselationMetaData
---@param shapeBase Shape The base shape for all json objects.
---@param modeldata MeshData&
function ShapeTesselator.TesselateShape(meta, shapeBase, modeldata) end

---@param shapeBase Shape The base shape for all json objects.
---@param modeldata MeshData&
---@param wholeMeshRotation Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param wholeMeshOffset Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param wholeMeshScale number
---@param meta TesselationMetaData
function ShapeTesselator.TesselateShape(shapeBase, modeldata, wholeMeshRotation, wholeMeshOffset, wholeMeshScale, meta) end

---@param block Block Basic class for a placeable block
---@param meshdata MeshData&
function ShapeTesselator.TesselateBlock(block, meshdata) end

---@param block Block Basic class for a placeable block
---@param modeldata MeshData&
---@param textureSource TextureSource
---@param quantityElements? Nullable`1
---@param selectiveElements? string
function ShapeTesselator.TesselateBlock(block, modeldata, textureSource, quantityElements, selectiveElements) end

---@param block Block Basic class for a placeable block
---@param compositeShape CompositeShape
---@param modeldata MeshData&
---@param texSource TextureSource
---@param quantityElements? Nullable`1
---@param selectiveElements? string
function ShapeTesselator.TesselateBlock(block, compositeShape, modeldata, texSource, quantityElements, selectiveElements) end

---@param item Item Represents an in game Item of Vintage Story
---@param modeldata MeshData&
---@param texSource ITexPositionSource An interface that can supply texture atlas positions 
function ShapeTesselator.TesselateItem(item, modeldata, texSource) end

---@param item Item Represents an in game Item of Vintage Story
---@param modeldata MeshData&
function ShapeTesselator.TesselateItem(item, modeldata) end

---@param item Item Represents an in game Item of Vintage Story
---@param forShape CompositeShape
---@param modeldata MeshData&
function ShapeTesselator.TesselateItem(item, forShape, modeldata) end

---@param texturePixels number
---@param width number
---@param height number
---@param pos TextureAtlasPosition The position of a texture inside an atlas
---@param rotation? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ShapeTesselator.VoxelizeTextureStatic(texturePixels, width, height, pos, rotation) end

---@param texture CompositeTexture A single block texture
---@param atlasSize Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param atlasPos TextureAtlasPosition The position of a texture inside an atlas
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ShapeTesselator.VoxelizeTexture(texture, atlasSize, atlasPos) end

---@param texturePixels number
---@param width number
---@param height number
---@param atlasSize Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param atlasPos TextureAtlasPosition The position of a texture inside an atlas
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ShapeTesselator.VoxelizeTexture(texturePixels, width, height, atlasSize, atlasPos) end

---@param block Block Basic class for a placeable block
---@return number
function ShapeTesselator.AltTexturesCount(block) end

---@param block Block Basic class for a placeable block
---@return number
function ShapeTesselator.TileTexturesCount(block) end

---@param block Block Basic class for a placeable block
---@param altTextureNumber? number
---@param returnNullWhenMissing? boolean
---@return ITexPositionSource # An interface that can supply texture atlas positions 
function ShapeTesselator.GetTexSource(block, altTextureNumber, returnNullWhenMissing) end

---@param block Block Basic class for a placeable block
---@param altTextureNumber? number
---@param returnNullWhenMissing? boolean
---@return ITexPositionSource # An interface that can supply texture atlas positions 
function ShapeTesselator.GetTextureSource(block, altTextureNumber, returnNullWhenMissing) end

---@param item Item Represents an in game Item of Vintage Story
---@param returnNullWhenMissing? boolean
---@return ITexPositionSource # An interface that can supply texture atlas positions 
function ShapeTesselator.GetTextureSource(item, returnNullWhenMissing) end

---@param entity Entity The basic class for all entities in the game
---@param extraTextures? table
---@param altTextureNumber? number
---@param returnNullWhenMissing? boolean
---@return ITexPositionSource # An interface that can supply texture atlas positions 
function ShapeTesselator.GetTextureSource(entity, extraTextures, altTextureNumber, returnNullWhenMissing) end

---@param modeldata MeshData&
---@param compositeShape CompositeShape
function ShapeTesselator.ApplyCompositeShapeModifiers(modeldata, compositeShape) end

---@return userdata
function ShapeTesselator.GetType() end

---@return string
function ShapeTesselator.ToString() end

---@param obj userdata
---@return boolean
function ShapeTesselator.Equals(obj) end

---@return number
function ShapeTesselator.GetHashCode() end


