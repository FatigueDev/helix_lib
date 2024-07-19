---@meta

---@class GamePaths
---@field AssetsPath string
---@field Binaries string
---@field BinariesMods string
---@field Config string
---@field ModConfig string
---@field Cache string
---@field Saves string
---@field OldSaves string
---@field BackupSaves string
---@field PlayerData string
---@field Backups string
---@field Logs string
---@field Macros string
---@field Screenshots string
---@field Videos string
---@field DataPathMods string
---@field DataPathServerMods string
---@field AllowedNameChars string
---@field DataPath string
---@field CustomLogPath string
---@field DefaultSaveFilenameWithoutExtension string
GamePaths = {}


---@return string
function GamePaths.get_AssetsPath() end

---@return string
function GamePaths.get_Binaries() end

---@return string
function GamePaths.get_BinariesMods() end

---@return string
function GamePaths.get_Config() end

---@return string
function GamePaths.get_ModConfig() end

---@return string
function GamePaths.get_Cache() end

---@return string
function GamePaths.get_Saves() end

---@return string
function GamePaths.get_OldSaves() end

---@return string
function GamePaths.get_BackupSaves() end

---@return string
function GamePaths.get_PlayerData() end

---@return string
function GamePaths.get_Backups() end

---@return string
function GamePaths.get_Logs() end

---@return string
function GamePaths.get_Macros() end

---@return string
function GamePaths.get_Screenshots() end

---@return string
function GamePaths.get_Videos() end

---@return string
function GamePaths.get_DataPathMods() end

---@return string
function GamePaths.get_DataPathServerMods() end

---@param path string
function GamePaths.EnsurePathExists(path) end

function GamePaths.EnsurePathsExist() end

---@param s string
---@return boolean
function GamePaths.IsValidName(s) end

---@param filename string
---@return string
function GamePaths.ReplaceInvalidChars(filename) end

---@return userdata
function GamePaths.GetType() end

---@return string
function GamePaths.ToString() end

---@param obj userdata
---@return boolean
function GamePaths.Equals(obj) end

---@return number
function GamePaths.GetHashCode() end


