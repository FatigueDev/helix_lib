---@meta

---@class SQLiteDbConnectionv2: SQLiteDBConnection, IDisposable, IGameDbConnection, SQLiteDBConnection
---@field DBTypeCode string
---@field IsReadOnly boolean
---@field transactionLock userdata
SQLiteDbConnectionv2 = {}

---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@return SQLiteDbConnectionv2
function SQLiteDbConnectionv2.ctor(logger) end

---@return string
function SQLiteDbConnectionv2.get_DBTypeCode() end

function SQLiteDbConnectionv2.OnOpened() end

function SQLiteDbConnectionv2.UpgradeToWriteAccess() end

---@return boolean
function SQLiteDbConnectionv2.IntegrityCheck() end

---@return number
function SQLiteDbConnectionv2.QuantityChunks() end

---@param tablename string
---@return function
function SQLiteDbConnectionv2.GetAllChunks(tablename) end

---@return function
function SQLiteDbConnectionv2.GetAllChunks() end

---@return function
function SQLiteDbConnectionv2.GetAllMapChunks() end

---@return function
function SQLiteDbConnectionv2.GetAllMapRegions() end

---@param playeruid string
---@return number
function SQLiteDbConnectionv2.GetPlayerData(playeruid) end

---@param playeruid string
---@param data number
function SQLiteDbConnectionv2.SetPlayerData(playeruid, data) end

---@param chunkpositions function
---@return function
function SQLiteDbConnectionv2.GetChunks(chunkpositions) end

---@param position number
---@return number
function SQLiteDbConnectionv2.GetChunk(position) end

---@param position number
---@return number
function SQLiteDbConnectionv2.GetMapChunk(position) end

---@param position number
---@return number
function SQLiteDbConnectionv2.GetMapRegion(position) end

---@param position number
---@return boolean
function SQLiteDbConnectionv2.ChunkExists(position) end

---@param position number
---@return boolean
function SQLiteDbConnectionv2.MapChunkExists(position) end

---@param position number
---@return boolean
function SQLiteDbConnectionv2.MapRegionExists(position) end

---@param position number
---@param tablename string
---@return boolean
function SQLiteDbConnectionv2.ChunkExists(position, tablename) end

---@param position number
---@param tablename string
---@return number
function SQLiteDbConnectionv2.GetChunk(position, tablename) end

---@param chunkpositions function
function SQLiteDbConnectionv2.DeleteChunks(chunkpositions) end

---@param mapchunkpositions function
function SQLiteDbConnectionv2.DeleteMapChunks(mapchunkpositions) end

---@param mapchunkregions function
function SQLiteDbConnectionv2.DeleteMapRegions(mapchunkregions) end

---@param chunkpositions function
---@param tablename string
function SQLiteDbConnectionv2.DeleteChunks(chunkpositions, tablename) end

---@param position number
---@param tablename string
function SQLiteDbConnectionv2.DeleteChunk(position, tablename) end

---@param chunks function
function SQLiteDbConnectionv2.SetChunks(chunks) end

---@param mapchunks function
function SQLiteDbConnectionv2.SetMapChunks(mapchunks) end

---@param mapregions function
function SQLiteDbConnectionv2.SetMapRegions(mapregions) end

---@return number
function SQLiteDbConnectionv2.GetGameData() end

---@param data number
function SQLiteDbConnectionv2.StoreGameData(data) end

---@return boolean
function SQLiteDbConnectionv2.QuickCorrectSaveGameVersionTest() end

---@param backupFilename string
function SQLiteDbConnectionv2.CreateBackup(backupFilename) end

function SQLiteDbConnectionv2.Close() end

function SQLiteDbConnectionv2.Dispose() end

---@return boolean
function SQLiteDbConnectionv2.get_IsReadOnly() end

---@param filename string
---@param errorMessage string
---@param requireWriteAccess boolean
---@param corruptionProtection boolean
---@param doIntegrityCheck boolean
---@return boolean
function SQLiteDbConnectionv2.OpenOrCreate(filename, errorMessage, requireWriteAccess, corruptionProtection, doIntegrityCheck) end

function SQLiteDbConnectionv2.Vacuum() end

---@param sqliteConn SqliteConnection
---@param logResults? boolean
---@return boolean
function SQLiteDbConnectionv2.DoIntegrityCheck(sqliteConn, logResults) end

---@return userdata
function SQLiteDbConnectionv2.GetType() end

---@return string
function SQLiteDbConnectionv2.ToString() end

---@param obj userdata
---@return boolean
function SQLiteDbConnectionv2.Equals(obj) end

---@return number
function SQLiteDbConnectionv2.GetHashCode() end


