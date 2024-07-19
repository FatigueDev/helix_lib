---@meta

---@class DirectionArgParser`1: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
DirectionArgParser`1 = {}

---@param argName string
---@param isMandatoryArg boolean
---@return DirectionArgParser`1
function DirectionArgParser`1.ctor(argName, isMandatoryArg) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function DirectionArgParser`1.GetValidRange(args) end

---@return userdata
function DirectionArgParser`1.GetValue() end

---@param args TextCommandCallingArgs
function DirectionArgParser`1.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function DirectionArgParser`1.TryProcess(args, onReady) end

---@param data userdata
function DirectionArgParser`1.SetValue(data) end

---@return string
function DirectionArgParser`1.get_LastErrorMessage() end

---@return string
function DirectionArgParser`1.get_ArgumentName() end

---@return boolean
function DirectionArgParser`1.get_IsMandatoryArg() end

---@return boolean
function DirectionArgParser`1.get_IsMissing() end

---@param value boolean
function DirectionArgParser`1.set_IsMissing(value) end

---@return number
function DirectionArgParser`1.get_ArgCount() end

---@return string
function DirectionArgParser`1.GetSyntax() end

---@return string
function DirectionArgParser`1.GetSyntaxUnformatted() end

---@param indent string
---@return string
function DirectionArgParser`1.GetSyntaxExplanation(indent) end

---@return string
function DirectionArgParser`1.GetLastError() end

---@return userdata
function DirectionArgParser`1.GetType() end

---@return string
function DirectionArgParser`1.ToString() end

---@param obj userdata
---@return boolean
function DirectionArgParser`1.Equals(obj) end

---@return number
function DirectionArgParser`1.GetHashCode() end


