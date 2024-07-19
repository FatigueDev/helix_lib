---@meta

---@class SoundConfig
---@field Soundsets table
---@field defaultBlockSounds BlockSounds
SoundConfig = {}

---@return SoundConfig
function SoundConfig.ctor() end

---@return userdata
function SoundConfig.GetType() end

---@return string
function SoundConfig.ToString() end

---@param obj userdata
---@return boolean
function SoundConfig.Equals(obj) end

---@return number
function SoundConfig.GetHashCode() end


