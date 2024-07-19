---@meta

---@class WorldChunk:  IWorldChunk
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
---@field MapChunk IMapChunk
---@field LightPositions HashSet`1
---@field ModData table
---@field Disposed boolean
---@field LiveModData table
---@field WasModified boolean
---@field lastReadOrWrite number
---@field blocksCompressedTmp number
---@field lightCompressedTmp number
---@field lightSatCompressedTmp number
---@field fluidsCompressedTmp number
---@field Entities Entity[]
---@field BlockEntities table
---@field Decors table
WorldChunk = {}


---@return number
function WorldChunk.get_blocksCompressed() end

---@param value number
function WorldChunk.set_blocksCompressed(value) end

---@return number
function WorldChunk.get_lightCompressed() end

---@param value number
function WorldChunk.set_lightCompressed(value) end

---@return number
function WorldChunk.get_lightSatCompressed() end

---@param value number
function WorldChunk.set_lightSatCompressed(value) end

---@return number
function WorldChunk.get_fluidsCompressed() end

---@param value number
function WorldChunk.set_fluidsCompressed(value) end

---@return number
function WorldChunk.get_EntitiesCount() end

---@param value number
function WorldChunk.set_EntitiesCount(value) end

---@return IChunkBlocks
function WorldChunk.get_Blocks() end

---@return IChunkBlocks
function WorldChunk.get_Data() end

---@return IChunkLight
function WorldChunk.get_Lighting() end

---@return IChunkBlocks
function WorldChunk.get_MaybeBlocks() end

---@param value IChunkBlocks
function WorldChunk.set_MaybeBlocks(value) end

---@return boolean
function WorldChunk.get_Empty() end

---@param value boolean
function WorldChunk.set_Empty(value) end

---@return IMapChunk # Holds 2 dimensional data for one chunk column
function WorldChunk.get_MapChunk() end

function WorldChunk.MarkModified() end

---@return boolean
function WorldChunk.IsPacked() end

---@param chunkTTL? number
function WorldChunk.TryPackAndCommit(chunkTTL) end

function WorldChunk.Pack() end

---@param chunkTTL? number
---@return boolean
function WorldChunk.TryCommitPackAndFree(chunkTTL) end

function WorldChunk.Unpack() end

---@return boolean
function WorldChunk.Unpack_ReadOnly() end

---@param index number
---@param layer number
---@return number
function WorldChunk.UnpackAndReadBlock(index, layer) end

---@param index number
---@return number
function WorldChunk.Unpack_AndReadLight(index) end

---@param index number
---@param lightSat number
---@return number
function WorldChunk.Unpack_AndReadLight(index, lightSat) end

function WorldChunk.Unpack_MaybeNullData() end

function WorldChunk.AcquireBlockReadLock() end

function WorldChunk.ReleaseBlockReadLock() end

function WorldChunk.UpdateEmptyFlag() end

function WorldChunk.MarkFresh() end

---@return HashSet`1
function WorldChunk.get_LightPositions() end

---@param value HashSet`1
function WorldChunk.set_LightPositions(value) end

---@return table
function WorldChunk.get_ModData() end

---@param value table
function WorldChunk.set_ModData(value) end

---@return boolean
function WorldChunk.get_Disposed() end

---@param value boolean
function WorldChunk.set_Disposed(value) end

---@return table
function WorldChunk.get_LiveModData() end

---@param value table
function WorldChunk.set_LiveModData(value) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function WorldChunk.RemoveBlockEntity(pos) end

---@param entity Entity The basic class for all entities in the game
function WorldChunk.AddEntity(entity) end

---@param entityId number
---@return boolean
function WorldChunk.RemoveEntity(entityId) end

---@param key string
---@param data number
function WorldChunk.SetModdata(key, data) end

---@param key string
function WorldChunk.RemoveModdata(key) end

---@param key string
---@return number
function WorldChunk.GetModdata(key) end

---@param key string
---@param data T
function WorldChunk.SetModdata(key, data) end

---@param key string
---@param defaultValue? T
---@return T
function WorldChunk.GetModdata(key, defaultValue) end

function WorldChunk.Dispose() end

---@param world IWorldAccessor Important interface to access the game world.
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function WorldChunk.GetLocalBlockAtBlockPos(world, position) end

---@param world IWorldAccessor Important interface to access the game world.
---@param posX number
---@param posY number
---@param posZ number
---@param layer? number
---@return Block # Basic class for a placeable block
function WorldChunk.GetLocalBlockAtBlockPos(world, posX, posY, posZ, layer) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param layer? number
---@return Block # Basic class for a placeable block
function WorldChunk.GetLocalBlockAtBlockPos_LockFree(world, pos, layer) end

---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function WorldChunk.GetLocalBlockEntityAtBlockPos(position) end

function WorldChunk.FinishLightDoubleBuffering() end

---@param index3d number
---@param blockPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blockTypes IList`1
---@return number
function WorldChunk.GetLightAbsorptionAt(index3d, blockPos, blockTypes) end

---@param block Block Basic class for a placeable block
---@param index3d number
---@param onFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return boolean
function WorldChunk.SetDecor(block, index3d, onFace) end

---@param block Block Basic class for a placeable block
---@param index3d number
---@param decorIndex number
---@return boolean
function WorldChunk.SetDecor(block, index3d, decorIndex) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block[] # Basic class for a placeable block
function WorldChunk.GetDecors(blockAccessor, position) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param faceAndSubposition number
---@return Block # Basic class for a placeable block
function WorldChunk.GetDecor(blockAccessor, position, faceAndSubposition) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side? BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition? Nullable`1
---@return boolean
function WorldChunk.BreakDecor(world, pos, side, faceAndSubposition) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition number
---@return boolean
function WorldChunk.BreakDecorPart(world, pos, side, faceAndSubposition) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param side BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param faceAndSubposition number
---@return boolean
function WorldChunk.RemoveDecorPart(world, pos, side, faceAndSubposition) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param index3d number
---@param callOnBrokenAsDecor? boolean
function WorldChunk.BreakAllDecorFast(world, pos, index3d, callOnBrokenAsDecor) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param orig Cuboidf[] Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function WorldChunk.AdjustSelectionBoxForDecor(blockAccessor, position, orig) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return table
function WorldChunk.GetDecorSelectionBoxes(blockAccessor, position) end

---@param newDecors table
function WorldChunk.SetDecors(newDecors) end

---@return userdata
function WorldChunk.GetType() end

---@return string
function WorldChunk.ToString() end

---@param obj userdata
---@return boolean
function WorldChunk.Equals(obj) end

---@return number
function WorldChunk.GetHashCode() end


