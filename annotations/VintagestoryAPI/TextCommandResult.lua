---@meta

---@class TextCommandResult
---@field Deferred TextCommandResult
---@field DeferredHandler OnCommandDelegate
---@field ErrorCode string
---@field StatusMessage string Will be displayed with a Lang.Get()
---@field Status EnumCommandStatus
---@field Data userdata
---@field MessageParams userdata
TextCommandResult = {}

---@return TextCommandResult
function TextCommandResult.ctor() end

---@param message? string
---@param data? userdata
---@return TextCommandResult
function TextCommandResult.Success(message, data) end

---@param message string
---@param errorCode? string
---@return TextCommandResult
function TextCommandResult.Error(message, errorCode) end

---@return TextCommandResult
function TextCommandResult.get_Deferred() end

---@return OnCommandDelegate
function TextCommandResult.get_DeferredHandler() end

---@return userdata
function TextCommandResult.GetType() end

---@return string
function TextCommandResult.ToString() end

---@param obj userdata
---@return boolean
function TextCommandResult.Equals(obj) end

---@return number
function TextCommandResult.GetHashCode() end


