---@meta

---@class EntitiesArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
EntitiesArgParser = {}

---@param argName string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param isMandatoryArg boolean
---@return EntitiesArgParser
function EntitiesArgParser.ctor(argName, api, isMandatoryArg) end

---@param indent string
---@return string
function EntitiesArgParser.GetSyntaxExplanation(indent) end

---@return userdata
function EntitiesArgParser.GetValue() end

---@param data userdata
function EntitiesArgParser.SetValue(data) end

---@param args TextCommandCallingArgs
function EntitiesArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function EntitiesArgParser.TryProcess(args, onReady) end

---@return string
function EntitiesArgParser.get_LastErrorMessage() end

---@return string
function EntitiesArgParser.get_ArgumentName() end

---@return boolean
function EntitiesArgParser.get_IsMandatoryArg() end

---@return boolean
function EntitiesArgParser.get_IsMissing() end

---@param value boolean
function EntitiesArgParser.set_IsMissing(value) end

---@return number
function EntitiesArgParser.get_ArgCount() end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function EntitiesArgParser.GetValidRange(args) end

---@return string
function EntitiesArgParser.GetSyntax() end

---@return string
function EntitiesArgParser.GetSyntaxUnformatted() end

---@return string
function EntitiesArgParser.GetLastError() end

---@return userdata
function EntitiesArgParser.GetType() end

---@return string
function EntitiesArgParser.ToString() end

---@param obj userdata
---@return boolean
function EntitiesArgParser.Equals(obj) end

---@return number
function EntitiesArgParser.GetHashCode() end


