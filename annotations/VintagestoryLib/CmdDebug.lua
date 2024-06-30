---@meta

---@class CmdDebug
CmdDebug = {}

---@param server ServerMain
---@return CmdDebug
function CmdDebug.ctor(server) end

---@return userdata
function CmdDebug.GetType() end

---@return string
function CmdDebug.ToString() end

---@param obj userdata
---@return boolean
function CmdDebug.Equals(obj) end

---@return number
function CmdDebug.GetHashCode() end


