---@meta

---@class ClientCoreAPI: APIBase, APIBase, ICoreClientAPI, ICoreAPICommon, ICoreAPI
---@field ClassRegistryNative ClassRegistry
---@field TagConverters table
---@field CmdlArguments string
---@field Side EnumAppSide
---@field ChatCommands IChatCommandApi
---@field ClassRegistry IClassRegistryAPI
---@field Assets IAssetManager
---@field Forms IXPlatformInterface
---@field ModLoader IModLoader
---@field Logger ILogger
---@field IsShuttingDown boolean
---@field IsGamePaused boolean
---@field ElapsedMilliseconds number
---@field InWorldEllapsedMilliseconds number
---@field HideGuis boolean
---@field Event IClientEventAPI
---@field Ambient IAmbientManager
---@field Render IRenderAPI
---@field Shader IShaderAPI
---@field Gui IGuiAPI
---@field Input IInputAPI
---@field ColorPreset IColorPresets
---@field MacroManager IMacroManager
---@field TesselatorManager ITesselatorManager
---@field Tesselator ITesselatorAPI
---@field BlockTextureAtlas IBlockTextureAtlasAPI
---@field ItemTextureAtlas IItemTextureAtlasAPI
---@field EntityTextureAtlas ITextureAtlasAPI
---@field Network IClientNetworkAPI
---@field World IClientWorldAccessor
---@field OpenedGuis function
---@field Settings ISettings
---@field CurrentMusicTrack IMusicTrack
---@field LinkProtocols table
---@field IsSinglePlayer boolean
---@field OpenedToLan boolean
---@field PlayerReadyFired boolean
---@field ObjectCache table
---@field DataBasePath string
---@field linkProtocols table
---@field disposed boolean
ClientCoreAPI = {}

---@param game ClientMain
---@return ClientCoreAPI
function ClientCoreAPI.ctor(game) end

---@return ClassRegistry
function ClientCoreAPI.get_ClassRegistryNative() end

---@return table
function ClientCoreAPI.get_TagConverters() end

---@return string
function ClientCoreAPI.get_CmdlArguments() end

---@return EnumAppSide
function ClientCoreAPI.get_Side() end

---@return IChatCommandApi
function ClientCoreAPI.get_ChatCommands() end

---@return IClassRegistryAPI # Interface for creating instances
function ClientCoreAPI.get_ClassRegistry() end

---@return IAssetManager # Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
function ClientCoreAPI.get_Assets() end

---@return IXPlatformInterface # The platform interface for various controls.  Used by the game to handle various properties.
function ClientCoreAPI.get_Forms() end

---@return IModLoader
function ClientCoreAPI.get_ModLoader() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ClientCoreAPI.get_Logger() end

---@return boolean
function ClientCoreAPI.get_IsShuttingDown() end

---@return boolean
function ClientCoreAPI.get_IsGamePaused() end

---@return number
function ClientCoreAPI.get_ElapsedMilliseconds() end

---@return number
function ClientCoreAPI.get_InWorldEllapsedMilliseconds() end

---@return boolean
function ClientCoreAPI.get_HideGuis() end

---@return IClientEventAPI # Contains some client specific events you can hook into
function ClientCoreAPI.get_Event() end

---@return IAmbientManager # This is the system that manages the worlds ambient settings, such as fog color/density and clouds. The ambient manager basically blends ambientmodifiers on top of each other to generate the final ambient values. Blending is in order how the modifiers are held in CurrentModifiers in the likes of float weight = modifier.FogMin.Weight; BlendedFogMin = w * modifier.FogMin.Value + (1 - w) * BlendedFogMin;
function ClientCoreAPI.get_Ambient() end

---@return IRenderAPI # The main api component to assist you in rendering pretty stuff onto the screen
function ClientCoreAPI.get_Render() end

---@return IShaderAPI # API for configuring and loading GLSL Shaders
function ClientCoreAPI.get_Shader() end

---@return IGuiAPI
function ClientCoreAPI.get_Gui() end

