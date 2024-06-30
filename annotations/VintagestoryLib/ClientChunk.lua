---@meta

---@class ClientChunk: WorldChunk, WorldChunk, IClientChunk, IWorldChunk
---@field ModData table
---@field LightPositions HashSet`1
---@field MapChunk IMapChunk
---@field LoadedFromServer boolean
---@field blocksCompressed number
---@field lightCompressed number
---@field lightSatCompressed number
---@field fluidsCompressed number
---@field EntitiesCount number
---@field Blocks IChunkBlocks
---@field Data IChunkBlocks
---@field Lighting IChunkLight
---@field MaybeBlocks IChunkBlocks
---@field Empty boolean
---@field Disposed boolean
---@field LiveModData table
---@field clientmapchunk ClientMapChunk
---@field traversability number
---@field traversabilityFresh boolean
---@field CullVisible Bools
---@field ReadWriteStopWatch Stopwatch
---@field traversabilityMapping number
---@field bufIndex number
---@field WasModified boolean
---@field lastReadOrWrite number
---@field blocksCompressedTmp number
---@field lightCompressedTmp number
---@field lightSatCompressedTmp number
---@field fluidsCompressedTmp number
---@field Entities Entity[]
---@field BlockEntities table
---@field Decors table
ClientChunk = {}


---@param from BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param to BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function ClientChunk.IsTraversable(from, to) end

---@param from number
---@param to number
function ClientChunk.SetTraversable(from, to) end

function ClientChunk.ClearTraversable() end

---@return table
function ClientChunk.get_ModData() end

---@param value table
function ClientChunk.set_ModData(value) end

---@return HashSet`1
function ClientChunk.get_LightPositions() end

