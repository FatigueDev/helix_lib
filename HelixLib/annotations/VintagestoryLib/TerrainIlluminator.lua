---@meta

---@class TerrainIlluminator:  IChunkProvider
---@field Logger ILogger
TerrainIlluminator = {}

---@param game ClientMain
---@return TerrainIlluminator
function TerrainIlluminator.ctor(game) end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function TerrainIlluminator.get_Logger() end

function TerrainIlluminator.OnBlockTexturesLoaded() end

---@param chunk ClientChunk
---@param chunkX number
---@param chunkY number
---@param chunkZ number
function TerrainIlluminator.SunRelightChunk(chunk, chunkX, chunkY, chunkZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return IWorldChunk
function TerrainIlluminator.GetChunk(chunkX, chunkY, chunkZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param notRecentlyAccessed? boolean
---@return IWorldChunk
function TerrainIlluminator.GetUnpackedChunkFast(chunkX, chunkY, chunkZ, notRecentlyAccessed) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return number
function TerrainIlluminator.ChunkIndex3D(chunkX, chunkY, chunkZ) end

---@return userdata
function TerrainIlluminator.GetType() end

---@return string
function TerrainIlluminator.ToString() end

---@param obj userdata
---@return boolean
function TerrainIlluminator.Equals(obj) end

---@return number
function TerrainIlluminator.GetHashCode() end


