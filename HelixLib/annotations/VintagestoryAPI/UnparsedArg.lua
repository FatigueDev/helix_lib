---@meta

---@class UnparsedArg: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
UnparsedArg = {}

---@param argName string
---@param validRange string
---@return UnparsedArg
function UnparsedArg.ctor(argName, validRange) end

---@return userdata
function UnparsedArg.GetValue() end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function UnparsedArg.GetValidRange(args) end

---@param data userdata
function UnparsedArg.SetValue(data) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function UnparsedArg.TryProcess(args, onReady) end

---@return string
function UnparsedArg.get_LastErrorMessage() end

---@return string
function UnparsedArg.get_ArgumentName() end

---@return boolean
function UnparsedArg.get_IsMandatoryArg() end

---@return boolean
function UnparsedArg.get_IsMissing() end

---@param value boolean
function UnparsedArg.set_IsMissing(value) end

---@return number
function UnparsedArg.get_ArgCount() end

---@return string
function UnparsedArg.GetSyntax() end

---@return string
function UnparsedArg.GetSyntaxUnformatted() end

---@param indent string
---@return string
function UnparsedArg.GetSyntaxExplanation(indent) end

---@return string
function UnparsedArg.GetLastError() end

---@param args TextCommandCallingArgs
function UnparsedArg.PreProcess(args) end

---@return userdata
function UnparsedArg.GetType() end

---@return string
function UnparsedArg.ToString() end

---@param obj userdata
---@return boolean
function UnparsedArg.Equals(obj) end

---@return number
function UnparsedArg.GetHashCode() end


