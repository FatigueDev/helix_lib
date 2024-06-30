---@meta

---@class ColorArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
ColorArgParser = {}

---@param argName string
---@param isMandatoryArg boolean
---@return ColorArgParser
function ColorArgParser.ctor(argName, isMandatoryArg) end

---@param indent string
---@return string
function ColorArgParser.GetSyntaxExplanation(indent) end

---@return userdata
function ColorArgParser.GetValue() end

---@param args TextCommandCallingArgs
function ColorArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function ColorArgParser.TryProcess(args, onReady) end

---@param data userdata
function ColorArgParser.SetValue(data) end

---@return string
function ColorArgParser.get_LastErrorMessage() end

---@return string
function ColorArgParser.get_ArgumentName() end

---@return boolean
function ColorArgParser.get_IsMandatoryArg() end

---@return boolean
function ColorArgParser.get_IsMissing() end

---@param value boolean
function ColorArgParser.set_IsMissing(value) end

---@return number
function ColorArgParser.get_ArgCount() end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function ColorArgParser.GetValidRange(args) end

---@return string
function ColorArgParser.GetSyntax() end

---@return string
function ColorArgParser.GetSyntaxUnformatted() end

---@return string
function ColorArgParser.GetLastError() end

---@return userdata
function ColorArgParser.GetType() end

---@return string
function ColorArgParser.ToString() end

---@param obj userdata
---@return boolean
function ColorArgParser.Equals(obj) end

---@return number
function ColorArgParser.GetHashCode() end


