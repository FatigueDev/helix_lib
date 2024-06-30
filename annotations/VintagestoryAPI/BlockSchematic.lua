---@meta

---@class BlockSchematic
---@field BlockRemaps table Set by the RemapperAssistant in OnFinalizeAssets Heads up!:  This is unordered, it will iterate through the different game versions' remaps not necessarily in the order they originally appear in remaps.json config.  If any block remaps over the years have duplicate original block names, behavior for those ones may be unpredictable
---@field ItemRemaps table Set by the RemapperAssistant in OnFinalizeAssets
---@field GameVersion string
---@field SizeX number
---@field SizeY number
---@field SizeZ number
---@field BlockCodes table
---@field ItemCodes table
---@field Indices table
---@field BlockIds table
---@field DecorIndices table
---@field DecorIds table
---@field BlockEntities table
---@field Entities table
---@field ReplaceMode EnumReplaceMode
---@field EntranceRotation number
---@field BlocksUnpacked table
---@field FluidsLayerUnpacked table
---@field BlockEntitiesUnpacked table
---@field EntitiesUnpacked table
---@field DecorsUnpacked table
---@field PackedOffset FastVec3i
---@field OmitLiquids boolean
---@field PathwaySides BlockFacing[]
---@field PathwayStarts BlockPos[] Distance positions from bottom left corner of the schematic. Only the first door block.
---@field PathwayOffsets BlockPos[][] Distance from the bottom left door block, so the bottom left door block is always at 0,0,0
---@field UndergroundCheckPositions BlockPos[]
BlockSchematic = {}

---@return BlockSchematic
function BlockSchematic.ctor() end

---@return table
function BlockSchematic.get_BlockRemaps() end

---@param value table
function BlockSchematic.set_BlockRemaps(value) end

---@return table
function BlockSchematic.get_ItemRemaps() end

---@param value table
function BlockSchematic.set_ItemRemaps(value) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
function BlockSchematic.Init(blockAccessor) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
function BlockSchematic.InitMetaBlocks(blockAccessor) end

-- Loads the meta information for each block in the schematic.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param fileNameForLogging string
function BlockSchematic.LoadMetaInformationAndValidate(blockAccessor, worldForResolve, fileNameForLogging) end

-- Adds an area to the schematic.
---@param world IWorldAccessor Important interface to access the game world.
---@param start BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param end BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockSchematic.AddArea(world, start, end) end

---@param world IWorldAccessor Important interface to access the game world.
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function BlockSchematic.Pack(world, startPos) end

-- Will place all blocks using the configured replace mode. Note: If you use a revertable or bulk block accessor you will have to call PlaceBlockEntities() after the Commit()
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param worldForCollectibleResolve IWorldAccessor Important interface to access the game world.
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param replaceMetaBlocks? boolean
---@return number
function BlockSchematic.Place(blockAccessor, worldForCollectibleResolve, startPos, replaceMetaBlocks) end

-- Will place all blocks using the supplied replace mode. Note: If you use a revertable or bulk block accessor you will have to call PlaceBlockEntities() after the Commit()
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param worldForCollectibleResolve IWorldAccessor Important interface to access the game world.
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode EnumReplaceMode
---@param replaceMetaBlocks? boolean
---@return number
function BlockSchematic.Place(blockAccessor, worldForCollectibleResolve, startPos, mode, replaceMetaBlocks) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockSchematic.PlaceDecors(blockAccessor, startPos) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param rect Rectanglei
function BlockSchematic.PlaceDecors(blockAccessor, startPos, rect) end

-- Attempts to transform each block as they are placed in directions different from the schematic.
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param aroundOrigin EnumOrigin
---@param angle number
---@param flipAxis? Nullable`1 Represents an axis in the cartesian coordinate system
function BlockSchematic.TransformWhilePacked(worldForResolve, aroundOrigin, angle, flipAxis) end

-- Places all the entities and blocks in the schematic at the position.
---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param worldForCollectibleResolve IWorldAccessor Important interface to access the game world.
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blockCodes table
---@param itemCodes table
---@param replaceBlockEntities? boolean
---@param replaceBlocks? table
---@param centerrockblockid? number
---@param layerBlockForBlockEntities? table
---@param resolveImports? boolean
function BlockSchematic.PlaceEntitiesAndBlockEntities(blockAccessor, worldForCollectibleResolve, startPos, blockCodes, itemCodes, replaceBlockEntities, replaceBlocks, centerrockblockid, layerBlockForBlockEntities, resolveImports) end

-- Gets just the positions of the blocks.
---@param origin BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockPos[] # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockSchematic.GetJustPositions(origin) end

-- Gets the starting position of the schematic.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param origin EnumOrigin
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockSchematic.GetStartPos(pos, origin) end

-- Adjusts the starting position of the schemtic.
---@param startpos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param origin EnumOrigin
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function BlockSchematic.AdjustStartPos(startpos, origin) end

---@param infilepath string
---@param error string
---@return BlockSchematic
function BlockSchematic.LoadFromFile(infilepath, error) end

---@param jsoncode string
---@param error string
---@return BlockSchematic
function BlockSchematic.LoadFromString(jsoncode, error) end

-- Saves a schematic to a file.
---@param outfilepath string
---@return string
function BlockSchematic.Save(outfilepath) end

---@return string
function BlockSchematic.ToJson() end

-- Exports the block entity data to a string.
---@param be BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
---@return string
function BlockSchematic.EncodeBlockEntityData(be) end

-- Exports the tree attribute data to a string.
---@param tree ITreeAttribute Represents a List of nestable Attributes
---@return string
function BlockSchematic.StringEncodeTreeAttribute(tree) end

-- Imports the tree data from a string.
---@param data string
---@return TreeAttribute # A datastructure to hold generic data for most primitives (int, string, float, etc.). But can also hold generic data using the ByteArrayAttribute + class serialization
function BlockSchematic.DecodeBlockEntityData(data) end

-- Makes a deep copy of the packed schematic. Unpacked data and loaded meta information is not cloned.
---@return BlockSchematic
function BlockSchematic.ClonePacked() end

---@return userdata
function BlockSchematic.GetType() end

---@return string
function BlockSchematic.ToString() end

---@param obj userdata
---@return boolean
function BlockSchematic.Equals(obj) end

---@return number
function BlockSchematic.GetHashCode() end


