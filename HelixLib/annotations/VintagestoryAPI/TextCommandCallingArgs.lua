---@meta

---@class TextCommandCallingArgs
---@field ArgCount number
---@field Item userdata
---@field LastArg userdata
---@field LanguageCode string
---@field Command IChatCommand
---@field SubCmdCode string
---@field Caller Caller
---@field RawArgs CmdArgs
---@field Parsers table
TextCommandCallingArgs = {}

---@return TextCommandCallingArgs
function TextCommandCallingArgs.ctor() end

---@return number
function TextCommandCallingArgs.get_ArgCount() end

---@param index number
---@return userdata
function TextCommandCallingArgs.get_Item(index) end

---@return userdata
function TextCommandCallingArgs.get_LastArg() end

---@return userdata
function TextCommandCallingArgs.GetType() end

---@return string
function TextCommandCallingArgs.ToString() end

---@param obj userdata
---@return boolean
function TextCommandCallingArgs.Equals(obj) end

---@return number
function TextCommandCallingArgs.GetHashCode() end


