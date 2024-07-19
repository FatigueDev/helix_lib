---@meta

-- A handle for creating client commands.
---@class ClientChatCommand: ChatCommand, ChatCommand
---@field handler ClientChatCommandDelegate
---@field Command string the command calling name.
---@field Syntax string The syntax of the command.
---@field Description string The description of the command.
---@field RequiredPrivilege string The required privilage for the command to be ran.
ClientChatCommand = {}

---@return ClientChatCommand
function ClientChatCommand.ctor() end

---@param player IPlayer Represents a player
---@param groupId number
---@param args CmdArgs The arguments from a client or sever command
function ClientChatCommand.CallHandler(player, groupId, args) end

-- gets the description of the command.
---@return string
function ClientChatCommand.GetDescription() end

-- Gets the syntax of the command.
---@return string
function ClientChatCommand.GetSyntax() end

-- Gets the help message of the command.
---@return string
function ClientChatCommand.GetHelpMessage() end

---@return userdata
function ClientChatCommand.GetType() end

---@return string
function ClientChatCommand.ToString() end

---@param obj userdata
---@return boolean
function ClientChatCommand.Equals(obj) end

---@return number
function ClientChatCommand.GetHashCode() end


