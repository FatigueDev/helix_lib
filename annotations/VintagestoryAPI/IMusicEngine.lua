---@meta

---@class IMusicEngine
---@field CurrentTrack IMusicTrack The currently playing track
---@field LastPlayedTrack IMusicTrack The track that played before
---@field MillisecondsSinceLastTrack number The total passed milliseconds since game start at the point where the last track stopped playing
IMusicEngine = {}


-- Loads the sound into memory and plays the track. Slow call. Encapsulate it into ThreadPool.QueueUserWorkItem() to not block the main thread
---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param onLoaded function
---@param volume? number
---@param pitch? number
function IMusicEngine.LoadTrack(location, onLoaded, volume, pitch) end

---@return IMusicTrack
function IMusicEngine.get_CurrentTrack() end

---@return IMusicTrack
function IMusicEngine.get_LastPlayedTrack() end

---@return number
function IMusicEngine.get_MillisecondsSinceLastTrack() end

---@param musicTrack IMusicTrack
function IMusicEngine.StopTrack(musicTrack) end


