---@meta

-- ChatCommand Abbreviations
---@class IChatCommandExt
IChatCommandExt = {}


-- Alias of WithDescription()
---@param cmd IChatCommand
---@param description string
---@return IChatCommand
function IChatCommandExt.WithDesc(cmd, description) end

-- Alias for BeginSubCommand
---@param cmd IChatCommand
---@param name string
---@return IChatCommand
function IChatCommandExt.BeginSub(cmd, name) end

-- Alias for BeginSubCommands
---@param cmd IChatCommand
---@param name string
---@return IChatCommand
function IChatCommandExt.BeginSubs(cmd, name) end

-- Alias for EndSubCommand
---@param cmd IChatCommand
---@return IChatCommand
function IChatCommandExt.EndSub(cmd) end

---@return userdata
function IChatCommandExt.GetType() end

---@return string
function IChatCommandExt.ToString() end

---@param obj userdata
---@return boolean
function IChatCommandExt.Equals(obj) end

---@return number
function IChatCommandExt.GetHashCode() end


