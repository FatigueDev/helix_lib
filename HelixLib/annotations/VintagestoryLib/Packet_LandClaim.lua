---@meta

---@class Packet_LandClaim
---@field Data number
---@field DataFieldID number
Packet_LandClaim = {}

---@return Packet_LandClaim
function Packet_LandClaim.ctor() end

---@param value number
function Packet_LandClaim.SetData(value) end

---@return userdata
function Packet_LandClaim.GetType() end

---@return string
function Packet_LandClaim.ToString() end

---@param obj userdata
---@return boolean
function Packet_LandClaim.Equals(obj) end

---@return number
function Packet_LandClaim.GetHashCode() end


