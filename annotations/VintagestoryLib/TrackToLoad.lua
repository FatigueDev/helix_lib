---@meta

---@class TrackToLoad
---@field SoundType EnumSoundType
---@field ByTrack IMusicTrack
---@field Location AssetLocation
---@field volume number
---@field pitch number
---@field OnLoaded function
TrackToLoad = {}

---@return TrackToLoad
function TrackToLoad.ctor() end

---@return EnumSoundType
function TrackToLoad.get_SoundType() end

---@param value EnumSoundType
function TrackToLoad.set_SoundType(value) end

---@return userdata
function TrackToLoad.GetType() end

---@return string
function TrackToLoad.ToString() end

---@param obj userdata
---@return boolean
function TrackToLoad.Equals(obj) end

---@return number
function TrackToLoad.GetHashCode() end


