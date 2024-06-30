---@meta

---@class IWorldChunk
---@field Empty boolean
---@field MapChunk IMapChunk Holds a reference to the current map data of this chunk column
---@field Data IChunkBlocks Holds all the blockids for each coordinate, access via index: (y * chunksize + z) * chunksize + x
---@field Blocks IChunkBlocks Use Data instead
---@field Lighting IChunkLight Holds all the lighting data for each coordinate, access via index: (y * chunksize + z) * chunksize + x
---@field MaybeBlocks IChunkBlocks Faster (non-blocking) access to blocks at the cost of sometimes returning 0 instead of the real block. Use Data if you need reliable block access. Also should only be used for reading. Currently used for the particle system.
---@field Entities Entity[] An array holding all Entities currently residing in this chunk. This array may be larger than the amount of entities in the chunk. 
---@field EntitiesCount number Actual count of entities in this chunk
---@field BlockEntities table An array holding block Entities currently residing in this chunk. This array may be larger than the amount of block entities in the chunk. 
---@field LightPositions HashSet`1 Returns a list of a in-chunk indexed positions of all light sources in this chunk
---@field Disposed boolean Whether this chunk got unloaded
---@field LiveModData table Can be used to store non-serialized mod data that is only serialized into the standard moddata dictionary on unload. This prevents the need for constant serializing/deserializing. Useful when storing large amounts of data. Is not populated on chunk load, you need to populate it with stored data yourself using GetModData()
IWorldChunk = {}


---@return boolean
function IWorldChunk.get_Empty() end

---@param value boolean
function IWorldChunk.set_Empty(value) end

---@return IMapChunk # Holds 2 dimensional data for one chunk column
function IWorldChunk.get_MapChunk() end

---@return IChunkBlocks
function IWorldChunk.get_Data() end

---@return IChunkBlocks
function IWorldChunk.get_Blocks() end

---@return IChunkLight
function IWorldChunk.get_Lighting() end

---@return IChunkBlocks
function IWorldChunk.get_MaybeBlocks() end

---@return Entity[] # The basic class for all entities in the game
function IWorldChunk.get_Entities() end

---@return number
function IWorldChunk.get_EntitiesCount() end

---@return table
function IWorldChunk.get_BlockEntities() end

---@param value table
function IWorldChunk.set_BlockEntities(value) end

-- Blockdata and Light might be compressed, always call this method if you want to access these
function IWorldChunk.Unpack() end

-- Like Unpack(), except it must be used readonly: the calling code promises not to write any changes to this chunk's blocks or lighting
---@return boolean
function IWorldChunk.Unpack_ReadOnly() end

-- Like Unpack_ReadOnly(), except it actually reads and returns the block ID at index
-- (Returns 0 if the chunk was disposed)
---@param index number
---@param layer number
---@return number
function IWorldChunk.UnpackAndReadBlock(index, layer) end

-- Like Unpack_ReadOnly(), except it actually reads and returns the Light at index
-- (Returns 0 if the chunk was disposed)
---@param index number
---@return number
function IWorldChunk.Unpack_AndReadLight(index) end

---@param index number
---@param lightSat number
---@return number
function IWorldChunk.Unpack_AndReadLight(index, lightSat) end

-- Marks this chunk as modified. If called on server side it will be stored to disk on the next autosave or during shutdown, if called on client not much happens (but it will be preserved from packing for next ~8 seconds)
function IWorldChunk.MarkModified() end

-- Marks this chunk as recently accessed. This will prevent the chunk from getting compressed by the in-memory chunk compression algorithm
function IWorldChunk.MarkFresh() end

---@return HashSet`1
function IWorldChunk.get_LightPositions() end

