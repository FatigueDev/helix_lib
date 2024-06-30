---@meta

---@class IntArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
IntArgParser = {}

---@param argName string
---@param min number
---@param max number
---@param defaultValue number
---@param isMandatoryArg boolean
---@return IntArgParser
function IntArgParser.ctor(argName, min, max, defaultValue, isMandatoryArg) end
---@param argName string
---@param defaultValue number
---@param isMandatoryArg boolean
---@return IntArgParser
function IntArgParser.ctor(argName, defaultValue, isMandatoryArg) end

---@param indent string
---@return string
function IntArgParser.GetSyntaxExplanation(indent) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function IntArgParser.GetValidRange(args) end

---@return userdata
function IntArgParser.GetValue() end

---@param args TextCommandCallingArgs
function IntArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function IntArgParser.TryProcess(args, onReady) end

---@param data userdata
function IntArgParser.SetValue(data) end

---@return string
function IntArgParser.get_LastErrorMessage() end

---@return string
function IntArgParser.get_ArgumentName() end

---@return boolean
function IntArgParser.get_IsMandatoryArg() end

---@return boolean
function IntArgParser.get_IsMissing() end

---@param value boolean
function IntArgParser.set_IsMissing(value) end

---@return number
function IntArgParser.get_ArgCount() end

---@return string
function IntArgParser.GetSyntax() end

---@return string
function IntArgParser.GetSyntaxUnformatted() end

---@return string
function IntArgParser.GetLastError() end

---@return userdata
function IntArgParser.GetType() end

---@return string
function IntArgParser.ToString() end

---@param obj userdata
---@return boolean
function IntArgParser.Equals(obj) end

---@return number
function IntArgParser.GetHashCode() end