---@param value HashSet`1
function ClientChunk.set_LightPositions(value) end

---@return IMapChunk # Holds 2 dimensional data for one chunk column
function ClientChunk.get_MapChunk() end

---@return boolean
function ClientChunk.get_LoadedFromServer() end

---@param datapool ClientChunkDataPool
---@return ClientChunk
function ClientChunk.CreateNew(datapool) end

---@param datapool ChunkDataPool
---@param blocksCompressed number
---@param lightCompressed number
---@param lightSatCompressed number
---@param fluidsCompressed number
---@param moddata number
---@param compver number
---@return ClientChunk
function ClientChunk.CreateNewCompressed(datapool, blocksCompressed, lightCompressed, lightSatCompressed, fluidsCompressed, moddata, compver) end

---@return boolean
function ClientChunk.ChunkHasData() end

---@param blocks number
---@return boolean
function ClientChunk.TemporaryUnpack(blocks) end

function ClientChunk.FinishLightDoubleBuffering() end

---@return number
function ClientChunk.get_blocksCompressed() end

---@param value number
function ClientChunk.set_blocksCompressed(value) end

---@return number
function ClientChunk.get_lightCompressed() end

---@param value number
function ClientChunk.set_lightCompressed(value) end

---@return number
function ClientChunk.get_lightSatCompressed() end

---@param value number
function ClientChunk.set_lightSatCompressed(value) end

---@return number
function ClientChunk.get_fluidsCompressed() end

---@param value number
function ClientChunk.set_fluidsCompressed(value) end

---@return number
function ClientChunk.get_EntitiesCount() end

---@param value number
function ClientChunk.set_EntitiesCount(value) end

---@return IChunkBlocks
function ClientChunk.get_Blocks() end

---@return IChunkBlocks
function ClientChunk.get_Data() end

---@return IChunkLight
function ClientChunk.get_Lighting() end

---@return IChunkBlocks
function ClientChunk.get_MaybeBlocks() end

---@param value IChunkBlocks
function ClientChunk.set_MaybeBlocks(value) end

---@return boolean
function ClientChunk.get_Empty() end

---@param value boolean
function ClientChunk.set_Empty(value) end

function ClientChunk.MarkModified() end

---@return boolean
function ClientChunk.IsPacked() end

---@param chunkTTL? number
function ClientChunk.TryPackAndCommit(chunkTTL) end

function ClientChunk.Pack() end

---@param chunkTTL? number
---@return boolean
function ClientChunk.TryCommitPackAndFree(chunkTTL) end

function ClientChunk.Unpack() end

---@return boolean
function ClientChunk.Unpack_ReadOnly() end

---@param index number
---@param layer number
---@return number
function ClientChunk.UnpackAndReadBlock(index, layer) end

---@param index number
---@return number
function ClientChunk.Unpack_AndReadLight(index) end

---@param index number
---@param lightSat number
---@return number
function ClientChunk.Unpack_AndReadLight(index, lightSat) end

function ClientChunk.Unpack_MaybeNullData() end

function ClientChunk.AcquireBlockReadLock() end

function ClientChunk.ReleaseBlockReadLock() end

function ClientChunk.UpdateEmptyFlag() end

function ClientChunk.MarkFresh() end

---@return boolean
function ClientChunk.get_Disposed() end

---@param value boolean
function ClientChunk.set_Disposed(value) end

---@return table
function ClientChunk.get_LiveModData() end

---@param value table
function ClientChunk.set_LiveModData(value) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function ClientChunk.RemoveBlockEntity(pos) end

---@param entity Entity The basic class for all entities in the game
function ClientChunk.AddEntity(entity) end

---@param entityId number
---@return boolean
function ClientChunk.RemoveEntity(entityId) end

---@param key string
---@param data number
function ClientChunk.SetModdata(key, data) end

---@param key string
function ClientChunk.RemoveModdata(key) end

---@param key string
---@return number
function ClientChunk.GetModdata(key) end

---@param key string
---@param data T
function ClientChunk.SetModdata(key, data) end

---@param key string
---@param defaultValue? T
---@return T
function ClientChunk.GetModdata(key, defaultValue) end

function ClientChunk.Dispose() end

---@param world IWorldAccessor Important interface to access the game world.
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function ClientChunk.GetLocalBlockAtBlockPos(world, position) end

---@param world IWorldAccessor Important interface to access the game world.
---@param posX number
---@param posY number
---@param posZ number
---@param layer? number
---@return Block # Basic class for a placeable block
function ClientChunk.GetLocalBlockAtBlockPos(world, posX, posY, posZ, layer) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer? number
---@return Block # Basic class for a placeable block
function ClientChunk.GetLocalBlockAtBlockPos_LockFree(world, pos, layer) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function ClientChunk.GetLocalBlockEntityAtBlockPos(position) end

---@param index3d number
---@param blockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blockTypes IList`1
---@return number
function ClientChunk.GetLightAbsorptionAt(index3d, blockPos, blockTypes) end

---@param block Block Basic class for a placeable block
---@param index3d number
---@param onFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function ClientChunk.SetDecor(block, index3d, onFace) end

---@param block Block Basic class for a placeable block
---@param index3d number
---@param decorIndex number
---@return boolean
function ClientChunk.SetDecor(block, index3d, decorIndex) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block[] # Basic class for a placeable block
function ClientChunk.GetDecors(blockAccessor, position) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param faceAndSubposition number
---@return Block # Basic class for a placeable block
function ClientChunk.GetDecor(blockAccessor, position, faceAndSubposition) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition? Nullable`1
---@return boolean
function ClientChunk.BreakDecor(world, pos, side, faceAndSubposition) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition number
---@return boolean
function ClientChunk.BreakDecorPart(world, pos, side, faceAndSubposition) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition number
---@return boolean
function ClientChunk.RemoveDecorPart(world, pos, side, faceAndSubposition) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param index3d number
---@param callOnBrokenAsDecor? boolean
function ClientChunk.BreakAllDecorFast(world, pos, index3d, callOnBrokenAsDecor) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param orig Cuboidf[] Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function ClientChunk.AdjustSelectionBoxForDecor(blockAccessor, position, orig) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return table
function ClientChunk.GetDecorSelectionBoxes(blockAccessor, position) end

---@param newDecors table
function ClientChunk.SetDecors(newDecors) end

---@return userdata
function ClientChunk.GetType() end

---@return string
function ClientChunk.ToString() end

---@param obj userdata
---@return boolean
function ClientChunk.Equals(obj) end

---@return number
function ClientChunk.GetHashCode() end


