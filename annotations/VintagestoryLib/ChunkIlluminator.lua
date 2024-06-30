---@meta

---@class ChunkIlluminator
ChunkIlluminator = {}

---@param chunkProvider IChunkProvider
---@param readBlockAccess IBlockAccessor Provides read/write access to the blocks of a world
---@param chunkSize number
---@return ChunkIlluminator
function ChunkIlluminator.ctor(chunkProvider, readBlockAccess, chunkSize) end

---@param x number
---@param y number
---@param z number
---@return boolean
function ChunkIlluminator.IsValidPos(x, y, z) end

---@param blockTypes IList`1
---@param defaultSunLight number
---@param mapsizex number
---@param mapsizey number
---@param mapsizez number
function ChunkIlluminator.InitForWorld(blockTypes, defaultSunLight, mapsizex, mapsizey, mapsizez) end

---@param minPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param maxPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ChunkIlluminator.FullRelight(minPos, maxPos) end

---@param chunks IWorldChunk[]
---@param chunkX number
---@param chunkY number
---@param chunkZ number
function ChunkIlluminator.Sunlight(chunks, chunkX, chunkY, chunkZ) end

---@param chunks IWorldChunk[]
---@param chunkX number
---@param chunkY number
---@param chunkZ number
function ChunkIlluminator.SunlightFlood(chunks, chunkX, chunkY, chunkZ) end

---@param curChunks IWorldChunk[]
---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return number
function ChunkIlluminator.SunLightFloodNeighbourChunks(curChunks, chunkX, chunkY, chunkZ) end

---@param stack Stack`1
---@param chunks IWorldChunk[]
function ChunkIlluminator.SpreadSunLightInColumn(stack, chunks) end

---@param posX number
---@param posY number
---@param posZ number
---@param oldAbsorb number
---@param newAbsorb number
---@return FastSetOfLongs
function ChunkIlluminator.UpdateSunLight(posX, posY, posZ, oldAbsorb, newAbsorb) end

---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function ChunkIlluminator.IsDirectlyIlluminated(posX, posY, posZ) end

---@param unhandledPositions QueueOfInt
---@param centerPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param isDirectlyIlluminated boolean
---@param touchedChunks FastSetOfLongs
function ChunkIlluminator.SpreadSunlightAt(unhandledPositions, centerPos, isDirectlyIlluminated, touchedChunks) end

---@param positionsToClear QueueOfInt
---@param centerPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param isDirectlyIlluminated boolean
---@param needTospreadQueue QueueOfInt
---@param touchedChunks FastSetOfLongs
function ChunkIlluminator.ClearSunlightAt(positionsToClear, centerPos, isDirectlyIlluminated, needTospreadQueue, touchedChunks) end

---@param lightHsv number
---@param posX number
---@param posY number
---@param posZ number
---@return FastSetOfLongs
function ChunkIlluminator.PlaceBlockLight(lightHsv, posX, posY, posZ) end

---@param lightHsv number
---@param posX number
---@param posY number
---@param posZ number
function ChunkIlluminator.PlaceNonBlendingBlockLight(lightHsv, posX, posY, posZ) end

---@param oldLightHsv number
---@param posX number
---@param posY number
---@param posZ number
---@return FastSetOfLongs
function ChunkIlluminator.RemoveBlockLight(oldLightHsv, posX, posY, posZ) end

---@param oldLightAbsorb number
---@param newLightAbsorb number
---@param posX number
---@param posY number
---@param posZ number
---@return FastSetOfLongs
function ChunkIlluminator.UpdateBlockLight(oldLightAbsorb, newLightAbsorb, posX, posY, posZ) end

---@return userdata
function ChunkIlluminator.GetType() end

---@return string
function ChunkIlluminator.ToString() end

---@param obj userdata
---@return boolean
function ChunkIlluminator.Equals(obj) end

---@return number
function ChunkIlluminator.GetHashCode() end


