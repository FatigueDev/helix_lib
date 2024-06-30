---@meta

---@class OnlinePlayerArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
OnlinePlayerArgParser = {}

---@param argName string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param isMandatoryArg boolean
---@return OnlinePlayerArgParser
function OnlinePlayerArgParser.ctor(argName, api, isMandatoryArg) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function OnlinePlayerArgParser.GetValidRange(args) end

---@return userdata
function OnlinePlayerArgParser.GetValue() end

---@param data userdata
function OnlinePlayerArgParser.SetValue(data) end

---@param args TextCommandCallingArgs
function OnlinePlayerArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function OnlinePlayerArgParser.TryProcess(args, onReady) end

---@return string
function OnlinePlayerArgParser.get_LastErrorMessage() end

---@return string
function OnlinePlayerArgParser.get_ArgumentName() end

---@return boolean
function OnlinePlayerArgParser.get_IsMandatoryArg() end

---@return boolean
function OnlinePlayerArgParser.get_IsMissing() end

---@param value boolean
function OnlinePlayerArgParser.set_IsMissing(value) end

---@return number
function OnlinePlayerArgParser.get_ArgCount() end

---@return string
function OnlinePlayerArgParser.GetSyntax() end

---@return string
function OnlinePlayerArgParser.GetSyntaxUnformatted() end

---@param indent string
---@return string
function OnlinePlayerArgParser.GetSyntaxExplanation(indent) end

---@return string
function OnlinePlayerArgParser.GetLastError() end

---@return userdata
function OnlinePlayerArgParser.GetType() end

---@return string
function OnlinePlayerArgParser.ToString() end

---@param obj userdata
---@return boolean
function OnlinePlayerArgParser.Equals(obj) end

---@return number
function OnlinePlayerArgParser.GetHashCode() end


