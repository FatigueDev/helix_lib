---@meta

---@class CmdLand
---@field ClaimInProgressHandlerDelegate nil
CmdLand = {}

---@param server ServerMain
---@return CmdLand
function CmdLand.ctor(server) end

---@param server ServerMain
---@param playerUid string
---@return table
function CmdLand.GetPlayerClaims(server, playerUid) end

---@return userdata
function CmdLand.GetType() end

---@return string
function CmdLand.ToString() end

---@param obj userdata
---@return boolean
function CmdLand.Equals(obj) end

---@return number
function CmdLand.GetHashCode() end


