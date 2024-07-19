---@meta

---@class PlayerRoleArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
PlayerRoleArgParser = {}

---@param argName string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param isMandatoryArg boolean
---@return PlayerRoleArgParser
function PlayerRoleArgParser.ctor(argName, api, isMandatoryArg) end

---@param args TextCommandCallingArgs
function PlayerRoleArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function PlayerRoleArgParser.TryProcess(args, onReady) end

---@return userdata
function PlayerRoleArgParser.GetValue() end

---@param data userdata
function PlayerRoleArgParser.SetValue(data) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function PlayerRoleArgParser.GetValidRange(args) end

---@return string
function PlayerRoleArgParser.get_LastErrorMessage() end

---@return string
function PlayerRoleArgParser.get_ArgumentName() end

---@return boolean
function PlayerRoleArgParser.get_IsMandatoryArg() end

---@return boolean
function PlayerRoleArgParser.get_IsMissing() end

---@param value boolean
function PlayerRoleArgParser.set_IsMissing(value) end

---@return number
function PlayerRoleArgParser.get_ArgCount() end

---@return string
function PlayerRoleArgParser.GetSyntax() end

---@return string
function PlayerRoleArgParser.GetSyntaxUnformatted() end

---@param indent string
---@return string
function PlayerRoleArgParser.GetSyntaxExplanation(indent) end

---@return string
function PlayerRoleArgParser.GetLastError() end

---@return userdata
function PlayerRoleArgParser.GetType() end

---@return string
function PlayerRoleArgParser.ToString() end

---@param obj userdata
---@return boolean
function PlayerRoleArgParser.Equals(obj) end

---@return number
function PlayerRoleArgParser.GetHashCode() end


