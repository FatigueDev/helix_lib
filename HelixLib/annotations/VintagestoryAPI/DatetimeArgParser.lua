---@meta

---@class DatetimeArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
DatetimeArgParser = {}

---@param argName string
---@param isMandatoryArg boolean
---@return DatetimeArgParser
function DatetimeArgParser.ctor(argName, isMandatoryArg) end

---@param indent string
---@return string
function DatetimeArgParser.GetSyntaxExplanation(indent) end

---@return userdata
function DatetimeArgParser.GetValue() end

---@param data userdata
function DatetimeArgParser.SetValue(data) end

---@param args TextCommandCallingArgs
function DatetimeArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function DatetimeArgParser.TryProcess(args, onReady) end

---@return string
function DatetimeArgParser.get_LastErrorMessage() end

---@return string
function DatetimeArgParser.get_ArgumentName() end

---@return boolean
function DatetimeArgParser.get_IsMandatoryArg() end

---@return boolean
function DatetimeArgParser.get_IsMissing() end

---@param value boolean
function DatetimeArgParser.set_IsMissing(value) end

---@return number
function DatetimeArgParser.get_ArgCount() end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function DatetimeArgParser.GetValidRange(args) end

---@return string
function DatetimeArgParser.GetSyntax() end

---@return string
function DatetimeArgParser.GetSyntaxUnformatted() end

---@return string
function DatetimeArgParser.GetLastError() end

---@return userdata
function DatetimeArgParser.GetType() end

---@return string
function DatetimeArgParser.ToString() end

---@param obj userdata
---@return boolean
function DatetimeArgParser.Equals(obj) end

---@return number
function DatetimeArgParser.GetHashCode() end


