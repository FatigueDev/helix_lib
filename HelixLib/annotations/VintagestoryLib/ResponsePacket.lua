---@meta

---@class ResponsePacket
---@field status string
---@field data ServerListEntry[]
ResponsePacket = {}

---@return ResponsePacket
function ResponsePacket.ctor() end

---@return userdata
function ResponsePacket.GetType() end

---@return string
function ResponsePacket.ToString() end

---@param obj userdata
---@return boolean
function ResponsePacket.Equals(obj) end

---@return number
function ResponsePacket.GetHashCode() end


