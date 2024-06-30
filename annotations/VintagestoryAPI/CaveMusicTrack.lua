---@meta

-- Represent a dynamically composed track made out of individual small pieces of music mixed together defined by specific rules Requirements: - Start/Stop Multiple Trackpieces - Set their volumne dynamically - Decide which Trackpieces to play - Allow individual rules per Trackpiece Specific examples: - Play Thunder ambient only if thunderlevel above 10   - Thunder ambient volume based on thunderlevel (between 0.3 and 1.1?) - Play Aquatic Drone only when y below 60 - Play Deep Drone only when y below 50
---@class CaveMusicTrack:  IMusicTrack
---@field Name string The name of the music track.
---@field IsActive boolean Is the track active?
---@field PositionString string
---@field StartPriority number
---@field ShouldPlayCaveMusic boolean
CaveMusicTrack = {}

---@return CaveMusicTrack
function CaveMusicTrack.ctor() end

---@return string
function CaveMusicTrack.get_Name() end

---@return boolean
function CaveMusicTrack.get_IsActive() end

---@return string
function CaveMusicTrack.get_PositionString() end

---@return number
function CaveMusicTrack.get_StartPriority() end

-- Initializes the music track
---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param musicEngine IMusicEngine
function CaveMusicTrack.Initialize(assetManager, capi, musicEngine) end

-- Should the game play this track?
---@param props TrackedPlayerProperties
---@param conds ClimateCondition
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function CaveMusicTrack.ShouldPlay(props, conds, pos) end

-- Starts playing the track.
---@param props TrackedPlayerProperties
function CaveMusicTrack.BeginPlay(props) end

-- Do we continue playing this track?
---@param dt number
---@param props TrackedPlayerProperties
---@return boolean
function CaveMusicTrack.ContinuePlay(dt, props) end

-- Fade out the track to end.
---@param seconds number
---@param onFadedOut? function
function CaveMusicTrack.FadeOut(seconds, onFadedOut) end

-- Updates the volume of the track.
function CaveMusicTrack.UpdateVolume() end

---@param seconds number
function CaveMusicTrack.FastForward(seconds) end

function CaveMusicTrack.BeginSort() end

---@return userdata
function CaveMusicTrack.GetType() end

---@return string
function CaveMusicTrack.ToString() end

---@param obj userdata
---@return boolean
function CaveMusicTrack.Equals(obj) end

---@return number
function CaveMusicTrack.GetHashCode() end


