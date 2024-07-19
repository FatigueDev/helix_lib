---@meta

---@class MusicTrackPart
---@field IsPlaying boolean Am I playing?
---@field MinSuitability number The minimum Suitability of the given track
---@field MaxSuitability number The maximum Suitability of the given track
---@field MinVolumne number The minimum volume of a given track.
---@field MaxVolumne number The maximum volume of a given track.
---@field PosY number the Y position.
---@field Sunlight number
---@field Files AssetLocation[] The files for the part.
---@field Sound ILoadedSound The loaded sound
---@field StartedMs number Start time in Miliseconds
---@field Loading boolean Am I loading?
MusicTrackPart = {}

---@return MusicTrackPart
function MusicTrackPart.ctor() end

---@return boolean
function MusicTrackPart.get_IsPlaying() end

-- Am I applicable?
---@param world IWorldAccessor Important interface to access the game world.
---@param props TrackedPlayerProperties
---@return boolean
function MusicTrackPart.Applicable(world, props) end

-- The current volume of the track.
---@param world IWorldAccessor Important interface to access the game world.
---@param props TrackedPlayerProperties
---@return number
function MusicTrackPart.CurrentVolume(world, props) end

-- The current Suitability of the track.
---@param world IWorldAccessor Important interface to access the game world.
---@param props TrackedPlayerProperties
---@return number
function MusicTrackPart.CurrentSuitability(world, props) end

-- Expands the target files.
---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
function MusicTrackPart.ExpandFiles(assetManager) end

---@return userdata
function MusicTrackPart.GetType() end

---@return string
function MusicTrackPart.ToString() end

---@param obj userdata
---@return boolean
function MusicTrackPart.Equals(obj) end

---@return number
function MusicTrackPart.GetHashCode() end


