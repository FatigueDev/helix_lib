---@meta

---@class ServerCoreAPI: APIBase, APIBase, ICoreServerAPI, ICoreAPICommon, ICoreAPI
---@field ClassRegistryNative ClassRegistry
---@field CmdlArguments string
---@field ChatCommands IChatCommandApi
---@field Side EnumAppSide
---@field ClassRegistry IClassRegistryAPI
---@field Assets IAssetManager
---@field ModLoader IModLoader
---@field Permissions IPermissionManager
---@field Groups IGroupManager
---@field PlayerData IPlayerDataManager
---@field Event IServerEventAPI
---@field WorldManager IWorldManagerAPI
---@field Server IServerAPI
---@field Network IServerNetworkAPI
---@field World IServerWorldAccessor
---@field Logger ILogger
---@field ObjectCache table
---@field DataBasePath string
---@field TreeGenWrapper nil
ServerCoreAPI = {}

---@param server ServerMain
---@return ServerCoreAPI
function ServerCoreAPI.ctor(server) end

---@return ClassRegistry
function ServerCoreAPI.get_ClassRegistryNative() end

---@return string
function ServerCoreAPI.get_CmdlArguments() end

---@return IChatCommandApi
function ServerCoreAPI.get_ChatCommands() end

---@return EnumAppSide
function ServerCoreAPI.get_Side() end

---@return IClassRegistryAPI # Interface for creating instances
function ServerCoreAPI.get_ClassRegistry() end

---@return IAssetManager # Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
function ServerCoreAPI.get_Assets() end

---@return IModLoader
function ServerCoreAPI.get_ModLoader() end

---@return IPermissionManager
function ServerCoreAPI.get_Permissions() end

---@return IGroupManager
function ServerCoreAPI.get_Groups() end

---@return IPlayerDataManager
function ServerCoreAPI.get_PlayerData() end

---@return IServerEventAPI # Contains methods to hook into various server processes
function ServerCoreAPI.get_Event() end

---@return IWorldManagerAPI # Methods to modify the game world
function ServerCoreAPI.get_WorldManager() end

---@return IServerAPI # API for general Server features
function ServerCoreAPI.get_Server() end

---@return IServerNetworkAPI # API Features to set up a network channel for custom server<->client data exchange. Server side.
function ServerCoreAPI.get_Network() end

---@return IServerWorldAccessor # The world accessor implemented by the server
function ServerCoreAPI.get_World() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ServerCoreAPI.get_Logger() end

---@param entityClassName string
---@param config EntityProperties
function ServerCoreAPI.RegisterEntityClass(entityClassName, config) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param code string
---@param message? string
---@param langparams userdata
function ServerCoreAPI.SendIngameError(player, code, message, langparams) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param code string
---@param message? string
---@param langparams userdata
function ServerCoreAPI.SendIngameDiscovery(player, code, message, langparams) end

---@param player IPlayer Represents a player
---@param groupid number
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ServerCoreAPI.SendMessage(player, groupid, message, chatType, data) end

---@param groupid number
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ServerCoreAPI.SendMessageToGroup(groupid, message, chatType, data) end

---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ServerCoreAPI.BroadcastMessageToAllGroups(message, chatType, data) end

---@param item Item Represents an in game Item of Vintage Story
function ServerCoreAPI.RegisterItem(item) end

---@param block Block Basic class for a placeable block
function ServerCoreAPI.RegisterBlock(block) end

---@param recipe GridRecipe Represents a crafting recipe
function ServerCoreAPI.RegisterCraftingRecipe(recipe) end

---@param generatorCode AssetLocation Defines a complete path to an assets, including it's domain
---@param gen ITreeGenerator
function ServerCoreAPI.RegisterTreeGenerator(generatorCode, gen) end

---@param generatorCode AssetLocation Defines a complete path to an assets, including it's domain
---@param dele GrowTreeDelegate
function ServerCoreAPI.RegisterTreeGenerator(generatorCode, dele) end

---@param map ColorMap
function ServerCoreAPI.RegisterColorMap(map) end

---@param chatcommand ServerChatCommand A handler for creating server commands.
---@return boolean
function ServerCoreAPI.RegisterCommand(chatcommand) end

---@param command string
---@param descriptionMsg string
---@param syntaxMsg string
---@param handler ServerChatCommandDelegate
---@param requiredPrivilege? string
---@return boolean
function ServerCoreAPI.RegisterCommand(command, descriptionMsg, syntaxMsg, handler, requiredPrivilege) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param message string
function ServerCoreAPI.HandleCommand(player, message) end

---@param message string
function ServerCoreAPI.InjectConsole(message) end

function ServerCoreAPI.TriggerOnAssetsFirstLoaded() end

---@return table
function ServerCoreAPI.get_ObjectCache() end

---@param recipeRegistryCode string
---@return T
function ServerCoreAPI.RegisterRecipeRegistry(recipeRegistryCode) end

---@param classsName string
---@param entity userdata
function ServerCoreAPI.RegisterEntity(classsName, entity) end

---@param className string
---@param entityBehavior userdata
function ServerCoreAPI.RegisterEntityBehaviorClass(className, entityBehavior) end

---@param blockClassName string
---@param type userdata
function ServerCoreAPI.RegisterBlockClass(blockClassName, type) end

---@param className string
---@param type userdata
function ServerCoreAPI.RegisterCropBehavior(className, type) end

---@param className string
---@param blockentity userdata
function ServerCoreAPI.RegisterBlockEntityClass(className, blockentity) end

---@param className string
---@param itemType userdata
function ServerCoreAPI.RegisterItemClass(className, itemType) end

---@param className string
---@param blockBehaviorType userdata
function ServerCoreAPI.RegisterBlockBehaviorClass(className, blockBehaviorType) end

---@param className string
---@param blockBehaviorType userdata
function ServerCoreAPI.RegisterCollectibleBehaviorClass(className, blockBehaviorType) end

---@param className string
---@param blockEntityBehaviorType userdata
function ServerCoreAPI.RegisterBlockEntityBehaviorClass(className, blockEntityBehaviorType) end

---@param className string
---@param mountableInstancer GetMountableDelegate This method needs to find your mountable based on the tree attribute data, which you can write to in IMountable.MountableToTreeAttributes() For example if its an entity, you will want to store the entity id, then this method can simply contain return world.GetEntityById(tree.GetLong("entityId"));
function ServerCoreAPI.RegisterMountable(className, mountableInstancer) end

---@return string
function ServerCoreAPI.get_DataBasePath() end

---@param foldername string
---@return string
function ServerCoreAPI.GetOrCreateDataPath(foldername) end

---@param filename string
---@return T
function ServerCoreAPI.LoadModConfig(filename) end

---@param jsonSerializeableData T
---@param filename string
function ServerCoreAPI.StoreModConfig(jsonSerializeableData, filename) end

---@param jobj JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
---@param filename string
function ServerCoreAPI.StoreModConfig(jobj, filename) end

---@param filename string
---@return JsonObject # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function ServerCoreAPI.LoadModConfig(filename) end

---@return userdata
function ServerCoreAPI.GetType() end

---@return string
function ServerCoreAPI.ToString() end

---@param obj userdata
---@return boolean
function ServerCoreAPI.Equals(obj) end

---@return number
function ServerCoreAPI.GetHashCode() end


