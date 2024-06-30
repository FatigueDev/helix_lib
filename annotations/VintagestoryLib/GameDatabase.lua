---@meta

---@class GameDatabase:  IDisposable
---@field DatabaseFilename string
GameDatabase = {}

---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@return GameDatabase
function GameDatabase.ctor(logger) end

---@return string
function GameDatabase.get_DatabaseFilename() end

---@param databaseFilename string
---@param databaseVersion number
---@param corruptionProtection boolean
---@param doIntegrityCheck boolean
---@return boolean
function GameDatabase.OpenConnection(databaseFilename, databaseVersion, corruptionProtection, doIntegrityCheck) end

---@param databaseFilename string
---@param errorMessage string
---@param corruptionProtection boolean
---@param doIntegrityCheck boolean
---@return boolean
function GameDatabase.OpenConnection(databaseFilename, errorMessage, corruptionProtection, doIntegrityCheck) end

---@param databaseFilename string
---@param corruptionProtection boolean
---@param doIntegrityCheck boolean
---@return boolean
function GameDatabase.OpenConnection(databaseFilename, corruptionProtection, doIntegrityCheck) end

---@param databaseFilename string
---@param databaseVersion number
---@param errorMessage string
---@param requireWriteAccess boolean
---@param corruptionProtection boolean
---@param doIntegrityCheck boolean
---@return boolean
function GameDatabase.OpenConnection(databaseFilename, databaseVersion, errorMessage, requireWriteAccess, corruptionProtection, doIntegrityCheck) end

function GameDatabase.UpgradeToWriteAccess() end

---@return boolean
function GameDatabase.IntegrityCheck() end

---@param databaseFilename string
---@param corruptionProtection boolean
---@param foundVersion number
---@param isReadonly boolean
---@param requireWrite? boolean
---@return SaveGame
function GameDatabase.ProbeOpenConnection(databaseFilename, corruptionProtection, foundVersion, isReadonly, requireWrite) end

---@param databaseFilename string
---@param corruptionProtection boolean
---@param foundVersion number
---@param errorMessage string
---@param isReadonly boolean
---@param requireWrite? boolean
---@return SaveGame
function GameDatabase.ProbeOpenConnection(databaseFilename, corruptionProtection, foundVersion, errorMessage, isReadonly, requireWrite) end

---@return function
function GameDatabase.GetAllChunks() end

---@return function
function GameDatabase.GetAllMapChunks() end

---@return function
function GameDatabase.GetAllMapRegions() end

function GameDatabase.Vacuum() end

---@param x number
---@param y number
---@param z number
---@return boolean
function GameDatabase.ChunkExists(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return boolean
function GameDatabase.MapChunkExists(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return boolean
function GameDatabase.MapRegionExists(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return number
function GameDatabase.GetChunk(x, y, z) end

---@param x number
---@param z number
---@return number
function GameDatabase.GetMapChunk(x, z) end

---@param x number
---@param z number
---@return number
function GameDatabase.GetMapRegion(x, z) end

---@param chunks function
function GameDatabase.SetChunks(chunks) end

---@param mapchunks function
function GameDatabase.SetMapChunks(mapchunks) end

---@param mapregions function
function GameDatabase.SetMapRegions(mapregions) end

---@param coords function
function GameDatabase.DeleteChunks(coords) end

---@param coords function
function GameDatabase.DeleteMapChunks(coords) end

---@param coords function
function GameDatabase.DeleteMapRegions(coords) end

---@param playeruid string
---@return number
function GameDatabase.GetPlayerData(playeruid) end

---@param playeruid string
---@param data number
function GameDatabase.SetPlayerData(playeruid, data) end

function GameDatabase.Dispose() end

---@param backupFilename string
function GameDatabase.CreateBackup(backupFilename) end

---@return SaveGame
function GameDatabase.GetSaveGame() end

---@param savegame SaveGame
function GameDatabase.StoreSaveGame(savegame) end

---@param data number
function GameDatabase.StoreSaveGame(data) end

---@param folderPath string
---@return boolean
function GameDatabase.HaveWriteAccessFolder(folderPath) end

---@param file FileInfo
---@return boolean
function GameDatabase.HaveWriteAccessFile(file) end

---@return userdata
function GameDatabase.GetType() end

---@return string
function GameDatabase.ToString() end

---@param obj userdata
---@return boolean
function GameDatabase.Equals(obj) end

---@return number
function GameDatabase.GetHashCode() end


