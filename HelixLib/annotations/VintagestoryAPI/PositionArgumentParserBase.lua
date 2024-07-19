---@meta

---@class PositionArgumentParserBase: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
PositionArgumentParserBase = {}


---@return string
function PositionArgumentParserBase.get_LastErrorMessage() end

---@return string
function PositionArgumentParserBase.get_ArgumentName() end

---@return boolean
function PositionArgumentParserBase.get_IsMandatoryArg() end

---@return boolean
function PositionArgumentParserBase.get_IsMissing() end

---@param value boolean
function PositionArgumentParserBase.set_IsMissing(value) end

---@return number
function PositionArgumentParserBase.get_ArgCount() end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function PositionArgumentParserBase.GetValidRange(args) end

---@return userdata
function PositionArgumentParserBase.GetValue() end

---@param data userdata
function PositionArgumentParserBase.SetValue(data) end

---@return string
function PositionArgumentParserBase.GetSyntax() end

---@return string
function PositionArgumentParserBase.GetSyntaxUnformatted() end

---@param indent string
---@return string
function PositionArgumentParserBase.GetSyntaxExplanation(indent) end

---@return string
function PositionArgumentParserBase.GetLastError() end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function PositionArgumentParserBase.TryProcess(args, onReady) end

---@param args TextCommandCallingArgs
function PositionArgumentParserBase.PreProcess(args) end

---@return userdata
function PositionArgumentParserBase.GetType() end

---@return string
function PositionArgumentParserBase.ToString() end

---@param obj userdata
---@return boolean
function PositionArgumentParserBase.Equals(obj) end

---@return number
function PositionArgumentParserBase.GetHashCode() end


