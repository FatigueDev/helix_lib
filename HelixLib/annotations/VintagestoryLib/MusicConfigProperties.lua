---@meta

---@class MusicConfigProperties
---@field MinDelay number
---@field MaxDelay number
MusicConfigProperties = {}

---@return MusicConfigProperties
function MusicConfigProperties.ctor() end

---@return userdata
function MusicConfigProperties.GetType() end

---@return string
function MusicConfigProperties.ToString() end

---@param obj userdata
---@return boolean
function MusicConfigProperties.Equals(obj) end

---@return number
function MusicConfigProperties.GetHashCode() end


