---@meta

---@class ServerAPIComponentBase
ServerAPIComponentBase = {}

---@param server ServerMain
---@return ServerAPIComponentBase
function ServerAPIComponentBase.ctor(server) end

---@return userdata
function ServerAPIComponentBase.GetType() end

---@return string
function ServerAPIComponentBase.ToString() end

---@param obj userdata
---@return boolean
function ServerAPIComponentBase.Equals(obj) end

---@return number
function ServerAPIComponentBase.GetHashCode() end


