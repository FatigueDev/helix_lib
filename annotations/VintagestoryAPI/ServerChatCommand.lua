---@meta

-- A handler for creating server commands.
---@class ServerChatCommand: ChatCommand, ChatCommand
---@field handler ServerChatCommandDelegate
---@field Command string the command calling name.
---@field Syntax string The syntax of the command.
---@field Description string The description of the command.
---@field RequiredPrivilege string The required privilage for the command to be ran.
ServerChatCommand = {}

---@return ServerChatCommand
function ServerChatCommand.ctor() end

-- Whether or not the player has the privilage to run the command.
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@return boolean
function ServerChatCommand.HasPrivilege(player) end

---@param player IPlayer Represents a player
---@param groupId number
---@param args CmdArgs The arguments from a client or sever command
function ServerChatCommand.CallHandler(player, groupId, args) end

-- gets the description of the command.
---@return string
function ServerChatCommand.GetDescription() end

-- Gets the syntax of the command.
---@return string
function ServerChatCommand.GetSyntax() end

-- Gets the help message of the command.
---@return string
function ServerChatCommand.GetHelpMessage() end

---@return userdata
function ServerChatCommand.GetType() end

---@return string
function ServerChatCommand.ToString() end

---@param obj userdata
---@return boolean
function ServerChatCommand.Equals(obj) end

---@return number
function ServerChatCommand.GetHashCode() end


