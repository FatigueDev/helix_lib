---@meta

---@class Vec3iArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
Vec3iArgParser = {}

---@param argName string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param isMandatoryArg boolean
---@return Vec3iArgParser
function Vec3iArgParser.ctor(argName, api, isMandatoryArg) end

---@param args TextCommandCallingArgs
function Vec3iArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function Vec3iArgParser.TryProcess(args, onReady) end

---@return userdata
function Vec3iArgParser.GetValue() end

---@param data userdata
function Vec3iArgParser.SetValue(data) end

---@return string
function Vec3iArgParser.get_LastErrorMessage() end

---@return string
function Vec3iArgParser.get_ArgumentName() end

---@return boolean
function Vec3iArgParser.get_IsMandatoryArg() end

---@return boolean
function Vec3iArgParser.get_IsMissing() end

---@param value boolean
function Vec3iArgParser.set_IsMissing(value) end

---@return number
function Vec3iArgParser.get_ArgCount() end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function Vec3iArgParser.GetValidRange(args) end

---@return string
function Vec3iArgParser.GetSyntax() end

---@return string
function Vec3iArgParser.GetSyntaxUnformatted() end

---@param indent string
---@return string
function Vec3iArgParser.GetSyntaxExplanation(indent) end

---@return string
function Vec3iArgParser.GetLastError() end

---@return userdata
function Vec3iArgParser.GetType() end

---@return string
function Vec3iArgParser.ToString() end

---@param obj userdata
---@return boolean
function Vec3iArgParser.Equals(obj) end

---@return number
function Vec3iArgParser.GetHashCode() end


