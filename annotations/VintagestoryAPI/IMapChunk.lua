---@meta

-- Holds 2 dimensional data for one chunk column
---@class IMapChunk
---@field SnowAccum ConcurrentDictionary`2
---@field MapRegion IMapRegion The map region this map chunk resides in
---@field CurrentPass EnumWorldGenPass The current world generation pass this chunk column is in
---@field CaveHeightDistort number
---@field RainHeightMap number The position of the last block that is not rain permeable before the first airblock
---@field WorldGenTerrainHeightMap number The position of the last block before the first airblock before world gen pass Vegetation
---@field TopRockIdMap number The rock block id of the topmost rock layer
---@field SedimentaryThicknessMap number
---@field YMax number The highest position of any non-air block
IMapChunk = {}


---@return ConcurrentDictionary`2
function IMapChunk.get_SnowAccum() end

---@return IMapRegion # 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function IMapChunk.get_MapRegion() end

---@return EnumWorldGenPass # The stages a chunk goes through when being created
function IMapChunk.get_CurrentPass() end

---@param value EnumWorldGenPass The stages a chunk goes through when being created
function IMapChunk.set_CurrentPass(value) end

-- Server: Can be used to store custom data along with the map chunk
-- Client: Not implemented. Map chunk Moddata is not synced from server to client
---@param key string
---@param data number
function IMapChunk.SetData(key, data) end

-- Server: Can be used to retrieve custom data from the map chunk (as previously set by SetModdata)
-- Client: Not implemented. Map chunk Moddata is not synced from server to client
---@param key string
---@return number
function IMapChunk.GetData(key) end

-- Server: Allows setting of arbitrary, permanently stored moddata of this map chunk.
-- Client: Not implemented. Map chunk Moddata is not synced from server to client
---@param key string
---@param data number
function IMapChunk.SetModdata(key, data) end

-- Server: Removes the permanently stored data. 
-- Client: Not implemented. Map chunk Moddata is not synced from server to client
---@param key string
function IMapChunk.RemoveModdata(key) end

-- Server: Retrieve arbitrary, permanently stored mod data
-- Client: Not implemented. Map chunk Moddata is not synced from server to client
---@param key string
---@return number
function IMapChunk.GetModdata(key) end

---@param key string
---@param data T
function IMapChunk.SetModdata(key, data) end

---@param key string
---@param defaultValue? T
---@return T
function IMapChunk.GetModdata(key, defaultValue) end

---@return number
function IMapChunk.get_CaveHeightDistort() end

---@param value number
function IMapChunk.set_CaveHeightDistort(value) end

---@return number
function IMapChunk.get_RainHeightMap() end

---@return number
function IMapChunk.get_WorldGenTerrainHeightMap() end

---@return number
function IMapChunk.get_TopRockIdMap() end

---@return number
function IMapChunk.get_SedimentaryThicknessMap() end

---@return number
function IMapChunk.get_YMax() end

---@param value number
function IMapChunk.set_YMax(value) end

-- Causes the TTL counter to reset so that it the mapchunk does not unload. No effect when called client side.
function IMapChunk.MarkFresh() end

-- Tells the server that it has to save the changes of this chunk to disk. No effect when called client side.
function IMapChunk.MarkDirty() end


