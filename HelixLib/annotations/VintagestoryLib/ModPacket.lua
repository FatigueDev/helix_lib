---@meta

---@class ModPacket
---@field id string
---@field version string
ModPacket = {}

---@return ModPacket
function ModPacket.ctor() end

---@return userdata
function ModPacket.GetType() end

---@return string
function ModPacket.ToString() end

---@param obj userdata
---@return boolean
function ModPacket.Equals(obj) end

---@return number
function ModPacket.GetHashCode() end


