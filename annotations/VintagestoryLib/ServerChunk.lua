---@meta

---@class ServerChunk: WorldChunk, WorldChunk, IServerChunk, IWorldChunk
---@field EntitiesCount number
---@field MapChunk IMapChunk
---@field NotAtEdge boolean
---@field ModData table
---@field LightPositions HashSet`1
---@field fluidsCompressed number
---@field Blocks IChunkBlocks
---@field Data IChunkBlocks
---@field Lighting IChunkLight
---@field MaybeBlocks IChunkBlocks
---@field Empty boolean
---@field Disposed boolean
---@field LiveModData table
---@field BlockEntitiesCount number
---@field ServerSideModdata table
---@field GameVersionCreated string
---@field EmptyBeforeSave boolean
---@field DecorsSerialized number
---@field savedCompressionVersion number
---@field BlocksPlaced number
---@field BlocksRemoved number
---@field serverMapChunk ServerMapChunk
---@field DirtyForSaving boolean
---@field ReadWriteStopWatch Stopwatch
---@field WasModified boolean
---@field lastReadOrWrite number
---@field blocksCompressedTmp number
---@field lightCompressedTmp number
---@field lightSatCompressedTmp number
---@field fluidsCompressedTmp number
---@field Entities Entity[]
---@field BlockEntities table
---@field Decors table
ServerChunk = {}


---@return number
function ServerChunk.get_EntitiesCount() end

---@param value number
function ServerChunk.set_EntitiesCount(value) end

---@return IMapChunk # Holds 2 dimensional data for one chunk column
function ServerChunk.get_MapChunk() end

---@return boolean
function ServerChunk.get_NotAtEdge() end

---@return table
function ServerChunk.get_ModData() end

---@param value table
function ServerChunk.set_ModData(value) end

---@return HashSet`1
function ServerChunk.get_LightPositions() end

