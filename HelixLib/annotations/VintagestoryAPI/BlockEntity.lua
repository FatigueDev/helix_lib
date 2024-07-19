---@meta

-- Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
---@class BlockEntity
---@field Block Block The block type at the position of the block entity. This poperty is updated by the engine if ExchangeBlock is called
---@field Api ICoreAPI The core API added to the block.  Accessable after initialization.
---@field Pos BlockPos Position of the block for this block entity
---@field Behaviors table List of block entity behaviors associated with this block entity
BlockEntity = {}

---@return BlockEntity
function BlockEntity.ctor() end

---@return Block # Basic class for a placeable block
function BlockEntity.get_Block() end

---@param value Block Basic class for a placeable block
function BlockEntity.set_Block(value) end

---@return T
function BlockEntity.GetBehavior() end

-- This method is called right after the block entity was spawned or right after it was loaded from a newly loaded chunk. You do have access to the world and its blocks at this point.
-- However if this block entity already existed then FromTreeAttributes is called first!
-- You should still call the base method to sets the this.api field
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function BlockEntity.Initialize(api) end

---@param block Block Basic class for a placeable block
---@param worldForResolve IWorldAccessor Important interface to access the game world.
function BlockEntity.CreateBehaviors(block, worldForResolve) end

-- Registers a game tick listener that does the disposing for you when the Block is removed
---@param onGameTick function
---@param millisecondInterval number
---@param initialDelayOffsetMs? number
---@return number
function BlockEntity.RegisterGameTickListener(onGameTick, millisecondInterval, initialDelayOffsetMs) end

-- Removes a registered game tick listener from the game.
---@param listenerId number
function BlockEntity.UnregisterGameTickListener(listenerId) end

-- Registers a delayed callback that does the disposing for you when the Block is removed
---@param OnDelayedCallbackTick function
---@param millisecondInterval number
---@return number
function BlockEntity.RegisterDelayedCallback(OnDelayedCallbackTick, millisecondInterval) end

-- Unregisters a callback.  This is usually done automatically.
---@param listenerId number
function BlockEntity.UnregisterDelayedCallback(listenerId) end

---@param e Exception
function BlockEntity.TickingExceptionHandler(e) end

-- Called when the block at this position was removed in some way. Removes the game tick listeners, so still call the base method
function BlockEntity.OnBlockRemoved() end

-- Called when blockAccessor.ExchangeBlock() is used to exchange this block. Make sure to call the base method when overriding.
---@param block Block Basic class for a placeable block
function BlockEntity.OnExchanged(block) end

-- Called when the block was broken in survival mode or through explosions and similar. Generally in situations where you probably want 
-- to drop the block entity contents, if it has any
---@param byPlayer? IPlayer Represents a player
function BlockEntity.OnBlockBroken(byPlayer) end

-- Called by the undo/redo system, after calling FromTreeAttributes
function BlockEntity.HistoryStateRestore() end

-- Called when the chunk the block entity resides in was unloaded. Removes the game tick listeners, so still call the base method
function BlockEntity.OnBlockUnloaded() end

-- Called when the block entity just got placed, not called when it was previously placed and the chunk is loaded. Always called after Initialize()
---@param byItemStack? ItemStack
function BlockEntity.OnBlockPlaced(byItemStack) end

-- Called when saving the world or when sending the block entity data to the client. When overriding, make sure to still call the base method.
---@param tree ITreeAttribute Represents a List of nestable Attributes
function BlockEntity.ToTreeAttributes(tree) end

-- Called when loading the world or when receiving block entity from the server. When overriding, make sure to still call the base method.
-- FromTreeAttributes is always called before Initialize() is called, so the this.api field is not yet set!
---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param worldAccessForResolve IWorldAccessor Important interface to access the game world.
function BlockEntity.FromTreeAttributes(tree, worldAccessForResolve) end

-- Called whenever a blockentity packet at the blocks position has been received from the client
---@param fromPlayer IPlayer Represents a player
---@param packetid number
---@param data number
function BlockEntity.OnReceivedClientPacket(fromPlayer, packetid, data) end

