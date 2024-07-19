---@meta

-- Interface that allows custom model model meshing for items, blocks and entities Texturing crash course: 1. Block, Item and Entity textures are loaded from json files in the form of a CompositeTexture instance 2. After connecting to a game server, the client inserts all of these textures into their type-respective texture atlasses 3. After insertion a "texture sub-id" is left behind in the CompositeTexture.Baked Property 4. You can now find the position of the texture inside the atlas through the Block/Item/Entity-TextureAtlasPositions arrays (teturesubid is the array key)  Shape Tesselation crash course: 1. Block and Item shapes are loaded from json files in the form of a CompositeShape instance 2. A CompositeShape instance hold some block/item specific information as well as an identifier to a Shape instance 4. After connecting to a game server, the client loads all shapes from the shape folder then finds each blocks/items shape by its shape identifier  5. Result is a MeshData instance that holds all vertices, UV coords, colors and etc. for each block 6. That meshdata instance is     a) Held as-is in memory for using during chunk tesselation (you can get a reference to it through getDefaultBlockMesh())    b) "Compiled" to a Model for use during rendering in the gui.        Model Compilation means all it's mesh data is uploaded onto the graphcis through a VAO and a ModelRef instance is left behind which       can be used by the RenderAPI to render it.
---@class ITesselatorAPI
ITesselatorAPI = {}


---@param block Block Basic class for a placeable block
---@param modeldata MeshData&
function ITesselatorAPI.TesselateBlock(block, modeldata) end

---@param item Item Represents an in game Item of Vintage Story
---@param modeldata MeshData&
function ITesselatorAPI.TesselateItem(item, modeldata) end

---@param item Item Represents an in game Item of Vintage Story
---@param forShape CompositeShape
---@param modeldata MeshData&
function ITesselatorAPI.TesselateItem(item, forShape, modeldata) end

---@param item Item Represents an in game Item of Vintage Story
---@param modeldata MeshData&
---@param texSource ITexPositionSource An interface that can supply texture atlas positions 
function ITesselatorAPI.TesselateItem(item, modeldata, texSource) end

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
function ITesselatorAPI.TesselateShape(type, name, compositeShape, modeldata, texSource, generalGlowLevel, climateColorMapIndex, seasonColorMapIndex, quantityElements, selectiveElements) end

---@param textureSourceCollectible CollectibleObject Contains all properties shared by Blocks and Items
---@param shape Shape The base shape for all json objects.
---@param modeldata MeshData&
---@param meshRotationDeg? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param quantityElements? Nullable`1
---@param selectiveElements? string
function ITesselatorAPI.TesselateShape(textureSourceCollectible, shape, modeldata, meshRotationDeg, quantityElements, selectiveElements) end

---@param typeForLogging string
---@param shapeBase Shape The base shape for all json objects.
---@param modeldata MeshData&
---@param texSource ITexPositionSource An interface that can supply texture atlas positions 
---@param meshRotationDeg? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param generalGlowLevel? number
---@param climateColorMapId? number
---@param seasonColorMapId? number
---@param quantityElements? Nullable`1
---@param selectiveElements? string
function ITesselatorAPI.TesselateShape(typeForLogging, shapeBase, modeldata, texSource, meshRotationDeg, generalGlowLevel, climateColorMapId, seasonColorMapId, quantityElements, selectiveElements) end

---@param typeForLogging string
---@param shapeBase Shape The base shape for all json objects.
---@param modeldata MeshData&
---@param texSource ITexPositionSource An interface that can supply texture atlas positions 
---@param rotation Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param quantityElements? Nullable`1
---@param selectiveElements? string
function ITesselatorAPI.TesselateShapeWithJointIds(typeForLogging, shapeBase, modeldata, texSource, rotation, quantityElements, selectiveElements) end

---@param meta TesselationMetaData
---@param shapeBase Shape The base shape for all json objects.
---@param modeldata MeshData&
function ITesselatorAPI.TesselateShape(meta, shapeBase, modeldata) end

-- A helper method that turns a flat texture into its 1-voxel thick voxelized form
---@param texture CompositeTexture A single block texture
---@param atlasSize Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param atlasPos TextureAtlasPosition The position of a texture inside an atlas
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ITesselatorAPI.VoxelizeTexture(texture, atlasSize, atlasPos) end

-- A helper method that turns a flat texture into its 1-voxel thick voxelized form
---@param texturePixels number
---@param width number
---@param height number
---@param atlasSize Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param pos TextureAtlasPosition The position of a texture inside an atlas
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ITesselatorAPI.VoxelizeTexture(texturePixels, width, height, atlasSize, pos) end

-- Returns the texture source from given block. This can be used to obtain the positions of the textures in the block texture atlas.
---@param block Block Basic class for a placeable block
---@param altTextureNumber? number
---@param returnNullWhenMissing? boolean
---@return ITexPositionSource # An interface that can supply texture atlas positions 
function ITesselatorAPI.GetTextureSource(block, altTextureNumber, returnNullWhenMissing) end

---@param block Block Basic class for a placeable block
---@param altTextureNumber? number
---@param returnNullWhenMissing? boolean
---@return ITexPositionSource # An interface that can supply texture atlas positions 
function ITesselatorAPI.GetTexSource(block, altTextureNumber, returnNullWhenMissing) end

-- Returns the texture source from given item. This can be used to obtain the positions of the textures in the item texture atlas.
---@param item Item Represents an in game Item of Vintage Story
---@param returnNullWhenMissing? boolean
---@return ITexPositionSource # An interface that can supply texture atlas positions 
function ITesselatorAPI.GetTextureSource(item, returnNullWhenMissing) end

-- Returns the texture source from given entity. This can be used to obtain the positions of the textures in the entity texture atlas.
---@param entity Entity The basic class for all entities in the game
---@param extraTextures? table
---@param altTextureNumber? number
---@param returnNullWhenMissing? boolean
---@return ITexPositionSource # An interface that can supply texture atlas positions 
function ITesselatorAPI.GetTextureSource(entity, extraTextures, altTextureNumber, returnNullWhenMissing) end


