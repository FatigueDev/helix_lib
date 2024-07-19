---@meta

---@class MpTokenResponse
---@field valid number
---@field reason string
---@field mptokenv2 string
MpTokenResponse = {}

---@return MpTokenResponse
function MpTokenResponse.ctor() end

---@return userdata
function MpTokenResponse.GetType() end

---@return string
function MpTokenResponse.ToString() end

---@param obj userdata
---@return boolean
function MpTokenResponse.Equals(obj) end

---@return number
function MpTokenResponse.GetHashCode() end


