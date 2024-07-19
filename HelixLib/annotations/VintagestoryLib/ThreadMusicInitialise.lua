---@meta

---@class ThreadMusicInitialise
ThreadMusicInitialise = {}

---@param engine SystemMusicEngine
---@param game ClientMain
---@return ThreadMusicInitialise
function ThreadMusicInitialise.ctor(engine, game) end

function ThreadMusicInitialise.Process() end

---@return userdata
function ThreadMusicInitialise.GetType() end

---@return string
function ThreadMusicInitialise.ToString() end

---@param obj userdata
---@return boolean
function ThreadMusicInitialise.Equals(obj) end

---@return number
function ThreadMusicInitialise.GetHashCode() end


