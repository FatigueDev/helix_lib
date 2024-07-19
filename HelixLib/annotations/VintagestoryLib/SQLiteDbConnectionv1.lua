---@meta

---@class SQLiteDbConnectionv1:  IDisposable, IGameDbConnection
---@field IsReadOnly boolean
---@field logger ILogger
SQLiteDbConnectionv1 = {}

---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@return SQLiteDbConnectionv1
function SQLiteDbConnectionv1.ctor(logger) end

---@param filename string
---@param errorMessage string
---@param requireWriteAccess boolean
---@param corruptionProtection boolean
---@param doIntegrityCheck boolean
---@return boolean
function SQLiteDbConnectionv1.OpenOrCreate(filename, errorMessage, requireWriteAccess, corruptionProtection, doIntegrityCheck) end

function SQLiteDbConnectionv1.Close() end

function SQLiteDbConnectionv1.Dispose() end

---@param backupFilename string
function SQLiteDbConnectionv1.CreateBackup(backupFilename) end

---@return number
function SQLiteDbConnectionv1.QuantityChunks() end

---@param chunkpositions function
---@return function
function SQLiteDbConnectionv1.GetChunks(chunkpositions) end

---@return function
function SQLiteDbConnectionv1.GetAllChunks() end

---@return function
function SQLiteDbConnectionv1.GetAllMapChunks() end

---@return function
function SQLiteDbConnectionv1.GetAllMapRegions() end

---@param position number
---@return number
function SQLiteDbConnectionv1.GetMapChunk(position) end

---@param position number
---@return number
function SQLiteDbConnectionv1.GetMapRegion(position) end

---@param position number
---@return number
function SQLiteDbConnectionv1.GetChunk(position) end

---@param coords function
function SQLiteDbConnectionv1.DeleteMapChunks(coords) end

---@param coords function
function SQLiteDbConnectionv1.DeleteMapRegions(coords) end

---@param coords function
function SQLiteDbConnectionv1.DeleteChunks(coords) end

---@param position number
function SQLiteDbConnectionv1.DeleteChunk(position) end

---@param chunks function
function SQLiteDbConnectionv1.SetChunks(chunks) end

---@param mapchunks function
function SQLiteDbConnectionv1.SetMapChunks(mapchunks) end

---@param mapregions function
function SQLiteDbConnectionv1.SetMapRegions(mapregions) end

---@return number
function SQLiteDbConnectionv1.GetGameData() end

---@param data number
function SQLiteDbConnectionv1.StoreGameData(data) end

---@return boolean
function SQLiteDbConnectionv1.QuickCorrectSaveGameVersionTest() end

---@return boolean
function SQLiteDbConnectionv1.get_IsReadOnly() end

---@param v number
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function SQLiteDbConnectionv1.FromMapPos(v) end

---@param x number
---@param y number
---@param z number
---@return number
function SQLiteDbConnectionv1.ToMapPos(x, y, z) end

---@param playeruid string
---@return number
function SQLiteDbConnectionv1.GetPlayerData(playeruid) end

---@param playeruid string
---@param data number
function SQLiteDbConnectionv1.SetPlayerData(playeruid, data) end

function SQLiteDbConnectionv1.UpgradeToWriteAccess() end

---@return boolean
function SQLiteDbConnectionv1.IntegrityCheck() end

---@param position number
---@return boolean
function SQLiteDbConnectionv1.ChunkExists(position) end

---@param position number
---@return boolean
function SQLiteDbConnectionv1.MapChunkExists(position) end

---@param position number
---@return boolean
function SQLiteDbConnectionv1.MapRegionExists(position) end

function SQLiteDbConnectionv1.Vacuum() end

---@return userdata
function SQLiteDbConnectionv1.GetType() end

---@return string
function SQLiteDbConnectionv1.ToString() end

---@param obj userdata
---@return boolean
function SQLiteDbConnectionv1.Equals(obj) end

---@return number
function SQLiteDbConnectionv1.GetHashCode() end


