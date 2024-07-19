---@meta

---@class SessionManager
SessionManager = {}

---@return SessionManager
function SessionManager.ctor() end

---@return boolean
function SessionManager.IsCachedSessionKeyValid() end

---@param OnValidationComplete function
function SessionManager.ValidateSessionKeyWithServer(OnValidationComplete) end

---@param OnValidationComplete function
---@param serverlogintoken string
function SessionManager.RequestMpToken(OnValidationComplete, serverlogintoken) end

---@param OnGetComplete function
function SessionManager.GetNewestVersion(OnGetComplete) end

---@param playerUid string
---@param OnGetComplete function
function SessionManager.GetPlayerSkin(playerUid, OnGetComplete) end

---@param email string
---@param password string
---@param loginmailedcode string
---@param OnLoginComplete function
function SessionManager.DoLogin(email, password, loginmailedcode, OnLoginComplete) end

function SessionManager.DoLogout() end

---@return userdata
function SessionManager.GetType() end

---@return string
function SessionManager.ToString() end

---@param obj userdata
---@return boolean
function SessionManager.Equals(obj) end

---@return number
function SessionManager.GetHashCode() end


