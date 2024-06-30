---@meta

-- Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@class ICoreAPI:  ICoreAPICommon
---@field Logger ILogger The local Logger instance.
---@field CmdlArguments string The command line arguments that were used to start the client or server application
---@field ChatCommands IChatCommandApi
---@field Side EnumAppSide Returns if you are currently on server or on client
---@field Event IEventAPI Api component to register/trigger events
---@field World IWorldAccessor Second API Component for access/modify everything game world related
---@field ClassRegistry IClassRegistryAPI API Compoment for creating instances of certain classes, such as Itemstacks
---@field Network INetworkAPI API for sending/receiving network packets
---@field Assets IAssetManager API Component for loading and reloading one or multiple assets at once from the assets folder
---@field ModLoader IModLoader API Component for checking for and interacting with other mods and mod systems
ICoreAPI = {}


---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ICoreAPI.get_Logger() end

---@return string
function ICoreAPI.get_CmdlArguments() end

---@return IChatCommandApi
function ICoreAPI.get_ChatCommands() end

---@return EnumAppSide
function ICoreAPI.get_Side() end

---@return IEventAPI # Events that are available on the server and the client
function ICoreAPI.get_Event() end

---@return IWorldAccessor # Important interface to access the game world.
function ICoreAPI.get_World() end

---@return IClassRegistryAPI # Interface for creating instances
function ICoreAPI.get_ClassRegistry() end

---@return INetworkAPI
function ICoreAPI.get_Network() end

---@return IAssetManager # Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
function ICoreAPI.get_Assets() end

---@return IModLoader
function ICoreAPI.get_ModLoader() end

-- Registers a new entity config for given entity class
---@param entityClassName string
---@param config EntityProperties
function ICoreAPI.RegisterEntityClass(entityClassName, config) end


