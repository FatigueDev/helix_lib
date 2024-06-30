---@meta

---@class ClaimInProgress
---@field IsNew boolean
---@field OriginalClaim LandClaim
---@field Claim LandClaim
---@field Start BlockPos
---@field End BlockPos
ClaimInProgress = {}

---@return ClaimInProgress
function ClaimInProgress.ctor() end

---@return userdata
function ClaimInProgress.GetType() end

---@return string
function ClaimInProgress.ToString() end

---@param obj userdata
---@return boolean
function ClaimInProgress.Equals(obj) end

---@return number
function ClaimInProgress.GetHashCode() end


