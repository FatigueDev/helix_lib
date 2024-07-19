---@meta

---@class ServerListPlaystyle
---@field id string
---@field langCode string
ServerListPlaystyle = {}

---@return ServerListPlaystyle
function ServerListPlaystyle.ctor() end

---@return userdata
function ServerListPlaystyle.GetType() end

---@return string
function ServerListPlaystyle.ToString() end

---@param obj userdata
---@return boolean
function ServerListPlaystyle.Equals(obj) end

---@return number
function ServerListPlaystyle.GetHashCode() end


