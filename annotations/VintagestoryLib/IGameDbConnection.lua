---@meta

---@class IGameDbConnection:  IDisposable
---@field IsReadOnly boolean
IGameDbConnection = {}


---@return boolean
function IGameDbConnection.get_IsReadOnly() end

---@param filename string
---@param errorMessage string
---@param requireWriteAccess boolean
---@param corruptionProtection boolean
---@param doIntegrityCheck boolean
---@return boolean
function IGameDbConnection.OpenOrCreate(filename, errorMessage, requireWriteAccess, corruptionProtection, doIntegrityCheck) end

---@param backupFilename string
function IGameDbConnection.CreateBackup(backupFilename) end

function IGameDbConnection.Vacuum() end

---@return function
function IGameDbConnection.GetAllChunks() end

---@return function
function IGameDbConnection.GetAllMapChunks() end

---@return function
function IGameDbConnection.GetAllMapRegions() end

---@param playeruid string
---@return number
function IGameDbConnection.GetPlayerData(playeruid) end

---@param playeruid string
---@param data number
function IGameDbConnection.SetPlayerData(playeruid, data) end

---@param position number
---@return boolean
function IGameDbConnection.ChunkExists(position) end

---@param position number
---@return boolean
function IGameDbConnection.MapChunkExists(position) end

---@param position number
---@return boolean
function IGameDbConnection.MapRegionExists(position) end

---@param coord number
---@return number
function IGameDbConnection.GetChunk(coord) end

---@param coord number
---@return number
function IGameDbConnection.GetMapChunk(coord) end

---@param coord number
---@return number
function IGameDbConnection.GetMapRegion(coord) end

---@param chunks function
function IGameDbConnection.SetChunks(chunks) end

---@param mapchunks function
function IGameDbConnection.SetMapChunks(mapchunks) end

---@param mapregions function
function IGameDbConnection.SetMapRegions(mapregions) end

---@param chunkpositions function
function IGameDbConnection.DeleteChunks(chunkpositions) end

---@param chunkpositions function
function IGameDbConnection.DeleteMapChunks(chunkpositions) end

---@param chunkpositions function
function IGameDbConnection.DeleteMapRegions(chunkpositions) end

---@return number
function IGameDbConnection.GetGameData() end

---@param data number
function IGameDbConnection.StoreGameData(data) end

---@return boolean
function IGameDbConnection.QuickCorrectSaveGameVersionTest() end

function IGameDbConnection.UpgradeToWriteAccess() end

---@return boolean
function IGameDbConnection.IntegrityCheck() end