---@return IInputAPI # This interface manages the inputs of the player and is used mostly on the client side.  
function ClientCoreAPI.get_Input() end

---@return IColorPresets # Facilitates the Accessibility tab wireframe colors setting.  Offers three preset color options, "Default", "Preset2" and "Preset3". The selection between these three options is chosen by the ClientSettings int value "guiColorsPreset". Within these presets, individual color values are stored by string key.
function ClientCoreAPI.get_ColorPreset() end

---@return IMacroManager
function ClientCoreAPI.get_MacroManager() end

---@return ITesselatorManager # Manager interface for Tesselators.
function ClientCoreAPI.get_TesselatorManager() end

---@return ITesselatorAPI # Interface that allows custom model model meshing for items, blocks and entities Texturing crash course: 1. Block, Item and Entity textures are loaded from json files in the form of a CompositeTexture instance 2. After connecting to a game server, the client inserts all of these textures into their type-respective texture atlasses 3. After insertion a "texture sub-id" is left behind in the CompositeTexture.Baked Property 4. You can now find the position of the texture inside the atlas through the Block/Item/Entity-TextureAtlasPositions arrays (teturesubid is the array key)  Shape Tesselation crash course: 1. Block and Item shapes are loaded from json files in the form of a CompositeShape instance 2. A CompositeShape instance hold some block/item specific information as well as an identifier to a Shape instance 4. After connecting to a game server, the client loads all shapes from the shape folder then finds each blocks/items shape by its shape identifier  5. Result is a MeshData instance that holds all vertices, UV coords, colors and etc. for each block 6. That meshdata instance is     a) Held as-is in memory for using during chunk tesselation (you can get a reference to it through getDefaultBlockMesh())    b) "Compiled" to a Model for use during rendering in the gui.        Model Compilation means all it's mesh data is uploaded onto the graphcis through a VAO and a ModelRef instance is left behind which       can be used by the RenderAPI to render it.
function ClientCoreAPI.get_Tesselator() end

---@return IBlockTextureAtlasAPI # Block texture Atlas
function ClientCoreAPI.get_BlockTextureAtlas() end

---@return IItemTextureAtlasAPI # Item texture Atlas.
function ClientCoreAPI.get_ItemTextureAtlas() end

---@return ITextureAtlasAPI # Entity texture Atlas.
function ClientCoreAPI.get_EntityTextureAtlas() end

---@return IClientNetworkAPI # API Features to set up a network channel for custom server<->client data exchange. Client side.
function ClientCoreAPI.get_Network() end

---@return IClientWorldAccessor # The world accessor implemented by the client, offers some extra features only available on the client
function ClientCoreAPI.get_World() end

---@param entityClassName string
---@param config EntityProperties
function ClientCoreAPI.RegisterEntityClass(entityClassName, config) end

---@param protocolname string
---@param onLinkClicked function
function ClientCoreAPI.RegisterLinkProtocol(protocolname, onLinkClicked) end

---@return function
function ClientCoreAPI.get_OpenedGuis() end

---@return ISettings # Setting interface for multiple settings.
function ClientCoreAPI.get_Settings() end

---@return IMusicTrack
function ClientCoreAPI.get_CurrentMusicTrack() end

---@return table
function ClientCoreAPI.get_LinkProtocols() end

---@return boolean
function ClientCoreAPI.get_IsSinglePlayer() end

---@return boolean
function ClientCoreAPI.get_OpenedToLan() end

---@return boolean
function ClientCoreAPI.get_PlayerReadyFired() end

---@param packet userdata
function ClientCoreAPI.SendPacketClient(packet) end

---@param chatcommand ClientChatCommand A handle for creating client commands.
---@return boolean
function ClientCoreAPI.RegisterCommand(chatcommand) end

---@param command string
---@param descriptionMsg string
---@param syntaxMsg string
---@param handler ClientChatCommandDelegate
---@return boolean
function ClientCoreAPI.RegisterCommand(command, descriptionMsg, syntaxMsg, handler) end

