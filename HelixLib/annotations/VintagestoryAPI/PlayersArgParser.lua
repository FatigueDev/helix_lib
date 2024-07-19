---@meta

---@class PlayersArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
PlayersArgParser = {}

---@param argName string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param isMandatoryArg boolean
---@return PlayersArgParser
function PlayersArgParser.ctor(argName, api, isMandatoryArg) end

---@param indent string
---@return string
function PlayersArgParser.GetSyntaxExplanation(indent) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function PlayersArgParser.GetValidRange(args) end

---@return userdata
function PlayersArgParser.GetValue() end

---@param data userdata
function PlayersArgParser.SetValue(data) end

---@param args TextCommandCallingArgs
function PlayersArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function PlayersArgParser.TryProcess(args, onReady) end

---@return string
function PlayersArgParser.get_LastErrorMessage() end

---@return string
function PlayersArgParser.get_ArgumentName() end

---@return boolean
function PlayersArgParser.get_IsMandatoryArg() end

---@return boolean
function PlayersArgParser.get_IsMissing() end

---@param value boolean
function PlayersArgParser.set_IsMissing(value) end

---@return number
function PlayersArgParser.get_ArgCount() end

---@return string
function PlayersArgParser.GetSyntax() end

---@return string
function PlayersArgParser.GetSyntaxUnformatted() end

---@return string
function PlayersArgParser.GetLastError() end

---@return userdata
function PlayersArgParser.GetType() end

---@return string
function PlayersArgParser.ToString() end

---@param obj userdata
---@return boolean
function PlayersArgParser.Equals(obj) end

---@return number
function PlayersArgParser.GetHashCode() end


