---@meta

---@class ICommandArgumentParser
---@field ArgCount number Return -1 to ignore arg count checking
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
ICommandArgumentParser = {}


---@return number
function ICommandArgumentParser.get_ArgCount() end

---@return string
function ICommandArgumentParser.get_LastErrorMessage() end

---@return string
function ICommandArgumentParser.get_ArgumentName() end

---@return boolean
function ICommandArgumentParser.get_IsMandatoryArg() end

---@return boolean
function ICommandArgumentParser.get_IsMissing() end

---@param value boolean
function ICommandArgumentParser.set_IsMissing(value) end

---@param args TextCommandCallingArgs
function ICommandArgumentParser.PreProcess(args) end

-- Parse the args.
---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function ICommandArgumentParser.TryProcess(args, onReady) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function ICommandArgumentParser.GetValidRange(args) end

---@return userdata
function ICommandArgumentParser.GetValue() end

---@return string
function ICommandArgumentParser.GetSyntax() end

---@param indent string
---@return string
function ICommandArgumentParser.GetSyntaxExplanation(indent) end

-- Used by the async system
---@param data userdata
function ICommandArgumentParser.SetValue(data) end