---@param value HashSet`1
function IWorldChunk.set_LightPositions(value) end

---@return boolean
function IWorldChunk.get_Disposed() end

-- Adds an entity to the chunk.
---@param entity Entity The basic class for all entities in the game
function IWorldChunk.AddEntity(entity) end

-- Removes an entity from the chunk.
---@param entityId number
---@return boolean
function IWorldChunk.RemoveEntity(entityId) end

-- Allows setting of arbitrary, permanantly stored moddata of this chunk. When set on the server before the chunk is sent to the client, the data will also be sent to the client.
-- When set on the client the data is discarded once the chunk gets unloaded
---@param key string
---@param data number
function IWorldChunk.SetModdata(key, data) end

-- Removes the permanently stored data. 
---@param key string
function IWorldChunk.RemoveModdata(key) end

-- Retrieve arbitrary, permantly stored mod data
---@param key string
---@return number
function IWorldChunk.GetModdata(key) end

---@param key string
---@param data T
function IWorldChunk.SetModdata(key, data) end

---@param key string
---@param defaultValue? T
---@return T
function IWorldChunk.GetModdata(key, defaultValue) end

---@return table
function IWorldChunk.get_LiveModData() end

---@param value table
function IWorldChunk.set_LiveModData(value) end

-- Retrieve a block from this chunk ignoring ice/water layer, performs Unpack() and a modulo operation on the position arg to get a local position in the 0..chunksize range (it's your job to pick out the right chunk before calling this method)
---@param world IWorldAccessor Important interface to access the game world.
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function IWorldChunk.GetLocalBlockAtBlockPos(world, position) end

---@param world IWorldAccessor Important interface to access the game world.
---@param posX number
---@param posY number
---@param posZ number
---@param layer number
---@return Block # Basic class for a placeable block
function IWorldChunk.GetLocalBlockAtBlockPos(world, posX, posY, posZ, layer) end

-- As GetLocalBlockAtBlockPos except lock-free, use it inside paired LockForReading(true/false) calls
---@param world IWorldAccessor Important interface to access the game world.
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer? number
---@return Block # Basic class for a placeable block
function IWorldChunk.GetLocalBlockAtBlockPos_LockFree(world, position, layer) end

-- Retrieve a block entity from this chunk
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function IWorldChunk.GetLocalBlockEntityAtBlockPos(pos) end

-- Sets a decor block to the side of an existing block. Use air block (id 0) to remove a decor.
---@param block Block Basic class for a placeable block
---@param index3d number
---@param onFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function IWorldChunk.SetDecor(block, index3d, onFace) end

-- Sets a decor block to a specific sub-position on the side of an existing block. Use air block (id 0) to remove a decor.
---@param block Block Basic class for a placeable block
---@param index3d number
---@param decorIndex number
---@return boolean
function IWorldChunk.SetDecor(block, index3d, decorIndex) end

-- If allowed by a player action, removes all decors at given position and calls OnBrokenAsDecor() on all selected decors and drops the items that are returned from Block.GetDrops()
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param decorIndex? Nullable`1
---@return boolean
function IWorldChunk.BreakDecor(world, pos, side, decorIndex) end

-- Removes a decor block from given position, saves a few cpu cycles by not calculating index3d
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param index3d number
---@param callOnBrokenAsDecor? boolean
function IWorldChunk.BreakAllDecorFast(world, pos, index3d, callOnBrokenAsDecor) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block[] # Basic class for a placeable block
function IWorldChunk.GetDecors(blockAccessor, pos) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param decorIndex number
---@return Block # Basic class for a placeable block
function IWorldChunk.GetDecor(blockAccessor, pos, decorIndex) end

-- Set entire Decors for a chunk - used in Server->Client updates
---@param newDecors table
function IWorldChunk.SetDecors(newDecors) end

-- Adds extra selection boxes in case a decor block is attached at given position
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param orig Cuboidf[] Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function IWorldChunk.AdjustSelectionBoxForDecor(blockAccessor, pos, orig) end

-- Only to be implemented client side
function IWorldChunk.FinishLightDoubleBuffering() end

-- Returns the higher light absorption between solids and fluids block layers
---@param index3d number
---@param blockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blockTypes IList`1
---@return number
function IWorldChunk.GetLightAbsorptionAt(index3d, blockPos, blockTypes) end

-- For bulk chunk GetBlock operations, allows the chunkDataLayers to be pre-locked for reading, instead of entering and releasing one lock per read
-- Best used mainly on the server side unless you know what you are doing.  The client-side Chunk Tesselator can need read-access to a chunk at any time so making heavy use of this would cause rendering delays on the client
-- Make sure always to call ReleaseBulkReadLock() when finished.  Use a try/finally block if necessary, and complete all read operations within 8 seconds
function IWorldChunk.AcquireBlockReadLock() end

-- For bulk chunk GetBlock operations, allows the chunkDataLayers to be pre-locked for reading, instead of entering and releasing one lock per read
-- Make sure always to call ReleaseBulkReadLock() when finished.  Use a try/finally block if necessary, and complete all read operations within 8 seconds
function IWorldChunk.ReleaseBlockReadLock() end