-- Called whenever a blockentity packet at the blocks position has been received from the server
---@param packetid number
---@param data number
function BlockEntity.OnReceivedServerPacket(packetid, data) end

-- When called on Server: Will resync the block entity with all its TreeAttribute to the client, but will not resend or redraw the block unless specified.
-- When called on Client: Triggers a block changed event on the client, but will not redraw the block unless specified.
---@param redrawOnClient? boolean
---@param skipPlayer? IPlayer Represents a player
function BlockEntity.MarkDirty(redrawOnClient, skipPlayer) end

-- Called by the block info HUD for displaying additional information
---@param forPlayer IPlayer Represents a player
---@param dsc string
function BlockEntity.GetBlockInfo(forPlayer, dsc) end

-- Called by the worldedit schematic exporter so that it can also export the mappings of items/blocks stored inside blockentities
---@param blockIdMapping table
---@param itemIdMapping table
function BlockEntity.OnStoreCollectibleMappings(blockIdMapping, itemIdMapping) end

-- Called by the blockschematic loader so that you may fix any blockid/itemid mappings against the mapping of the savegame, if you store any collectibles in this blockentity.
-- Note: Some vanilla blocks resolve randomized contents in this method.
-- Hint: Use itemstack.FixMapping() to do the job for you.
---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param schematicSeed number
function BlockEntity.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping, schematicSeed) end

-- Called by the blockschematic loader so that you may fix any blockid/itemid mappings against the mapping of the savegame, if you store any collectibles in this blockentity.
-- Note: Some vanilla blocks resolve randomized contents in this method.
-- Hint: Use itemstack.FixMapping() to do the job for you.
---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param schematicSeed number
---@param resolveImports boolean
function BlockEntity.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping, schematicSeed, resolveImports) end

-- Let's you add your own meshes to a chunk. Don't reuse the meshdata instance anywhere in your code. Return true to skip the default mesh.
-- WARNING!
-- The Tesselator runs in a seperate thread, so you have to make sure the fields and methods you access inside this method are thread safe.
---@param mesher ITerrainMeshPool
---@param tessThreadTesselator ITesselatorAPI Interface that allows custom model model meshing for items, blocks and entities Texturing crash course: 1. Block, Item and Entity textures are loaded from json files in the form of a CompositeTexture instance 2. After connecting to a game server, the client inserts all of these textures into their type-respective texture atlasses 3. After insertion a "texture sub-id" is left behind in the CompositeTexture.Baked Property 4. You can now find the position of the texture inside the atlas through the Block/Item/Entity-TextureAtlasPositions arrays (teturesubid is the array key)  Shape Tesselation crash course: 1. Block and Item shapes are loaded from json files in the form of a CompositeShape instance 2. A CompositeShape instance hold some block/item specific information as well as an identifier to a Shape instance 4. After connecting to a game server, the client loads all shapes from the shape folder then finds each blocks/items shape by its shape identifier  5. Result is a MeshData instance that holds all vertices, UV coords, colors and etc. for each block 6. That meshdata instance is     a) Held as-is in memory for using during chunk tesselation (you can get a reference to it through getDefaultBlockMesh())    b) "Compiled" to a Model for use during rendering in the gui.        Model Compilation means all it's mesh data is uploaded onto the graphcis through a VAO and a ModelRef instance is left behind which       can be used by the RenderAPI to render it.
---@return boolean
function BlockEntity.OnTesselation(mesher, tessThreadTesselator) end

-- Called when this block entity was placed by a schematic, either through world edit or by worldgen
---@param api ICoreServerAPI The core api implemented by the server. The main interface for accessing the server. Contains all sub components and some miscellaneous methods.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param replaceBlocks table
---@param centerrockblockid number
---@param layerBlock Block Basic class for a placeable block
---@param resolveImports boolean
function BlockEntity.OnPlacementBySchematic(api, blockAccessor, pos, replaceBlocks, centerrockblockid, layerBlock, resolveImports) end

---@return userdata
function BlockEntity.GetType() end

---@return string
function BlockEntity.ToString() end

---@param obj userdata
---@return boolean
function BlockEntity.Equals(obj) end

---@return number
function BlockEntity.GetHashCode() end


