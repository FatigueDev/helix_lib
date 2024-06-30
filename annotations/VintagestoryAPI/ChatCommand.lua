---@meta

-- A base class for all chat commands.
---@class ChatCommand
---@field Command string the command calling name.
---@field Syntax string The syntax of the command.
---@field Description string The description of the command.
---@field RequiredPrivilege string The required privilage for the command to be ran.
ChatCommand = {}


-- The call handler for the command.
---@param player IPlayer Represents a player
---@param groupId number
---@param args CmdArgs The arguments from a client or sever command
function ChatCommand.CallHandler(player, groupId, args) end

-- gets the description of the command.
---@return string
function ChatCommand.GetDescription() end

-- Gets the syntax of the command.
---@return string
function ChatCommand.GetSyntax() end

-- Gets the help message of the command.
---@return string
function ChatCommand.GetHelpMessage() end

---@return userdata
function ChatCommand.GetType() end

---@return string
function ChatCommand.ToString() end

---@param obj userdata
---@return boolean
function ChatCommand.Equals(obj) end

---@return number
function ChatCommand.GetHashCode() end


