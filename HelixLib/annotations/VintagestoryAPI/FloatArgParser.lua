---@meta

---@class FloatArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
FloatArgParser = {}

---@param argName string
---@param min number
---@param max number
---@param isMandatoryArg boolean
---@return FloatArgParser
function FloatArgParser.ctor(argName, min, max, isMandatoryArg) end
---@param argName string
---@param isMandatoryArg boolean
---@return FloatArgParser
function FloatArgParser.ctor(argName, isMandatoryArg) end
---@param argName string
---@param defaultvalue number
---@param isMandatoryArg boolean
---@return FloatArgParser
function FloatArgParser.ctor(argName, defaultvalue, isMandatoryArg) end

---@param indent string
---@return string
function FloatArgParser.GetSyntaxExplanation(indent) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function FloatArgParser.GetValidRange(args) end

---@return userdata
function FloatArgParser.GetValue() end

---@param args TextCommandCallingArgs
function FloatArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function FloatArgParser.TryProcess(args, onReady) end

---@param data userdata
function FloatArgParser.SetValue(data) end

---@return string
function FloatArgParser.get_LastErrorMessage() end

---@return string
function FloatArgParser.get_ArgumentName() end

---@return boolean
function FloatArgParser.get_IsMandatoryArg() end

---@return boolean
function FloatArgParser.get_IsMissing() end

---@param value boolean
function FloatArgParser.set_IsMissing(value) end

---@return number
function FloatArgParser.get_ArgCount() end

---@return string
function FloatArgParser.GetSyntax() end

---@return string
function FloatArgParser.GetSyntaxUnformatted() end

---@return string
function FloatArgParser.GetLastError() end

---@return userdata
function FloatArgParser.GetType() end

---@return string
function FloatArgParser.ToString() end

---@param obj userdata
---@return boolean
function FloatArgParser.Equals(obj) end

---@return number
function FloatArgParser.GetHashCode() end


