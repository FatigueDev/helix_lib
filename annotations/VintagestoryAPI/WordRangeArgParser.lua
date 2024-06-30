---@meta

---@class WordRangeArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
WordRangeArgParser = {}

---@param argName string
---@param isMandatoryArg boolean
---@param words string
---@return WordRangeArgParser
function WordRangeArgParser.ctor(argName, isMandatoryArg, words) end

---@return string
function WordRangeArgParser.GetSyntax() end

---@return string
function WordRangeArgParser.GetSyntaxUnformatted() end

---@param indent string
---@return string
function WordRangeArgParser.GetSyntaxExplanation(indent) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function WordRangeArgParser.GetValidRange(args) end

---@return userdata
function WordRangeArgParser.GetValue() end

---@param args TextCommandCallingArgs
function WordRangeArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function WordRangeArgParser.TryProcess(args, onReady) end

---@param data userdata
function WordRangeArgParser.SetValue(data) end

---@return string
function WordRangeArgParser.get_LastErrorMessage() end

---@return string
function WordRangeArgParser.get_ArgumentName() end

---@return boolean
function WordRangeArgParser.get_IsMandatoryArg() end

---@return boolean
function WordRangeArgParser.get_IsMissing() end

---@param value boolean
function WordRangeArgParser.set_IsMissing(value) end

---@return number
function WordRangeArgParser.get_ArgCount() end

---@return string
function WordRangeArgParser.GetLastError() end

---@return userdata
function WordRangeArgParser.GetType() end

---@return string
function WordRangeArgParser.ToString() end

---@param obj userdata
---@return boolean
function WordRangeArgParser.Equals(obj) end

---@return number
function WordRangeArgParser.GetHashCode() end


