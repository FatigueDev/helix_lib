---@meta

---@class DoubleArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
DoubleArgParser = {}

---@param argName string
---@param min number
---@param max number
---@param isMandatoryArg boolean
---@return DoubleArgParser
function DoubleArgParser.ctor(argName, min, max, isMandatoryArg) end
---@param argName string
---@param defaultvalue number
---@param isMandatoryArg boolean
---@return DoubleArgParser
function DoubleArgParser.ctor(argName, defaultvalue, isMandatoryArg) end

---@param indent string
---@return string
function DoubleArgParser.GetSyntaxExplanation(indent) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function DoubleArgParser.GetValidRange(args) end

---@return userdata
function DoubleArgParser.GetValue() end

---@param args TextCommandCallingArgs
function DoubleArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function DoubleArgParser.TryProcess(args, onReady) end

---@param data userdata
function DoubleArgParser.SetValue(data) end

---@return string
function DoubleArgParser.get_LastErrorMessage() end

---@return string
function DoubleArgParser.get_ArgumentName() end

---@return boolean
function DoubleArgParser.get_IsMandatoryArg() end

---@return boolean
function DoubleArgParser.get_IsMissing() end

---@param value boolean
function DoubleArgParser.set_IsMissing(value) end

---@return number
function DoubleArgParser.get_ArgCount() end

---@return string
function DoubleArgParser.GetSyntax() end

---@return string
function DoubleArgParser.GetSyntaxUnformatted() end

---@return string
function DoubleArgParser.GetLastError() end

---@return userdata
function DoubleArgParser.GetType() end

---@return string
function DoubleArgParser.ToString() end

---@param obj userdata
---@return boolean
function DoubleArgParser.Equals(obj) end

---@return number
function DoubleArgParser.GetHashCode() end


