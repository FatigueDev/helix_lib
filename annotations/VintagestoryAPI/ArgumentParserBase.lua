---@meta

---@class ArgumentParserBase:  ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
ArgumentParserBase = {}


---@return string
function ArgumentParserBase.get_LastErrorMessage() end

---@return string
function ArgumentParserBase.get_ArgumentName() end

---@return boolean
function ArgumentParserBase.get_IsMandatoryArg() end

---@return boolean
function ArgumentParserBase.get_IsMissing() end

---@param value boolean
function ArgumentParserBase.set_IsMissing(value) end

---@return number
function ArgumentParserBase.get_ArgCount() end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function ArgumentParserBase.GetValidRange(args) end

---@return userdata
function ArgumentParserBase.GetValue() end

---@param data userdata
function ArgumentParserBase.SetValue(data) end

---@return string
function ArgumentParserBase.GetSyntax() end

---@return string
function ArgumentParserBase.GetSyntaxUnformatted() end

---@param indent string
---@return string
function ArgumentParserBase.GetSyntaxExplanation(indent) end

---@return string
function ArgumentParserBase.GetLastError() end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function ArgumentParserBase.TryProcess(args, onReady) end

---@param args TextCommandCallingArgs
function ArgumentParserBase.PreProcess(args) end

---@return userdata
function ArgumentParserBase.GetType() end

---@return string
function ArgumentParserBase.ToString() end

---@param obj userdata
---@return boolean
function ArgumentParserBase.Equals(obj) end

---@return number
function ArgumentParserBase.GetHashCode() end


