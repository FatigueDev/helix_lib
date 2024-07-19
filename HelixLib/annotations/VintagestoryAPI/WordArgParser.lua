---@meta

---@class WordArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
WordArgParser = {}

---@param argName string
---@param isMandatoryArg boolean
---@param suggestions? string
---@return WordArgParser
function WordArgParser.ctor(argName, isMandatoryArg, suggestions) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function WordArgParser.GetValidRange(args) end

---@return userdata
function WordArgParser.GetValue() end

---@param data userdata
function WordArgParser.SetValue(data) end

---@param indent string
---@return string
function WordArgParser.GetSyntaxExplanation(indent) end

---@param args TextCommandCallingArgs
function WordArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function WordArgParser.TryProcess(args, onReady) end

---@return string
function WordArgParser.get_LastErrorMessage() end

---@return string
function WordArgParser.get_ArgumentName() end

---@return boolean
function WordArgParser.get_IsMandatoryArg() end

---@return boolean
function WordArgParser.get_IsMissing() end

---@param value boolean
function WordArgParser.set_IsMissing(value) end

---@return number
function WordArgParser.get_ArgCount() end

---@return string
function WordArgParser.GetSyntax() end

---@return string
function WordArgParser.GetSyntaxUnformatted() end

---@return string
function WordArgParser.GetLastError() end

---@return userdata
function WordArgParser.GetType() end

---@return string
function WordArgParser.ToString() end

---@param obj userdata
---@return boolean
function WordArgParser.Equals(obj) end

---@return number
function WordArgParser.GetHashCode() end


