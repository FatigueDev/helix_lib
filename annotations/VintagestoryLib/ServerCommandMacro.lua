---@meta

---@class ServerCommandMacro
---@field Privilege string
---@field Name string
---@field Commands string
---@field CreatedByPlayerUid string
---@field Syntax string
---@field Description string
ServerCommandMacro = {}

---@return ServerCommandMacro
function ServerCommandMacro.ctor() end

---@return userdata
function ServerCommandMacro.GetType() end

---@return string
function ServerCommandMacro.ToString() end

---@param obj userdata
---@return boolean
function ServerCommandMacro.Equals(obj) end

---@return number
function ServerCommandMacro.GetHashCode() end


