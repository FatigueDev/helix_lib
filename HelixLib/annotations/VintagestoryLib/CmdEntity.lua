---@meta

---@class CmdEntity
CmdEntity = {}

---@param server ServerMain
---@return CmdEntity
function CmdEntity.ctor(server) end

---@param args TextCommandCallingArgs
---@param onEntity EntityEachDelegate
---@param index? number
---@return TextCommandResult
function CmdEntity.Each(args, onEntity, index) end

---@return userdata
function CmdEntity.GetType() end

---@return string
function CmdEntity.ToString() end

---@param obj userdata
---@return boolean
function CmdEntity.Equals(obj) end

---@return number
function CmdEntity.GetHashCode() end


