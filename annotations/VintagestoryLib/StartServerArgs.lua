---@meta

---@class StartServerArgs
---@field Seed string
---@field SaveFileLocation string
---@field WorldName string
---@field AllowCreativeMode boolean
---@field PlayStyle string
---@field PlayStyleLangCode string
---@field WorldType string
---@field WorldConfiguration JsonObject
---@field MapSizeY Nullable`1
---@field Language string
---@field IsNew boolean
StartServerArgs = {}

---@return StartServerArgs
function StartServerArgs.ctor() end

---@return StartServerArgs
function StartServerArgs.Clone() end

---@return userdata
function StartServerArgs.GetType() end

---@return string
function StartServerArgs.ToString() end

---@param obj userdata
---@return boolean
function StartServerArgs.Equals(obj) end

---@return number
function StartServerArgs.GetHashCode() end


