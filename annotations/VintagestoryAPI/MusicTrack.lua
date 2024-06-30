---@meta

-- Adds a basic music track.
---@class MusicTrack:  IMusicTrack
---@field IsActive boolean Is the current song actively playing or is it loading? (False if neither action.
---@field Priority number The current song's priority.
---@field Name string The name of the track.
---@field PositionString string
---@field StartPriority number
---@field Location AssetLocation
---@field loading boolean Is it loading?
---@field ManualDispose boolean
---@field Sound ILoadedSound Get the current sound file.
MusicTrack = {}

---@return MusicTrack
function MusicTrack.ctor() end

---@return boolean
function MusicTrack.get_IsActive() end

---@return number
function MusicTrack.get_Priority() end

---@param value number
function MusicTrack.set_Priority(value) end

---@return string
function MusicTrack.get_Name() end

-- Stops the track immediately
function MusicTrack.Stop() end

-- Initialize the track.
---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param musicEngine IMusicEngine
function MusicTrack.Initialize(assetManager, capi, musicEngine) end

-- Should this current track play?
---@param props TrackedPlayerProperties
---@param conds ClimateCondition
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function MusicTrack.ShouldPlay(props, conds, pos) end

-- Begins playing the Music track.
---@param props TrackedPlayerProperties
function MusicTrack.BeginPlay(props) end

-- Is it cool for the current track to continue playing?
---@param dt number
---@param props TrackedPlayerProperties
---@return boolean
function MusicTrack.ContinuePlay(dt, props) end

-- Fades out the current track.  
---@param seconds number
---@param onFadedOut? function
function MusicTrack.FadeOut(seconds, onFadedOut) end

-- Updates the volume of the current track provided Sound is not null. (effectively calls Sound.SetVolume)
function MusicTrack.UpdateVolume() end

---@param seconds number
function MusicTrack.FastForward(seconds) end

function MusicTrack.BeginSort() end

---@return string
function MusicTrack.get_PositionString() end

---@return number
function MusicTrack.get_StartPriority() end

---@return userdata
function MusicTrack.GetType() end

---@return string
function MusicTrack.ToString() end

---@param obj userdata
---@return boolean
function MusicTrack.Equals(obj) end

---@return number
function MusicTrack.GetHashCode() end


