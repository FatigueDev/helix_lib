---@meta

---@class Packet_LandClaims
---@field Allclaims Packet_LandClaim[]
---@field AllclaimsCount number
---@field AllclaimsLength number
---@field Addclaims Packet_LandClaim[]
---@field AddclaimsCount number
---@field AddclaimsLength number
---@field AllclaimsFieldID number
---@field AddclaimsFieldID number
Packet_LandClaims = {}

---@return Packet_LandClaims
function Packet_LandClaims.ctor() end

---@return Packet_LandClaim[]
function Packet_LandClaims.GetAllclaims() end

---@param value Packet_LandClaim[]
---@param count number
---@param length number
function Packet_LandClaims.SetAllclaims(value, count, length) end

---@param value Packet_LandClaim[]
function Packet_LandClaims.SetAllclaims(value) end

---@return number
function Packet_LandClaims.GetAllclaimsCount() end

---@param value Packet_LandClaim
function Packet_LandClaims.AllclaimsAdd(value) end

---@return Packet_LandClaim[]
function Packet_LandClaims.GetAddclaims() end

---@param value Packet_LandClaim[]
---@param count number
---@param length number
function Packet_LandClaims.SetAddclaims(value, count, length) end

---@param value Packet_LandClaim[]
function Packet_LandClaims.SetAddclaims(value) end

---@return number
function Packet_LandClaims.GetAddclaimsCount() end

---@param value Packet_LandClaim
function Packet_LandClaims.AddclaimsAdd(value) end

---@return userdata
function Packet_LandClaims.GetType() end

---@return string
function Packet_LandClaims.ToString() end

---@param obj userdata
---@return boolean
function Packet_LandClaims.Equals(obj) end

---@return number
function Packet_LandClaims.GetHashCode() end


