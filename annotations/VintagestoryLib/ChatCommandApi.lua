---@meta

---@class ChatCommandApi:  IEnumerable, IChatCommandApi
---@field CommandPrefix string
---@field Parsers CommandArgumentParsers
---@field Count number
---@field Item IChatCommand
---@field ClientCommandPrefix string
---@field ServerCommandPrefix string
ChatCommandApi = {}

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return ChatCommandApi
function ChatCommandApi.ctor(api) end

---@return string
function ChatCommandApi.get_CommandPrefix() end

---@return CommandArgumentParsers
function ChatCommandApi.get_Parsers() end

---@return number
function ChatCommandApi.get_Count() end

---@return function
function ChatCommandApi.GetEnumerator() end

---@param name string
---@return IChatCommand
function ChatCommandApi.get_Item(name) end

---@param name string
---@return IChatCommand
function ChatCommandApi.Get(name) end

---@return IChatCommand
function ChatCommandApi.Create() end

---@param commandName string
---@return IChatCommand
function ChatCommandApi.Create(commandName) end

---@param commandName string
---@return IChatCommand
function ChatCommandApi.GetOrCreate(commandName) end

---@return function
function ChatCommandApi.ListAll() end

---@return table
function ChatCommandApi.AllSubcommands() end

---@param commandName string
---@param args TextCommandCallingArgs
---@param onCommandComplete? function
function ChatCommandApi.Execute(commandName, args, onCommandComplete) end

---@param message string
---@param args TextCommandCallingArgs
---@param onCommandComplete? function
function ChatCommandApi.ExecuteUnparsed(message, args, onCommandComplete) end

---@param commandName string
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param groupId number
---@param args string
---@param onCommandComplete? function
function ChatCommandApi.Execute(commandName, player, groupId, args, onCommandComplete) end

---@param commandName string
---@param player IClientPlayer A client side player
---@param groupId number
---@param args string
---@param onCommandComplete? function
function ChatCommandApi.Execute(commandName, player, groupId, args, onCommandComplete) end

---@param source1 string
---@param source2 string
---@return number
function ChatCommandApi.LevenshteinDistance(source1, source2) end

---@param command string
---@param descriptionMsg string
---@param syntaxMsg string
---@param handler ServerChatCommandDelegate
---@param requiredPrivilege? string
---@return boolean
function ChatCommandApi.RegisterCommand(command, descriptionMsg, syntaxMsg, handler, requiredPrivilege) end

---@param command string
---@param descriptionMsg string
---@param syntaxMsg string
---@param handler ClientChatCommandDelegate
---@return boolean
function ChatCommandApi.RegisterCommand(command, descriptionMsg, syntaxMsg, handler) end

---@return userdata
function ChatCommandApi.GetType() end

---@return string
function ChatCommandApi.ToString() end

---@param obj userdata
---@return boolean
function ChatCommandApi.Equals(obj) end

---@return number
function ChatCommandApi.GetHashCode() end


