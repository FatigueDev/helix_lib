---@meta

---@class LongArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
LongArgParser = {}

---@param argName string
---@param min number
---@param max number
---@param defaultValue number
---@param isMandatoryArg boolean
---@return LongArgParser
function LongArgParser.ctor(argName, min, max, defaultValue, isMandatoryArg) end
---@param argName string
---@param defaultValue number
---@param isMandatoryArg boolean
---@return LongArgParser
function LongArgParser.ctor(argName, defaultValue, isMandatoryArg) end

---@param indent string
---@return string
function LongArgParser.GetSyntaxExplanation(indent) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function LongArgParser.GetValidRange(args) end

---@return userdata
function LongArgParser.GetValue() end

---@param args TextCommandCallingArgs
function LongArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function LongArgParser.TryProcess(args, onReady) end

---@param data userdata
function LongArgParser.SetValue(data) end

---@return string
function LongArgParser.get_LastErrorMessage() end

---@return string
function LongArgParser.get_ArgumentName() end

---@return boolean
function LongArgParser.get_IsMandatoryArg() end

---@return boolean
function LongArgParser.get_IsMissing() end

---@param value boolean
function LongArgParser.set_IsMissing(value) end

---@return number
function LongArgParser.get_ArgCount() end

---@return string
function LongArgParser.GetSyntax() end

---@return string
function LongArgParser.GetSyntaxUnformatted() end

---@return string
function LongArgParser.GetLastError() end

---@return userdata
function LongArgParser.GetType() end

---@return string
function LongArgParser.ToString() end

---@param obj userdata
---@return boolean
function LongArgParser.Equals(obj) end

---@return number
function LongArgParser.GetHashCode() end


