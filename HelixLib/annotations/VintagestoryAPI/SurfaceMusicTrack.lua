---@meta

-- Adds a basic music track.
---@class SurfaceMusicTrack:  IMusicTrack
---@field Priority number The current song's priority. If higher than 1, will stop other tracks and start this one
---@field StartPriorityRnd NatFloat The songs starting priority. If higher than 1, then it will be started first. But does not interrupt already running tracks. When reading a songs start priority the maximum of start priority and priority is used
---@field StartPriority number
---@field IsActive boolean Is the current song actively playing or is it loading? (False if neither action.
---@field Name string The name of the track.
---@field MusicFrequency number Gets the current Music Frequency setting.
---@field PositionString string
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
---@field ShouldPlayMusic boolean
---@field globalCooldownUntilMs number Global cooldown until next track
---@field tracksCooldownUntilMs table Cooldown for each track by name.
SurfaceMusicTrack = {}

---@return SurfaceMusicTrack
function SurfaceMusicTrack.ctor() end

---@return number
function SurfaceMusicTrack.get_Priority() end

---@param value number
function SurfaceMusicTrack.set_Priority(value) end

---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function SurfaceMusicTrack.get_StartPriorityRnd() end

---@param value NatFloat A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function SurfaceMusicTrack.set_StartPriorityRnd(value) end

---@return number
function SurfaceMusicTrack.get_StartPriority() end

---@param value number
function SurfaceMusicTrack.set_StartPriority(value) end

---@return boolean
function SurfaceMusicTrack.get_IsActive() end

---@return string
function SurfaceMusicTrack.get_Name() end

---@return number
function SurfaceMusicTrack.get_MusicFrequency() end

-- Initialize the track.
---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param musicEngine IMusicEngine
function SurfaceMusicTrack.Initialize(assetManager, capi, musicEngine) end

function SurfaceMusicTrack.BeginSort() end

-- Should this current track play?
---@param props TrackedPlayerProperties
---@param conds ClimateCondition
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function SurfaceMusicTrack.ShouldPlay(props, conds, pos) end

-- Begins playing the Music track.
---@param props TrackedPlayerProperties
function SurfaceMusicTrack.BeginPlay(props) end

-- Is it cool for the current track to continue playing?
---@param dt number
---@param props TrackedPlayerProperties
---@return boolean
function SurfaceMusicTrack.ContinuePlay(dt, props) end

-- Fades out the current track.  
---@param seconds number
---@param onFadedOut? function
function SurfaceMusicTrack.FadeOut(seconds, onFadedOut) end

-- Sets the cooldown of the current track.
---@param multiplier number
function SurfaceMusicTrack.SetCooldown(multiplier) end

-- Updates the volume of the current track provided Sound is not null. (effectively calls Sound.SetVolume)
function SurfaceMusicTrack.UpdateVolume() end

---@param seconds number
function SurfaceMusicTrack.FastForward(seconds) end

---@return string
function SurfaceMusicTrack.get_PositionString() end

---@return userdata
function SurfaceMusicTrack.GetType() end

---@return string
function SurfaceMusicTrack.ToString() end

---@param obj userdata
---@return boolean
function SurfaceMusicTrack.Equals(obj) end

---@return number
function SurfaceMusicTrack.GetHashCode() end


