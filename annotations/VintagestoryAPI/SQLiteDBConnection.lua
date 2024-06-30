---@meta

---@class SQLiteDBConnection:  IDisposable
---@field DBTypeCode string
---@field IsReadOnly boolean
---@field transactionLock userdata
SQLiteDBConnection = {}

---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@return SQLiteDBConnection
function SQLiteDBConnection.ctor(logger) end

---@return string
function SQLiteDBConnection.get_DBTypeCode() end

---@return boolean
function SQLiteDBConnection.get_IsReadOnly() end

---@param filename string
---@param errorMessage string
---@param requireWriteAccess boolean
---@param corruptionProtection boolean
---@param doIntegrityCheck boolean
---@return boolean
function SQLiteDBConnection.OpenOrCreate(filename, errorMessage, requireWriteAccess, corruptionProtection, doIntegrityCheck) end

function SQLiteDBConnection.OnOpened() end

function SQLiteDBConnection.Close() end

function SQLiteDBConnection.Dispose() end

function SQLiteDBConnection.Vacuum() end

---@param sqliteConn SqliteConnection
---@param logResults? boolean
---@return boolean
function SQLiteDBConnection.DoIntegrityCheck(sqliteConn, logResults) end

---@param folderPath string
---@return boolean
function SQLiteDBConnection.HaveWriteAccessFolder(folderPath) end

---@param file FileInfo
---@return boolean
function SQLiteDBConnection.HaveWriteAccessFile(file) end

---@return userdata
function SQLiteDBConnection.GetType() end

---@return string
function SQLiteDBConnection.ToString() end

---@param obj userdata
---@return boolean
function SQLiteDBConnection.Equals(obj) end

---@return number
function SQLiteDBConnection.GetHashCode() end


