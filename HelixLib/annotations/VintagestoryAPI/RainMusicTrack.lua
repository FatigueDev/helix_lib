---@meta

-- Creates a track for rain related music.  [Not yet implemented]
---@class RainMusicTrack:  IMusicTrack
---@field IsActive boolean
---@field Name string
---@field Priority number
---@field PositionString string
---@field StartPriority number
RainMusicTrack = {}

---@return RainMusicTrack
function RainMusicTrack.ctor() end

---@return boolean
function RainMusicTrack.get_IsActive() end

---@return string
function RainMusicTrack.get_Name() end

---@return number
function RainMusicTrack.get_Priority() end

---@return string
function RainMusicTrack.get_PositionString() end

---@return number
function RainMusicTrack.get_StartPriority() end

---@param seconds number
---@param onFadedOut function
function RainMusicTrack.FadeOut(seconds, onFadedOut) end

---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param musicEngine IMusicEngine
function RainMusicTrack.Initialize(assetManager, capi, musicEngine) end

---@param props TrackedPlayerProperties
---@param conds ClimateCondition
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function RainMusicTrack.ShouldPlay(props, conds, pos) end

---@param props TrackedPlayerProperties
function RainMusicTrack.BeginPlay(props) end

---@param dt number
---@param props TrackedPlayerProperties
---@return boolean
function RainMusicTrack.ContinuePlay(dt, props) end

function RainMusicTrack.Stop() end

function RainMusicTrack.UpdateVolume() end

---@param seconds number
---@param onFadedOut? function
function RainMusicTrack.FadeOut(seconds, onFadedOut) end

---@param seconds number
function RainMusicTrack.FastForward(seconds) end

function RainMusicTrack.BeginSort() end

---@return userdata
function RainMusicTrack.GetType() end

---@return string
function RainMusicTrack.ToString() end

---@param obj userdata
---@return boolean
function RainMusicTrack.Equals(obj) end

---@return number
function RainMusicTrack.GetHashCode() end


