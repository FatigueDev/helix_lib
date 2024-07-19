---@meta

---@class ServerConfigPart
---@field WorldSeed string
---@field ServerName string
---@field ServerDescription string
---@field WelcomeMessage string
---@field Password string
---@field ServerLanguage string
---@field AllowPvP boolean
---@field AllowFireSpread boolean
---@field AdvertiseServer boolean
ServerConfigPart = {}

---@return ServerConfigPart
function ServerConfigPart.ctor() end

---@return userdata
function ServerConfigPart.GetType() end

---@return string
function ServerConfigPart.ToString() end

---@param obj userdata
---@return boolean
function ServerConfigPart.Equals(obj) end

---@return number
function ServerConfigPart.GetHashCode() end


