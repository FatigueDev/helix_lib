---@meta

---@class WorldPosition2DArgParser: PositionArgumentParserBase, ArgumentParserBase, PositionArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
WorldPosition2DArgParser = {}

---@param argName string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param isMandatoryArg boolean
---@return WorldPosition2DArgParser
function WorldPosition2DArgParser.ctor(argName, api, isMandatoryArg) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function WorldPosition2DArgParser.GetValidRange(args) end

---@return userdata
function WorldPosition2DArgParser.GetValue() end

---@param data userdata
function WorldPosition2DArgParser.SetValue(data) end

---@param args TextCommandCallingArgs
function WorldPosition2DArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function WorldPosition2DArgParser.TryProcess(args, onReady) end

---@return string
function WorldPosition2DArgParser.get_LastErrorMessage() end

---@return string
function WorldPosition2DArgParser.get_ArgumentName() end

---@return boolean
function WorldPosition2DArgParser.get_IsMandatoryArg() end

---@return boolean
function WorldPosition2DArgParser.get_IsMissing() end

---@param value boolean
function WorldPosition2DArgParser.set_IsMissing(value) end

---@return number
function WorldPosition2DArgParser.get_ArgCount() end

---@return string
function WorldPosition2DArgParser.GetSyntax() end

---@return string
function WorldPosition2DArgParser.GetSyntaxUnformatted() end

---@param indent string
---@return string
function WorldPosition2DArgParser.GetSyntaxExplanation(indent) end

---@return string
function WorldPosition2DArgParser.GetLastError() end

---@return userdata
function WorldPosition2DArgParser.GetType() end

---@return string
function WorldPosition2DArgParser.ToString() end

---@param obj userdata
---@return boolean
function WorldPosition2DArgParser.Equals(obj) end

---@return number
function WorldPosition2DArgParser.GetHashCode() end


