---@meta

---@class EntityTypeArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
EntityTypeArgParser = {}

---@param argName string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param isMandatoryArg boolean
---@return EntityTypeArgParser
function EntityTypeArgParser.ctor(argName, api, isMandatoryArg) end

---@param indent string
---@return string
function EntityTypeArgParser.GetSyntaxExplanation(indent) end

---@return userdata
function EntityTypeArgParser.GetValue() end

---@param args TextCommandCallingArgs
function EntityTypeArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function EntityTypeArgParser.TryProcess(args, onReady) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function EntityTypeArgParser.GetValidRange(args) end

---@param data userdata
function EntityTypeArgParser.SetValue(data) end

---@return string
function EntityTypeArgParser.get_LastErrorMessage() end

---@return string
function EntityTypeArgParser.get_ArgumentName() end

---@return boolean
function EntityTypeArgParser.get_IsMandatoryArg() end

---@return boolean
function EntityTypeArgParser.get_IsMissing() end

---@param value boolean
function EntityTypeArgParser.set_IsMissing(value) end

---@return number
function EntityTypeArgParser.get_ArgCount() end

---@return string
function EntityTypeArgParser.GetSyntax() end

---@return string
function EntityTypeArgParser.GetSyntaxUnformatted() end

---@return string
function EntityTypeArgParser.GetLastError() end

---@return userdata
function EntityTypeArgParser.GetType() end

---@return string
function EntityTypeArgParser.ToString() end

---@param obj userdata
---@return boolean
function EntityTypeArgParser.Equals(obj) end

---@return number
function EntityTypeArgParser.GetHashCode() end


