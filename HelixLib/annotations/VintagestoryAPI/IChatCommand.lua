---@meta

---@class IChatCommand
---@field FullName string Name of this command plus parent command names
---@field Name string Name of this command
---@field Description string Get the description of this command
---@field AdditionalInformation string Get the detailed description of this command
---@field Examples string Get the examples of this command
---@field Incomplete boolean True if either name or privilege has not been set
---@field Aliases table Aliases for this command or subcommand
---@field RootAliases table RootAliases for this command or subcommand
---@field CommandPrefix string Get the prefix of this command
---@field Item IChatCommand
---@field Subcommands function
---@field AllSubcommands table
---@field CallSyntax string Get a string showing how to call this command or subcommand
---@field CallSyntaxUnformatted string
IChatCommand = {}


---@return string
function IChatCommand.get_FullName() end

---@return string
function IChatCommand.get_Name() end

---@return string
function IChatCommand.get_Description() end

---@return string
function IChatCommand.get_AdditionalInformation() end

---@return string
function IChatCommand.get_Examples() end

---@return boolean
function IChatCommand.get_Incomplete() end

---@return table
function IChatCommand.get_Aliases() end

---@return table
function IChatCommand.get_RootAliases() end

---@return string
function IChatCommand.get_CommandPrefix() end

---@param name string
---@return IChatCommand
function IChatCommand.get_Item(name) end

-- If return value is error, command cannot be executed
---@param p CommandPreconditionDelegate
---@return IChatCommand
function IChatCommand.WithPreCondition(p) end

-- Sets the command name
---@param name string
---@return IChatCommand
function IChatCommand.WithName(name) end

-- Registers alternative names for this command
---@param name string
---@return IChatCommand
function IChatCommand.WithAlias(name) end

-- Registers an alternative name for this command, always at the root level, i.e. /name
---@param name string
---@return IChatCommand
function IChatCommand.WithRootAlias(name) end

-- Set command description
---@param description string
---@return IChatCommand
function IChatCommand.WithDescription(description) end

-- Set additional detailed command description, for command-specific help
---@param detail string
---@return IChatCommand
function IChatCommand.WithAdditionalInformation(detail) end

-- Define one ore more examples on how this command can be executed
---@param examaples string
---@return IChatCommand
function IChatCommand.WithExamples(examaples) end

-- Define command arguments, you'd usually want to use one of the parsers supplied from from capi.ChatCommands.Parsers
---@param args ICommandArgumentParser[]
---@return IChatCommand
function IChatCommand.WithArgs(args) end

-- Define the required privilege to run this command / subcommand
---@param privilege string
---@return IChatCommand
function IChatCommand.RequiresPrivilege(privilege) end

-- This command can only be run if the caller is a player
---@return IChatCommand
function IChatCommand.RequiresPlayer() end

-- Define/Modify a subcommnad. Returns a new subcommand instance.
---@param name string
---@return IChatCommand
function IChatCommand.BeginSubCommand(name) end

-- Define/Modify multiple subcommands. Returns a new subcommand instance.
---@param name string
---@return IChatCommand
function IChatCommand.BeginSubCommands(name) end

-- Leave current subcommand. Returns parent command instance.
---@return IChatCommand
function IChatCommand.EndSubCommand() end

-- Define method to be called when the command is executed
---@param handler OnCommandDelegate
---@return IChatCommand
function IChatCommand.HandleWith(handler) end

-- Manually execute this command
---@param callargs TextCommandCallingArgs
---@param onCommandComplete? function
function IChatCommand.Execute(callargs, onCommandComplete) end

-- Confirm whether the specified caller has the required privilege for this command
---@param caller Caller
---@return boolean
function IChatCommand.IsAvailableTo(caller) end

-- Optional validation step that ensures that all the command and all its subcommands has a name, handler, privilege and description defined
function IChatCommand.Validate() end

---@return IChatCommand
function IChatCommand.IgnoreAdditionalArgs() end

---@return function
function IChatCommand.get_Subcommands() end

---@return table
function IChatCommand.get_AllSubcommands() end

---@param caller Caller
---@return string
function IChatCommand.GetFullSyntaxConsole(caller) end

---@param caller Caller
---@param indent? string
---@param isRootAlias? boolean
---@return string
function IChatCommand.GetFullSyntaxHandbook(caller, indent, isRootAlias) end

---@return string
function IChatCommand.get_CallSyntax() end

---@return string
function IChatCommand.get_CallSyntaxUnformatted() end

-- Add text listing the parameters
---@param sb string
---@param indent string
function IChatCommand.AddParameterSyntax(sb, indent) end

-- Add text explaining the form and interpretation of some of the more complex parameter types
---@param sb string
---@param indent string
function IChatCommand.AddSyntaxExplanation(sb, indent) end

---@param alias string
---@param isRootAlias? boolean
---@return string
function IChatCommand.GetFullName(alias, isRootAlias) end

---@param alias string
---@param isRootAlias? boolean
---@return string
function IChatCommand.GetCallSyntax(alias, isRootAlias) end

---@param alias string
---@param isRootAlias? boolean
---@return string
function IChatCommand.GetCallSyntaxUnformatted(alias, isRootAlias) end


