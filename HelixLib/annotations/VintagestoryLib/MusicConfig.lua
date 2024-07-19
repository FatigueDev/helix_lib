---@meta

---@class MusicConfig
---@field Properties MusicConfigProperties
---@field Tracks IMusicTrack[]
MusicConfig = {}

---@return MusicConfig
function MusicConfig.ctor() end

---@return userdata
function MusicConfig.GetType() end

---@return string
function MusicConfig.ToString() end

---@param obj userdata
---@return boolean
function MusicConfig.Equals(obj) end

---@return number
function MusicConfig.GetHashCode() end


