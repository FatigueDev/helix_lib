---@meta

---@class ServerThread
---@field Alive boolean
---@field ShouldPause boolean
---@field serversystems ServerSystem[]
---@field SleepMs number
ServerThread = {}

---@param server ServerMain
---@param threadName string
---@param cancellationToken CancellationToken
---@return ServerThread
function ServerThread.ctor(server, threadName, cancellationToken) end

---@return boolean
function ServerThread.get_Alive() end

function ServerThread.Process() end

function ServerThread.ShutDown() end

---@return boolean
function ServerThread.Update() end

function ServerThread.OnBeginInitialization() end

function ServerThread.OnBeginConfiguration() end

function ServerThread.OnPrepareAssets() end

function ServerThread.OnBeginLoadGamePre() end

---@param savegame SaveGame
function ServerThread.OnBeginLoadGame(savegame) end

function ServerThread.OnBeginRunGame() end

function ServerThread.OnBeginShutdown() end

---@return userdata
function ServerThread.GetType() end

---@return string
function ServerThread.ToString() end

---@param obj userdata
---@return boolean
function ServerThread.Equals(obj) end

---@return number
function ServerThread.GetHashCode() end


