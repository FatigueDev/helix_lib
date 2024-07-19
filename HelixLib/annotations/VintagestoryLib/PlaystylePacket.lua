---@meta

---@class PlaystylePacket
---@field id string
---@field langCode string
PlaystylePacket = {}

---@return PlaystylePacket
function PlaystylePacket.ctor() end

---@return userdata
function PlaystylePacket.GetType() end

---@return string
function PlaystylePacket.ToString() end

---@param obj userdata
---@return boolean
function PlaystylePacket.Equals(obj) end

---@return number
function PlaystylePacket.GetHashCode() end