---@param sender userdata
---@param errorCode string
---@param text string
function ClientCoreAPI.TriggerIngameError(sender, errorCode, text) end

---@param sender userdata
---@param errorCode string
---@param text string
function ClientCoreAPI.TriggerIngameDiscovery(sender, errorCode, text) end

---@param className string
---@param rendererType userdata
function ClientCoreAPI.RegisterEntityRendererClass(className, rendererType) end

---@param message string
function ClientCoreAPI.ShowChatMessage(message) end

---@param message string
function ClientCoreAPI.TriggerChatMessage(message) end

---@param message string
---@param groupId number
---@param data? string
function ClientCoreAPI.SendChatMessage(message, groupId, data) end

---@param message string
---@param data? string
function ClientCoreAPI.SendChatMessage(message, data) end

---@param message string
function ClientCoreAPI.ShowChatNotification(message) end

---@param soundLocation AssetLocation Defines a complete path to an assets, including it's domain
---@param priority number
---@param soundType EnumSoundType
---@param onLoaded? function
---@return MusicTrack # Adds a basic music track.
function ClientCoreAPI.StartTrack(soundLocation, priority, soundType, onLoaded) end

---@param map ColorMap
function ClientCoreAPI.RegisterColorMap(map) end

---@param paused boolean
function ClientCoreAPI.PauseGame(paused) end

---@return table
function ClientCoreAPI.get_ObjectCache() end

---@param recipeRegistryCode string
---@return T
function ClientCoreAPI.RegisterRecipeRegistry(recipeRegistryCode) end

---@param classsName string
---@param entity userdata
function ClientCoreAPI.RegisterEntity(classsName, entity) end

---@param className string
---@param entityBehavior userdata
function ClientCoreAPI.RegisterEntityBehaviorClass(className, entityBehavior) end

---@param blockClassName string
---@param type userdata
function ClientCoreAPI.RegisterBlockClass(blockClassName, type) end

---@param className string
---@param type userdata
function ClientCoreAPI.RegisterCropBehavior(className, type) end

---@param className string
---@param blockentity userdata
function ClientCoreAPI.RegisterBlockEntityClass(className, blockentity) end

---@param className string
---@param itemType userdata
function ClientCoreAPI.RegisterItemClass(className, itemType) end

---@param className string
---@param blockBehaviorType userdata
function ClientCoreAPI.RegisterBlockBehaviorClass(className, blockBehaviorType) end

---@param className string
---@param blockBehaviorType userdata
function ClientCoreAPI.RegisterCollectibleBehaviorClass(className, blockBehaviorType) end

---@param className string
---@param blockEntityBehaviorType userdata
function ClientCoreAPI.RegisterBlockEntityBehaviorClass(className, blockEntityBehaviorType) end

---@param className string
---@param mountableInstancer GetMountableDelegate This method needs to find your mountable based on the tree attribute data, which you can write to in IMountable.MountableToTreeAttributes() For example if its an entity, you will want to store the entity id, then this method can simply contain return world.GetEntityById(tree.GetLong("entityId"));
function ClientCoreAPI.RegisterMountable(className, mountableInstancer) end

---@return string
function ClientCoreAPI.get_DataBasePath() end

---@param foldername string
---@return string
function ClientCoreAPI.GetOrCreateDataPath(foldername) end

---@param filename string
---@return T
function ClientCoreAPI.LoadModConfig(filename) end

---@param jsonSerializeableData T
---@param filename string
function ClientCoreAPI.StoreModConfig(jsonSerializeableData, filename) end

---@param jobj JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
---@param filename string
function ClientCoreAPI.StoreModConfig(jobj, filename) end

---@param filename string
---@return JsonObject # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function ClientCoreAPI.LoadModConfig(filename) end

---@return userdata
function ClientCoreAPI.GetType() end

---@return string
function ClientCoreAPI.ToString() end

---@param obj userdata
---@return boolean
function ClientCoreAPI.Equals(obj) end

---@return number
function ClientCoreAPI.GetHashCode() end


