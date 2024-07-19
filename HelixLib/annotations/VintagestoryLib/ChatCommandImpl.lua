---@meta

---@class ChatCommandImpl:  IChatCommand
---@field Incomplete boolean
---@field Aliases table
---@field RootAliases table
---@field CommandPrefix string
---@field Name string
---@field Description string
---@field AdditionalInformation string
---@field Examples string
---@field FullName string
---@field Item IChatCommand
---@field AnyPrivilegeSet boolean
---@field CallSyntax string
---@field CallSyntaxUnformatted string
---@field Subcommands function
---@field AllSubcommands table
ChatCommandImpl = {}

---@param cmdapi ChatCommandApi
---@param name? string
---@param parent? ChatCommandImpl
---@return ChatCommandImpl
function ChatCommandImpl.ctor(cmdapi, name, parent) end

---@return boolean
function ChatCommandImpl.get_Incomplete() end

---@return table
function ChatCommandImpl.get_Aliases() end

---@return table
function ChatCommandImpl.get_RootAliases() end

---@return string
function ChatCommandImpl.get_CommandPrefix() end

---@return string
function ChatCommandImpl.get_Name() end

---@return string
function ChatCommandImpl.get_Description() end

---@return string
function ChatCommandImpl.get_AdditionalInformation() end

---@return string
function ChatCommandImpl.get_Examples() end

---@return string
function ChatCommandImpl.GetPrivilege() end

---@return string
function ChatCommandImpl.get_FullName() end

---@param alias string
---@param isRootAlias? boolean
---@return string
function ChatCommandImpl.GetFullName(alias, isRootAlias) end

---@param name string
---@return IChatCommand
function ChatCommandImpl.get_Item(name) end

---@return IChatCommand
function ChatCommandImpl.EndSubCommand() end

---@param handler OnCommandDelegate
---@return IChatCommand
function ChatCommandImpl.HandleWith(handler) end

---@param privilege string
---@return IChatCommand
function ChatCommandImpl.RequiresPrivilege(privilege) end

---@param description string
---@return IChatCommand
function ChatCommandImpl.WithDescription(description) end

---@param text string
---@return IChatCommand
function ChatCommandImpl.WithAdditionalInformation(text) end

---@param commandName string
---@return IChatCommand
function ChatCommandImpl.WithName(commandName) end

---@param commandName string
---@return IChatCommand
function ChatCommandImpl.WithRootAlias(commandName) end

---@param name string
---@return IChatCommand
function ChatCommandImpl.BeginSub(name) end

---@return IChatCommand
function ChatCommandImpl.EndSub() end

---@param name string
---@return IChatCommand
function ChatCommandImpl.BeginSubCommand(name) end

---@param names string
---@return IChatCommand
function ChatCommandImpl.BeginSubCommands(names) end

---@param name string
---@param desc string
---@param handler OnCommandDelegate
---@param parsers ICommandArgumentParser[]
---@return IChatCommand
function ChatCommandImpl.WithSubCommand(name, desc, handler, parsers) end

---@param parsers ICommandArgumentParser[]
---@return IChatCommand
function ChatCommandImpl.WithArgs(parsers) end

---@param callargs TextCommandCallingArgs
---@param onCommandComplete? function
function ChatCommandImpl.Execute(callargs, onCommandComplete) end

---@param precond CommandPreconditionDelegate
---@return IChatCommand
function ChatCommandImpl.WithPreCondition(precond) end

---@param names string
---@return IChatCommand
function ChatCommandImpl.WithAlias(names) end

---@param name string
---@return IChatCommand
function ChatCommandImpl.GroupWith(name) end

---@param examples string
---@return IChatCommand
function ChatCommandImpl.WithExamples(examples) end

---@return IChatCommand
function ChatCommandImpl.RequiresPlayer() end

function ChatCommandImpl.Validate() end

---@return boolean
function ChatCommandImpl.get_AnyPrivilegeSet() end

---@param caller Caller
---@return boolean
function ChatCommandImpl.IsAvailableTo(caller) end

---@return IChatCommand
function ChatCommandImpl.IgnoreAdditionalArgs() end

---@param caller Caller
---@param indent? string
---@param isRootAlias? boolean
---@return string
function ChatCommandImpl.GetFullSyntaxHandbook(caller, indent, isRootAlias) end

---@param caller Caller
---@return string
function ChatCommandImpl.GetFullSyntaxConsole(caller) end

---@param text string
---@param commands table
---@param caller Caller
---@param indent? string
function ChatCommandImpl.WriteCommandsListHandbook(text, commands, caller, indent) end

---@param text string
---@param commands table
---@param caller Caller
---@param isSubCommand? boolean
function ChatCommandImpl.WriteCommandsList(text, commands, caller, isSubCommand) end

---@param name string
---@param isRootAlias? boolean
---@return string
function ChatCommandImpl.GetCallSyntax(name, isRootAlias) end

---@param name string
---@param isRootAlias? boolean
---@return string
function ChatCommandImpl.GetCallSyntaxUnformatted(name, isRootAlias) end

---@return string
function ChatCommandImpl.get_CallSyntax() end

---@return string
function ChatCommandImpl.get_CallSyntaxUnformatted() end

---@param sb string
---@param indent string
function ChatCommandImpl.AddParameterSyntax(sb, indent) end

---@param sb string
---@param indent string
function ChatCommandImpl.AddParameterSyntaxUnformatted(sb, indent) end

---@param sb string
---@param indent string
function ChatCommandImpl.AddSyntaxExplanation(sb, indent) end

---@return function
function ChatCommandImpl.get_Subcommands() end

---@return table
function ChatCommandImpl.get_AllSubcommands() end

---@return userdata
function ChatCommandImpl.GetType() end

---@return string
function ChatCommandImpl.ToString() end

---@param obj userdata
---@return boolean
function ChatCommandImpl.Equals(obj) end

---@return number
function ChatCommandImpl.GetHashCode() end


