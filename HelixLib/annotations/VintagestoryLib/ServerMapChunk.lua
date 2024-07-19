---@meta

---@class ServerMapChunk:  IServerMapChunk, IMapChunk
---@field CurrentIncompletePass EnumWorldGenPass
---@field CaveHeightDistort number
---@field SedimentaryThicknessMap number
---@field SnowAccum ConcurrentDictionary`2
---@field SelfLoaded boolean
---@field Moddata table
---@field RainHeightMap number
---@field TopRockIdMapOld number
---@field TopRockIdMap number
---@field WorldGenTerrainHeightMap number
---@field ScheduledBlockUpdates table
---@field NewBlockEntities HashSet`1
---@field YMax number
---@field WorldGenVersion number
---@field QuantityNeighboursLoaded number
---@field MapRegion ServerMapRegion
---@field DirtyForSaving boolean
---@field NeighboursLoaded SmallBoolArray
---@field UnloadGeneration number
ServerMapChunk = {}

---@return ServerMapChunk
function ServerMapChunk.ctor() end

---@return EnumWorldGenPass # The stages a chunk goes through when being created
function ServerMapChunk.get_CurrentIncompletePass() end

---@param value EnumWorldGenPass The stages a chunk goes through when being created
function ServerMapChunk.set_CurrentIncompletePass(value) end

---@return number
function ServerMapChunk.get_CaveHeightDistort() end

---@param value number
function ServerMapChunk.set_CaveHeightDistort(value) end

---@return number
function ServerMapChunk.get_SedimentaryThicknessMap() end

---@param value number
function ServerMapChunk.set_SedimentaryThicknessMap(value) end

---@return ConcurrentDictionary`2
function ServerMapChunk.get_SnowAccum() end

---@param value ConcurrentDictionary`2
function ServerMapChunk.set_SnowAccum(value) end

---@return boolean
function ServerMapChunk.get_SelfLoaded() end

---@param value boolean
function ServerMapChunk.set_SelfLoaded(value) end

---@param mapRegion ServerMapRegion
---@return ServerMapChunk
function ServerMapChunk.CreateNew(mapRegion) end

---@param serializedChunk number
---@return ServerMapChunk
function ServerMapChunk.FromBytes(serializedChunk) end

---@return number
function ServerMapChunk.ToBytes() end

---@param key string
---@param data number
function ServerMapChunk.SetData(key, data) end

---@param key string
---@return number
function ServerMapChunk.GetData(key) end

---@param key string
---@param data number
function ServerMapChunk.SetModdata(key, data) end

---@param key string
---@return number
function ServerMapChunk.GetModdata(key) end

---@param key string
---@param data T
function ServerMapChunk.SetModdata(key, data) end

---@param key string
---@param defaultValue? T
---@return T
function ServerMapChunk.GetModdata(key, defaultValue) end

---@param key string
function ServerMapChunk.RemoveModdata(key) end

function ServerMapChunk.MarkFresh() end

function ServerMapChunk.DoAge() end

---@return boolean
function ServerMapChunk.IsOld() end

---@param chunkX number
---@param chunkZ number
---@return Packet_Server
function ServerMapChunk.ToPacket(chunkX, chunkZ) end

function ServerMapChunk.MarkDirty() end

---@return userdata
function ServerMapChunk.GetType() end

---@return string
function ServerMapChunk.ToString() end

---@param obj userdata
---@return boolean
function ServerMapChunk.Equals(obj) end

---@return number
function ServerMapChunk.GetHashCode() end


