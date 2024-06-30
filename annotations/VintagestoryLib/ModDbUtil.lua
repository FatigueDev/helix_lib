---@meta

---@class ModDbUtil
---@field IsLoading boolean
---@field selfGameVersionId number
---@field sameMinorVersionIds number
ModDbUtil = {}

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param modDbUrl string
---@param installPath string
---@return ModDbUtil
function ModDbUtil.ctor(api, modDbUrl, installPath) end

---@return boolean
function ModDbUtil.get_IsLoading() end

---@return string
function ModDbUtil.preConsoleCommand() end

---@param modid string
---@param forGameVersion string
---@param onProgressUpdate function
function ModDbUtil.onInstallCommand(modid, forGameVersion, onProgressUpdate) end

---@param modid string
---@param onProgressUpdate function
function ModDbUtil.onRemoveCommand(modid, onProgressUpdate) end

---@param onProgressUpdate function
function ModDbUtil.onListCommand(onProgressUpdate) end

---@param version string
---@param modid string
---@param onProgressUpdate function
function ModDbUtil.onSearchforCommand(version, modid, onProgressUpdate) end

---@param version string
---@param modid string
---@param onProgressUpdate function
function ModDbUtil.onSearchforAndCompatibleCommand(version, modid, onProgressUpdate) end

---@param modid string
---@param onProgressUpdate function
function ModDbUtil.onSearchCommand(modid, onProgressUpdate) end

---@param modid string
---@param onProgressUpdate function
function ModDbUtil.onSearchCompatibleCommand(modid, onProgressUpdate) end

---@param modid string
---@param forGameVersion string
---@param onDone ModInstallProgressUpdate
---@param deletedOutdated boolean
function ModDbUtil.SearchAndInstall(modid, forGameVersion, onDone, deletedOutdated) end

---@param stext string
---@param onDone function
---@param gameversionIds number
---@param mv? string
---@param sortBy? string
---@param limit? number
function ModDbUtil.Search(stext, onDone, gameversionIds, mv, sortBy, limit) end

---@param text string
---@param errorText string
---@return T
function ModDbUtil.parseResponse(text, errorText) end

---@return userdata
function ModDbUtil.GetType() end

---@return string
function ModDbUtil.ToString() end

---@param obj userdata
---@return boolean
function ModDbUtil.Equals(obj) end

---@return number
function ModDbUtil.GetHashCode() end


