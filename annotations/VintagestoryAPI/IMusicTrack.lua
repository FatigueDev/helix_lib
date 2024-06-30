---@meta

---@class IMusicTrack
---@field Name string The name of the track
---@field IsActive boolean Is the track active?
---@field Priority number The priority of the track. A higher priority will cancel active tracks.
---@field StartPriority number The start priority of the track. A higher priority will leave active tracks playing.
---@field PositionString string
IMusicTrack = {}


---@return string
function IMusicTrack.get_Name() end

---@return boolean
function IMusicTrack.get_IsActive() end

---@return number
function IMusicTrack.get_Priority() end

---@return number
function IMusicTrack.get_StartPriority() end

-- Called before sorting by start priority happens
function IMusicTrack.BeginSort() end

-- Initialization of the Music Track.
---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param musicEngine IMusicEngine
function IMusicTrack.Initialize(assetManager, capi, musicEngine) end

-- Should this current track play?
---@param props TrackedPlayerProperties
---@param conds ClimateCondition
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function IMusicTrack.ShouldPlay(props, conds, pos) end

-- Begin playing the current track.
---@param props TrackedPlayerProperties
function IMusicTrack.BeginPlay(props) end

-- Is it cool for the current track to continue playing?
---@param dt number
---@param props TrackedPlayerProperties
---@return boolean
function IMusicTrack.ContinuePlay(dt, props) end

-- Updates the volume on the current track.
function IMusicTrack.UpdateVolume() end

-- Called when the track to interupted or when Update() returned false. 
-- So called every time the tracked ended or has to end
---@param seconds number
---@param onFadedOut? function
function IMusicTrack.FadeOut(seconds, onFadedOut) end

---@param seconds number
function IMusicTrack.FastForward(seconds) end

---@return string
function IMusicTrack.get_PositionString() end


