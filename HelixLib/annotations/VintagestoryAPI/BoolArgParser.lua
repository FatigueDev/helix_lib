---@meta

---@class BoolArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
BoolArgParser = {}

---@param argName string
---@param trueAlias string
---@param isMandatoryArg boolean
---@return BoolArgParser
function BoolArgParser.ctor(argName, trueAlias, isMandatoryArg) end

---@param indent string
---@return string
function BoolArgParser.GetSyntaxExplanation(indent) end

---@return userdata
function BoolArgParser.GetValue() end

---@param data userdata
function BoolArgParser.SetValue(data) end

---@param args TextCommandCallingArgs
function BoolArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function BoolArgParser.TryProcess(args, onReady) end

---@return string
function BoolArgParser.get_LastErrorMessage() end

---@return string
function BoolArgParser.get_ArgumentName() end

---@return boolean
function BoolArgParser.get_IsMandatoryArg() end

---@return boolean
function BoolArgParser.get_IsMissing() end

---@param value boolean
function BoolArgParser.set_IsMissing(value) end

---@return number
function BoolArgParser.get_ArgCount() end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function BoolArgParser.GetValidRange(args) end

---@return string
function BoolArgParser.GetSyntax() end

---@return string
function BoolArgParser.GetSyntaxUnformatted() end

---@return string
function BoolArgParser.GetLastError() end

---@return userdata
function BoolArgParser.GetType() end

---@return string
function BoolArgParser.ToString() end

---@param obj userdata
---@return boolean
function BoolArgParser.Equals(obj) end

---@return number
function BoolArgParser.GetHashCode() end


