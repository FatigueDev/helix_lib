---@meta

---@class SlidingPitchSound
---@field TalkType EnumTalkType
---@field sound ILoadedSound
---@field startPitch number
---@field endPitch number
---@field length number
---@field startMs number
---@field StartVolumne number
---@field EndVolumne number
---@field Vibrato boolean
SlidingPitchSound = {}

---@return SlidingPitchSound
function SlidingPitchSound.ctor() end

---@return userdata
function SlidingPitchSound.GetType() end

---@return string
function SlidingPitchSound.ToString() end

---@param obj userdata
---@return boolean
function SlidingPitchSound.Equals(obj) end

---@return number
function SlidingPitchSound.GetHashCode() end


