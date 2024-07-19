---@meta

---@class PrivilegeArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
PrivilegeArgParser = {}

---@param argName string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param isMandatoryArg boolean
---@return PrivilegeArgParser
function PrivilegeArgParser.ctor(argName, api, isMandatoryArg) end

---@param args TextCommandCallingArgs
function PrivilegeArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function PrivilegeArgParser.TryProcess(args, onReady) end

---@return userdata
function PrivilegeArgParser.GetValue() end

---@param data userdata
function PrivilegeArgParser.SetValue(data) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function PrivilegeArgParser.GetValidRange(args) end

---@return string
function PrivilegeArgParser.get_LastErrorMessage() end

---@return string
function PrivilegeArgParser.get_ArgumentName() end

---@return boolean
function PrivilegeArgParser.get_IsMandatoryArg() end

---@return boolean
function PrivilegeArgParser.get_IsMissing() end

---@param value boolean
function PrivilegeArgParser.set_IsMissing(value) end

---@return number
function PrivilegeArgParser.get_ArgCount() end

---@return string
function PrivilegeArgParser.GetSyntax() end

---@return string
function PrivilegeArgParser.GetSyntaxUnformatted() end

---@param indent string
---@return string
function PrivilegeArgParser.GetSyntaxExplanation(indent) end

---@return string
function PrivilegeArgParser.GetLastError() end

---@return userdata
function PrivilegeArgParser.GetType() end

---@return string
function PrivilegeArgParser.ToString() end

---@param obj userdata
---@return boolean
function PrivilegeArgParser.Equals(obj) end

---@return number
function PrivilegeArgParser.GetHashCode() end


