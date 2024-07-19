---@meta

---@class BlockTypeNet: CollectibleNet, CollectibleNet
BlockTypeNet = {}

---@return BlockTypeNet
function BlockTypeNet.ctor() end

---@param packet Packet_BlockType
---@param world IWorldAccessor Important interface to access the game world.
---@param registry ClassRegistry
---@return Block # Basic class for a placeable block
function BlockTypeNet.ReadBlockTypePacket(packet, world, registry) end

---@param block Block Basic class for a placeable block
---@param registry IClassRegistryAPI Interface for creating instances
---@return Packet_BlockType
function BlockTypeNet.GetBlockTypePacket(block, registry) end

---@param positions table
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@return number
function BlockTypeNet.PackSetBlocksList(positions, blockAccessor) end

---@param chunk WorldChunk
---@param chunkIndex number
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@return number
function BlockTypeNet.PackSetDecorsList(chunk, chunkIndex, blockAccessor) end

---@param data number
---@param worldAccessor IWorldAccessor Important interface to access the game world.
---@param chunkIndex number
---@return table
function BlockTypeNet.UnpackSetDecors(data, worldAccessor, chunkIndex) end

---@param setBlocks number
---@param liquidsLayer number
---@return KeyValuePair`2
function BlockTypeNet.UnpackSetBlocks(setBlocks, liquidsLayer) end

---@param positions table
---@return number
function BlockTypeNet.PackBlocksPositions(positions) end

---@param setBlocks number
---@return BlockPos[] # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockTypeNet.UnpackBlockPositions(setBlocks) end

---@return userdata
function BlockTypeNet.GetType() end

---@return string
function BlockTypeNet.ToString() end

---@param obj userdata
---@return boolean
function BlockTypeNet.Equals(obj) end

---@return number
function BlockTypeNet.GetHashCode() end


