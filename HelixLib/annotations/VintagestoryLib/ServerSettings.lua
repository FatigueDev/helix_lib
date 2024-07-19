---@meta

---@class ServerSettings
---@field WatchModFolder boolean
---@field instance ServerSettings
---@field Language string
ServerSettings = {}

---@return ServerSettings
function ServerSettings.ctor() end

---@return boolean
function ServerSettings.get_WatchModFolder() end

function ServerSettings.Save() end

function ServerSettings.Load() end

---@return userdata
function ServerSettings.GetType() end

---@return string
function ServerSettings.ToString() end

---@param obj userdata
---@return boolean
function ServerSettings.Equals(obj) end

---@return number
function ServerSettings.GetHashCode() end


