---@meta

---@class StringArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
StringArgParser = {}

---@param argName string
---@param isMandatoryArg boolean
---@return StringArgParser
function StringArgParser.ctor(argName, isMandatoryArg) end

---@return userdata
function StringArgParser.GetValue() end

---@param data userdata
function StringArgParser.SetValue(data) end

---@param args TextCommandCallingArgs
function StringArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function StringArgParser.TryProcess(args, onReady) end

---@return string
function StringArgParser.get_LastErrorMessage() end

---@return string
function StringArgParser.get_ArgumentName() end

---@return boolean
function StringArgParser.get_IsMandatoryArg() end

---@return boolean
function StringArgParser.get_IsMissing() end

---@param value boolean
function StringArgParser.set_IsMissing(value) end

---@return number
function StringArgParser.get_ArgCount() end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function StringArgParser.GetValidRange(args) end

---@return string
function StringArgParser.GetSyntax() end

---@return string
function StringArgParser.GetSyntaxUnformatted() end

---@param indent string
---@return string
function StringArgParser.GetSyntaxExplanation(indent) end

---@return string
function StringArgParser.GetLastError() end

---@return userdata
function StringArgParser.GetType() end

---@return string
function StringArgParser.ToString() end

---@param obj userdata
---@return boolean
function StringArgParser.Equals(obj) end

---@return number
function StringArgParser.GetHashCode() end


