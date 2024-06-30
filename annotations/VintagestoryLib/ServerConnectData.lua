---@meta

---@class ServerConnectData
---@field PlayerUID string
---@field PlayerName string
---@field MpToken string
---@field HostRaw string
---@field Host string
---@field Port number
---@field ServerPassword string
---@field IsServePasswordProtected boolean
---@field ErrorMessage string
---@field Connected boolean
ServerConnectData = {}

---@return ServerConnectData
function ServerConnectData.ctor() end

---@return string
function ServerConnectData.get_PlayerUID() end

---@return string
function ServerConnectData.get_PlayerName() end

---@return string
function ServerConnectData.get_MpToken() end

---@param host string
---@return ServerConnectData
function ServerConnectData.FromHost(host) end

---@return userdata
function ServerConnectData.GetType() end

---@return string
function ServerConnectData.ToString() end

---@param obj userdata
---@return boolean
function ServerConnectData.Equals(obj) end

---@return number
function ServerConnectData.GetHashCode() end


