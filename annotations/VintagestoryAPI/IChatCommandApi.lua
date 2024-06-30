---@meta

---@class IChatCommandApi:  IEnumerable
---@field Item IChatCommand
---@field Parsers CommandArgumentParsers
IChatCommandApi = {}


---@param name string
---@return IChatCommand
function IChatCommandApi.get_Item(name) end

---@return IChatCommand
function IChatCommandApi.Create() end

---@param name string
---@return IChatCommand
function IChatCommandApi.Create(name) end

---@param name string
---@return IChatCommand
function IChatCommandApi.Get(name) end

---@param name string
---@return IChatCommand
function IChatCommandApi.GetOrCreate(name) end

---@return CommandArgumentParsers
function IChatCommandApi.get_Parsers() end

-- Executes a parsed command
---@param name string
---@param args TextCommandCallingArgs
---@param onCommandComplete? function
function IChatCommandApi.Execute(name, args, onCommandComplete) end

-- Executes a raw command 
---@param message string
---@param args TextCommandCallingArgs
---@param onCommandComplete? function
function IChatCommandApi.ExecuteUnparsed(message, args, onCommandComplete) end

-- Get all commands ordered by name ASC
---@param command table
---@return table
function IChatCommandApi.GetOrdered(command) end

-- Get all commands from IChatCommandApi ordered by name ASC
---@param chatCommandApi IChatCommandApi
---@return table
function IChatCommandApi.GetOrdered(chatCommandApi) end


