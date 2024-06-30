---@meta

---@class CollectibleArgParser: ArgumentParserBase, ArgumentParserBase, ICommandArgumentParser
---@field LastErrorMessage string
---@field ArgumentName string
---@field IsMandatoryArg boolean
---@field IsMissing boolean
---@field ArgCount number
CollectibleArgParser = {}

---@param argName string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param itemclass EnumItemClass
---@param isMandatoryArg boolean
---@return CollectibleArgParser
function CollectibleArgParser.ctor(argName, api, itemclass, isMandatoryArg) end

---@param indent string
---@return string
function CollectibleArgParser.GetSyntaxExplanation(indent) end

---@param args CmdArgs The arguments from a client or sever command
---@return string
function CollectibleArgParser.GetValidRange(args) end

---@return userdata
function CollectibleArgParser.GetValue() end

---@param data userdata
function CollectibleArgParser.SetValue(data) end

---@param args TextCommandCallingArgs
function CollectibleArgParser.PreProcess(args) end

---@param args TextCommandCallingArgs
---@param onReady? function
---@return EnumParseResult
function CollectibleArgParser.TryProcess(args, onReady) end

---@return string
function CollectibleArgParser.get_LastErrorMessage() end

---@return string
function CollectibleArgParser.get_ArgumentName() end

---@return boolean
function CollectibleArgParser.get_IsMandatoryArg() end

---@return boolean
function CollectibleArgParser.get_IsMissing() end

---@param value boolean
function CollectibleArgParser.set_IsMissing(value) end

---@return number
function CollectibleArgParser.get_ArgCount() end

---@return string
function CollectibleArgParser.GetSyntax() end

---@return string
function CollectibleArgParser.GetSyntaxUnformatted() end

---@return string
function CollectibleArgParser.GetLastError() end

---@return userdata
function CollectibleArgParser.GetType() end

---@return string
function CollectibleArgParser.ToString() end

---@param obj userdata
---@return boolean
function CollectibleArgParser.Equals(obj) end

---@return number
function CollectibleArgParser.GetHashCode() end


