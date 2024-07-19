---@meta

---@class EventMusicTrack: SurfaceMusicTrack, IMusicTrack, SurfaceMusicTrack
---@field Priority number The current song's priority. If higher than 1, will stop other tracks and start this one
---@field StartPriorityRnd NatFloat The songs starting priority. If higher than 1, then it will be started first. But does not interrupt already running tracks. When reading a songs start priority the maximum of start priority and priority is used
---@field StartPriority number
---@field IsActive boolean Is the current song actively playing or is it loading? (False if neither action.
---@field Name string The name of the track.
---@field MusicFrequency number Gets the current Music Frequency setting.
---@field PositionString string
---@field SchematicCode string
---@field Location AssetLocation The location of the track.
---@field OnPlayList string The current play style of the track
---@field OnPlayLists string
---@field MinSunlight number Minimum sunlight to play the track.
---@field MinHour number Earliest to play the track.
---@field MaxHour number Latest to play the track.
---@field Chance number
---@field MaxTemperature number
---@field MinRainFall number
---@field MinSeason number
---@field MaxSeason number
---@field MinLatitude number
---@field MaxLatitude number
---@field DistanceToSpawnPoint number
---@field Sound ILoadedSound Get the current sound file.
EventMusicTrack = {}

---@return EventMusicTrack
function EventMusicTrack.ctor() end

---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param musicEngine IMusicEngine
function EventMusicTrack.Initialize(assetManager, capi, musicEngine) end

---@param props TrackedPlayerProperties
---@param conds ClimateCondition
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function EventMusicTrack.ShouldPlay(props, conds, pos) end

---@return number
function EventMusicTrack.get_Priority() end

---@param value number
function EventMusicTrack.set_Priority(value) end

---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function EventMusicTrack.get_StartPriorityRnd() end

---@param value NatFloat A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function EventMusicTrack.set_StartPriorityRnd(value) end

---@return number
function EventMusicTrack.get_StartPriority() end

---@param value number
function EventMusicTrack.set_StartPriority(value) end

---@return boolean
function EventMusicTrack.get_IsActive() end

---@return string
function EventMusicTrack.get_Name() end

---@return number
function EventMusicTrack.get_MusicFrequency() end

function EventMusicTrack.BeginSort() end

-- Begins playing the Music track.
---@param props TrackedPlayerProperties
function EventMusicTrack.BeginPlay(props) end

-- Is it cool for the current track to continue playing?
---@param dt number
---@param props TrackedPlayerProperties
---@return boolean
function EventMusicTrack.ContinuePlay(dt, props) end

-- Fades out the current track.  
---@param seconds number
---@param onFadedOut? function
function EventMusicTrack.FadeOut(seconds, onFadedOut) end

-- Sets the cooldown of the current track.
---@param multiplier number
function EventMusicTrack.SetCooldown(multiplier) end

-- Updates the volume of the current track provided Sound is not null. (effectively calls Sound.SetVolume)
function EventMusicTrack.UpdateVolume() end

---@param seconds number
function EventMusicTrack.FastForward(seconds) end

---@return string
function EventMusicTrack.get_PositionString() end

---@return userdata
function EventMusicTrack.GetType() end

---@return string
function EventMusicTrack.ToString() end

---@param obj userdata
---@return boolean
function EventMusicTrack.Equals(obj) end

---@return number
function EventMusicTrack.GetHashCode() end


