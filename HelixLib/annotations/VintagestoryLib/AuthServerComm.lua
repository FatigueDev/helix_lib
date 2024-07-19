---@meta

---@class AuthServerComm
AuthServerComm = {}

---@return AuthServerComm
function AuthServerComm.ctor() end

---@param mptokenv2 string
---@param playerName string
---@param playerUID string
---@param serverLoginToken string
---@param OnValidationComplete ValidationCompleteDelegate
function AuthServerComm.ValidatePlayerWithServer(mptokenv2, playerName, playerUID, serverLoginToken, OnValidationComplete) end

---@param playername string
---@param OnResolveComplete function
function AuthServerComm.ResolvePlayerName(playername, OnResolveComplete) end

---@param playeruid string
---@param OnResolveComplete function
function AuthServerComm.ResolvePlayerUid(playeruid, OnResolveComplete) end

---@return userdata
function AuthServerComm.GetType() end

---@return string
function AuthServerComm.ToString() end

---@param obj userdata
---@return boolean
function AuthServerComm.Equals(obj) end

---@return number
function AuthServerComm.GetHashCode() end