---@param value HashSet`1
function ServerChunk.set_LightPositions(value) end

---@param datapool ChunkDataPool
---@return ServerChunk
function ServerChunk.CreateNew(datapool) end

---@param server IServerWorldAccessor The world accessor implemented by the server
function ServerChunk.RemoveEntitiesAndBlockEntities(server) end

function ServerChunk.ClearData() end

---@param serializedChunk number
---@param datapool ChunkDataPool
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@return ServerChunk
function ServerChunk.FromBytes(serializedChunk, datapool, worldForResolve) end

---@return number
function ServerChunk.ToBytes() end

function ServerChunk.MarkToPack() end

---@param entity Entity The basic class for all entities in the game
function ServerChunk.AddEntity(entity) end

---@param entityId number
---@return boolean
function ServerChunk.RemoveEntity(entityId) end

function ServerChunk.MarkModified() end

---@param key string
---@param data number
function ServerChunk.SetServerModdata(key, data) end

---@param key string
---@return number
function ServerChunk.GetServerModdata(key) end

---@param worldAccessor IServerWorldAccessor The world accessor implemented by the server
function ServerChunk.ClearAll(worldAccessor) end

---@return number
function ServerChunk.get_blocksCompressed() end

---@param value number
function ServerChunk.set_blocksCompressed(value) end

---@return number
function ServerChunk.get_lightCompressed() end

---@param value number
function ServerChunk.set_lightCompressed(value) end

---@return number
function ServerChunk.get_lightSatCompressed() end

---@param value number
function ServerChunk.set_lightSatCompressed(value) end

---@return number
function ServerChunk.get_fluidsCompressed() end

---@param value number
function ServerChunk.set_fluidsCompressed(value) end

---@return number
function ServerChunk.get_EntitiesCount() end

---@param value number
function ServerChunk.set_EntitiesCount(value) end

---@return IChunkBlocks
function ServerChunk.get_Blocks() end

---@return IChunkBlocks
function ServerChunk.get_Data() end

---@return IChunkLight
function ServerChunk.get_Lighting() end

---@return IChunkBlocks
function ServerChunk.get_MaybeBlocks() end

---@param value IChunkBlocks
function ServerChunk.set_MaybeBlocks(value) end

---@return boolean
function ServerChunk.get_Empty() end

---@param value boolean
function ServerChunk.set_Empty(value) end

---@return boolean
function ServerChunk.IsPacked() end

---@param chunkTTL? number
function ServerChunk.TryPackAndCommit(chunkTTL) end

function ServerChunk.Pack() end

---@param chunkTTL? number
---@return boolean
function ServerChunk.TryCommitPackAndFree(chunkTTL) end

function ServerChunk.Unpack() end

---@return boolean
function ServerChunk.Unpack_ReadOnly() end

---@param index number
---@param layer number
---@return number
function ServerChunk.UnpackAndReadBlock(index, layer) end

---@param index number
---@return number
function ServerChunk.Unpack_AndReadLight(index) end

---@param index number
---@param lightSat number
---@return number
function ServerChunk.Unpack_AndReadLight(index, lightSat) end

function ServerChunk.Unpack_MaybeNullData() end

function ServerChunk.AcquireBlockReadLock() end

function ServerChunk.ReleaseBlockReadLock() end

function ServerChunk.UpdateEmptyFlag() end

function ServerChunk.MarkFresh() end

---@return boolean
function ServerChunk.get_Disposed() end

---@param value boolean
function ServerChunk.set_Disposed(value) end

---@return table
function ServerChunk.get_LiveModData() end

---@param value table
function ServerChunk.set_LiveModData(value) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function ServerChunk.RemoveBlockEntity(pos) end

---@param key string
---@param data number
function ServerChunk.SetModdata(key, data) end

---@param key string
function ServerChunk.RemoveModdata(key) end

---@param key string
---@return number
function ServerChunk.GetModdata(key) end

---@param key string
---@param data T
function ServerChunk.SetModdata(key, data) end

---@param key string
---@param defaultValue? T
---@return T
function ServerChunk.GetModdata(key, defaultValue) end

function ServerChunk.Dispose() end

---@param world IWorldAccessor Important interface to access the game world.
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function ServerChunk.GetLocalBlockAtBlockPos(world, position) end

---@param world IWorldAccessor Important interface to access the game world.
---@param posX number
---@param posY number
---@param posZ number
---@param layer? number
---@return Block # Basic class for a placeable block
function ServerChunk.GetLocalBlockAtBlockPos(world, posX, posY, posZ, layer) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer? number
---@return Block # Basic class for a placeable block
function ServerChunk.GetLocalBlockAtBlockPos_LockFree(world, pos, layer) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function ServerChunk.GetLocalBlockEntityAtBlockPos(position) end

function ServerChunk.FinishLightDoubleBuffering() end

---@param index3d number
---@param blockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blockTypes IList`1
---@return number
function ServerChunk.GetLightAbsorptionAt(index3d, blockPos, blockTypes) end

---@param block Block Basic class for a placeable block
---@param index3d number
---@param onFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function ServerChunk.SetDecor(block, index3d, onFace) end

---@param block Block Basic class for a placeable block
---@param index3d number
---@param decorIndex number
---@return boolean
function ServerChunk.SetDecor(block, index3d, decorIndex) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block[] # Basic class for a placeable block
function ServerChunk.GetDecors(blockAccessor, position) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param faceAndSubposition number
---@return Block # Basic class for a placeable block
function ServerChunk.GetDecor(blockAccessor, position, faceAndSubposition) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition? Nullable`1
---@return boolean
function ServerChunk.BreakDecor(world, pos, side, faceAndSubposition) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition number
---@return boolean
function ServerChunk.BreakDecorPart(world, pos, side, faceAndSubposition) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition number
---@return boolean
function ServerChunk.RemoveDecorPart(world, pos, side, faceAndSubposition) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param index3d number
---@param callOnBrokenAsDecor? boolean
function ServerChunk.BreakAllDecorFast(world, pos, index3d, callOnBrokenAsDecor) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param orig Cuboidf[] Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function ServerChunk.AdjustSelectionBoxForDecor(blockAccessor, position, orig) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return table
function ServerChunk.GetDecorSelectionBoxes(blockAccessor, position) end

---@param newDecors table
function ServerChunk.SetDecors(newDecors) end

---@return userdata
function ServerChunk.GetType() end

---@return string
function ServerChunk.ToString() end

---@param obj userdata
---@return boolean
function ServerChunk.Equals(obj) end

---@return number
function ServerChunk.GetHashCode() end


