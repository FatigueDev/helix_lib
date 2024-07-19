---@meta

-- Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
---@class BlockEntityBehavior
---@field Pos BlockPos Alias of Blockentity.Pos
---@field Block Block Alias of BlockEntity.Block
---@field Blockentity BlockEntity The block for this behavior instance.
---@field properties JsonObject The properties of this block behavior.
---@field Api ICoreAPI
BlockEntityBehavior = {}

---@param blockentity BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
---@return BlockEntityBehavior
function BlockEntityBehavior.ctor(blockentity) end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockEntityBehavior.get_Pos() end

---@return Block # Basic class for a placeable block
function BlockEntityBehavior.get_Block() end

-- Called right after the block behavior was created
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param properties JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function BlockEntityBehavior.Initialize(api, properties) end

function BlockEntityBehavior.OnBlockRemoved() end

function BlockEntityBehavior.OnBlockUnloaded() end

---@param byPlayer? IPlayer Represents a player
function BlockEntityBehavior.OnBlockBroken(byPlayer) end

---@param byItemStack? ItemStack
function BlockEntityBehavior.OnBlockPlaced(byItemStack) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
function BlockEntityBehavior.ToTreeAttributes(tree) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param worldAccessForResolve IWorldAccessor Important interface to access the game world.
function BlockEntityBehavior.FromTreeAttributes(tree, worldAccessForResolve) end

---@param fromPlayer IPlayer Represents a player
---@param packetid number
---@param data number
function BlockEntityBehavior.OnReceivedClientPacket(fromPlayer, packetid, data) end

---@param packetid number
---@param data number
function BlockEntityBehavior.OnReceivedServerPacket(packetid, data) end

---@param forPlayer IPlayer Represents a player
---@param dsc string
function BlockEntityBehavior.GetBlockInfo(forPlayer, dsc) end

---@param blockIdMapping table
---@param itemIdMapping table
function BlockEntityBehavior.OnStoreCollectibleMappings(blockIdMapping, itemIdMapping) end

---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param schematicSeed number
function BlockEntityBehavior.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping, schematicSeed) end

---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param schematicSeed number
---@param resolveImports boolean
function BlockEntityBehavior.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping, schematicSeed, resolveImports) end

---@param mesher ITerrainMeshPool
---@param tessThreadTesselator ITesselatorAPI Interface that allows custom model model meshing for items, blocks and entities Texturing crash course: 1. Block, Item and Entity textures are loaded from json files in the form of a CompositeTexture instance 2. After connecting to a game server, the client inserts all of these textures into their type-respective texture atlasses 3. After insertion a "texture sub-id" is left behind in the CompositeTexture.Baked Property 4. You can now find the position of the texture inside the atlas through the Block/Item/Entity-TextureAtlasPositions arrays (teturesubid is the array key)  Shape Tesselation crash course: 1. Block and Item shapes are loaded from json files in the form of a CompositeShape instance 2. A CompositeShape instance hold some block/item specific information as well as an identifier to a Shape instance 4. After connecting to a game server, the client loads all shapes from the shape folder then finds each blocks/items shape by its shape identifier  5. Result is a MeshData instance that holds all vertices, UV coords, colors and etc. for each block 6. That meshdata instance is     a) Held as-is in memory for using during chunk tesselation (you can get a reference to it through getDefaultBlockMesh())    b) "Compiled" to a Model for use during rendering in the gui.        Model Compilation means all it's mesh data is uploaded onto the graphcis through a VAO and a ModelRef instance is left behind which       can be used by the RenderAPI to render it.
---@return boolean
function BlockEntityBehavior.OnTesselation(mesher, tessThreadTesselator) end

---@param api ICoreServerAPI The core api implemented by the server. The main interface for accessing the server. Contains all sub components and some miscellaneous methods.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param replaceBlocks table
---@param centerrockblockid number
---@param layerBlock Block Basic class for a placeable block
---@param resolveImports boolean
function BlockEntityBehavior.OnPlacementBySchematic(api, blockAccessor, pos, replaceBlocks, centerrockblockid, layerBlock, resolveImports) end

---@return userdata
function BlockEntityBehavior.GetType() end

---@return string
function BlockEntityBehavior.ToString() end

---@param obj userdata
---@return boolean
function BlockEntityBehavior.Equals(obj) end

---@return number
function BlockEntityBehavior.GetHashCode() end


