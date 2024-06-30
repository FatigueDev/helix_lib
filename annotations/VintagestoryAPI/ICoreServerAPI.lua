---@meta

-- The core api implemented by the server. The main interface for accessing the server. Contains all sub components and some miscellaneous methods.
---@class ICoreServerAPI:  ICoreAPICommon, ICoreAPI
---@field Event IServerEventAPI API Component for registering to various Events
---@field WorldManager IWorldManagerAPI API Component for access/modify everything game world related
---@field Server IServerAPI API Component for accessing server related functionality
---@field Permissions IPermissionManager Everything related to roles and privileges
---@field Groups IGroupManager Everything related to player groups
---@field PlayerData IPlayerDataManager World-agnostic player data. You can query this information even when the player is offline
---@field Network IServerNetworkAPI API for sending/receiving network packets
---@field World IServerWorldAccessor API for accessing anything in the game world
ICoreServerAPI = {}


---@return IServerEventAPI # Contains methods to hook into various server processes
function ICoreServerAPI.get_Event() end

---@return IWorldManagerAPI # Methods to modify the game world
function ICoreServerAPI.get_WorldManager() end

---@return IServerAPI # API for general Server features
function ICoreServerAPI.get_Server() end

---@return IPermissionManager
function ICoreServerAPI.get_Permissions() end

---@return IGroupManager
function ICoreServerAPI.get_Groups() end

---@return IPlayerDataManager
function ICoreServerAPI.get_PlayerData() end

---@return IServerNetworkAPI # API Features to set up a network channel for custom server<->client data exchange. Server side.
function ICoreServerAPI.get_Network() end

---@return IServerWorldAccessor # The world accessor implemented by the server
function ICoreServerAPI.get_World() end

-- Shows a vibrating red text in the players screen. If text is null the client will try to find a language entry using supplied code prefixed with 'ingameerror-' (which is recommended so that the errors are translated to the users local language)
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param errorCode string
---@param text? string
---@param langparams userdata
function ICoreServerAPI.SendIngameError(player, errorCode, text, langparams) end

-- Shows a discovery text on the players screen. If text is null the client will try to find a language entry using supplied code prefixed with 'ingamediscovery-' (which is recommended so that the errors are translated to the users local language)
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param discoveryCode string
---@param text? string
---@param langparams userdata
function ICoreServerAPI.SendIngameDiscovery(player, discoveryCode, text, langparams) end

-- Sends a chat message only to given player in given groupId
---@param player IPlayer Represents a player
---@param groupId number
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ICoreServerAPI.SendMessage(player, groupId, message, chatType, data) end

-- Sends a chat message to all online players in given player group
---@param groupid number
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ICoreServerAPI.SendMessageToGroup(groupid, message, chatType, data) end

-- Sends a chat message to all online players in all of their channels
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ICoreServerAPI.BroadcastMessageToAllGroups(message, chatType, data) end

-- Injects a message or command into the server console input processing system. This lets you run commands or chat as Admin.
---@param message string
function ICoreServerAPI.InjectConsole(message) end

-- Calls a command as if given player called it
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param message string
function ICoreServerAPI.HandleCommand(player, message) end

-- Register a new item type
---@param item Item Represents an in game Item of Vintage Story
function ICoreServerAPI.RegisterItem(item) end

-- Register a new Block. Must happen before server runphase LoadGame. These are sent to the client during connect, so only need to register them on the server side.
---@param block Block Basic class for a placeable block
function ICoreServerAPI.RegisterBlock(block) end

-- Registers a new crafting recipe. These are sent to the client during connect, so only need to register them on the server side.
---@param recipe GridRecipe Represents a crafting recipe
function ICoreServerAPI.RegisterCraftingRecipe(recipe) end

-- Registers a new tree generator
---@param generatorCode AssetLocation Defines a complete path to an assets, including it's domain
---@param gen ITreeGenerator
function ICoreServerAPI.RegisterTreeGenerator(generatorCode, gen) end

-- Registers a new tree generator
---@param generatorCode AssetLocation Defines a complete path to an assets, including it's domain
---@param genhandler GrowTreeDelegate
function ICoreServerAPI.RegisterTreeGenerator(generatorCode, genhandler) end

-- Registers a chat command. When registered on the client you access the command by prefixing a dot (.), on the server it's a slash (/)
---@param chatcommand ServerChatCommand A handler for creating server commands.
---@return boolean
function ICoreServerAPI.RegisterCommand(chatcommand) end

-- Registers a chat command. When registered on the client you access the command by prefixing a dot (.), on the server it's a slash (/)
---@param command string
---@param descriptionMsg string
---@param syntaxMsg string
---@param handler ServerChatCommandDelegate
---@param requiredPrivilege? string
---@return boolean
function ICoreServerAPI.RegisterCommand(command, descriptionMsg, syntaxMsg, handler, requiredPrivilege) end

-- For internal use: used to remap block and item Ids, as soon as assets are loaded from disk, before recipes etc. are loaded or anything else which may occur in modsystem AssetsLoaded() methods
function ICoreServerAPI.TriggerOnAssetsFirstLoaded() end


