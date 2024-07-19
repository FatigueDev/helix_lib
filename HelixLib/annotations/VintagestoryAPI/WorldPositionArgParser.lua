---@meta

---@class WorldPositionArgParser: PositionArgumentParserBase, ArgumentParserBase, PositionArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
WorldPositionArgParser = {}

---@param argName string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param isMandatoryArg boolean
---@return WorldPositionArgParser
function WorldPositionArgParser.ctor(argName, api, isMandatoryArg) end

---@param indent string
---@return string
function WorldPositionArgParser.GetSyntaxExplanation(indent) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function WorldPositionArgParser.GetValidRange(args) end

---@return userdata
function WorldPositionArgParser.GetValue() end

---@param data userdata
function WorldPositionArgParser.SetValue(data) end

---@param args TextCommandCallingArgs
function WorldPositionArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function WorldPositionArgParser.TryProcess(args, onReady) end

---@return string
function WorldPositionArgParser.get_LastErrorMessage() end

---@return string
function WorldPositionArgParser.get_ArgumentName() end

---@return boolean
function WorldPositionArgParser.get_IsMandatoryArg() end

---@return boolean
function WorldPositionArgParser.get_IsMissing() end

---@param value boolean
function WorldPositionArgParser.set_IsMissing(value) end

---@return number
function WorldPositionArgParser.get_ArgCount() end

---@return string
function WorldPositionArgParser.GetSyntax() end

---@return string
function WorldPositionArgParser.GetSyntaxUnformatted() end

---@return string
function WorldPositionArgParser.GetLastError() end

---@return userdata
function WorldPositionArgParser.GetType() end

---@return string
function WorldPositionArgParser.ToString() end

---@param obj userdata
---@return boolean
function WorldPositionArgParser.Equals(obj) end

---@return number
function WorldPositionArgParser.GetHashCode() end


