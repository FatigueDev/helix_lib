---@meta

---@class CmdInfo
CmdInfo = {}

---@param server ServerMain
---@return CmdInfo
function CmdInfo.ctor(server) end

---@return userdata
function CmdInfo.GetType() end

---@return string
function CmdInfo.ToString() end

---@param obj userdata
---@return boolean
function CmdInfo.Equals(obj) end

---@return number
function CmdInfo.GetHashCode() end


