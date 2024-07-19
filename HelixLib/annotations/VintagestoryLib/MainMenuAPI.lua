---@meta

---@class MainMenuAPI:  ICoreClientAPI, ICoreAPICommon, ICoreAPI
---@field Render IRenderAPI
---@field Input IInputAPI
---@field Gui IGuiAPI
---@field IsShuttingDown boolean
---@field ElapsedMilliseconds number
---@field Assets IAssetManager
---@field Logger ILogger
---@field Settings ISettings
---@field TagConverters table
---@field ColorPreset IColorPresets
---@field IsGamePaused boolean
---@field HideGuis boolean
---@field Ambient IAmbientManager
---@field Event IClientEventAPI
---@field TesselatorManager ITesselatorManager
---@field Tesselator ITesselatorAPI
---@field TesselatorThreadSafe ITesselatorAPI
---@field BlockTextureAtlas IBlockTextureAtlasAPI
---@field ItemTextureAtlas IItemTextureAtlasAPI
---@field EntityTextureAtlas ITextureAtlasAPI
---@field Shader IShaderAPI
---@field Network IClientNetworkAPI
---@field World IClientWorldAccessor
---@field MouseWorldInteractAnyway boolean
---@field HotKeys OrderedDictionary`2
---@field CmdlArguments string
---@field Side EnumAppSide
---@field ClassRegistry IClassRegistryAPI
---@field ModLoader IModLoader
---@field ObjectCache table
---@field DataBasePath string
---@field OpenedGuis function
---@field InWorldEllapsedMilliseconds number
---@field Forms IXPlatformInterface
---@field CurrentMusicTrack IMusicTrack
---@field LinkProtocols table
---@field MacroManager IMacroManager
---@field IsSinglePlayer boolean
---@field PlayerReadyFired boolean
---@field ChatCommands IChatCommandApi
---@field OpenedToLan boolean
MainMenuAPI = {}

---@param screenManager ScreenManager
---@return MainMenuAPI
function MainMenuAPI.ctor(screenManager) end

---@return IRenderAPI # The main api component to assist you in rendering pretty stuff onto the screen
function MainMenuAPI.get_Render() end

---@return IInputAPI # This interface manages the inputs of the player and is used mostly on the client side.  
function MainMenuAPI.get_Input() end

---@return IGuiAPI
function MainMenuAPI.get_Gui() end

---@return boolean
function MainMenuAPI.get_IsShuttingDown() end

---@return number
function MainMenuAPI.get_ElapsedMilliseconds() end

---@return IAssetManager # Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
function MainMenuAPI.get_Assets() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function MainMenuAPI.get_Logger() end

---@return ISettings # Setting interface for multiple settings.
function MainMenuAPI.get_Settings() end

---@return table
function MainMenuAPI.get_TagConverters() end

---@return IColorPresets # Facilitates the Accessibility tab wireframe colors setting.  Offers three preset color options, "Default", "Preset2" and "Preset3". The selection between these three options is chosen by the ClientSettings int value "guiColorsPreset". Within these presets, individual color values are stored by string key.
function MainMenuAPI.get_ColorPreset() end

---@return boolean
function MainMenuAPI.get_IsGamePaused() end

---@return boolean
function MainMenuAPI.get_HideGuis() end

---@return IAmbientManager # This is the system that manages the worlds ambient settings, such as fog color/density and clouds. The ambient manager basically blends ambientmodifiers on top of each other to generate the final ambient values. Blending is in order how the modifiers are held in CurrentModifiers in the likes of float weight = modifier.FogMin.Weight; BlendedFogMin = w * modifier.FogMin.Value + (1 - w) * BlendedFogMin;
function MainMenuAPI.get_Ambient() end

---@return IClientEventAPI # Contains some client specific events you can hook into
function MainMenuAPI.get_Event() end

---@return ITesselatorManager # Manager interface for Tesselators.
function MainMenuAPI.get_TesselatorManager() end

---@return ITesselatorAPI # Interface that allows custom model model meshing for items, blocks and entities Texturing crash course: 1. Block, Item and Entity textures are loaded from json files in the form of a CompositeTexture instance 2. After connecting to a game server, the client inserts all of these textures into their type-respective texture atlasses 3. After insertion a "texture sub-id" is left behind in the CompositeTexture.Baked Property 4. You can now find the position of the texture inside the atlas through the Block/Item/Entity-TextureAtlasPositions arrays (teturesubid is the array key)  Shape Tesselation crash course: 1. Block and Item shapes are loaded from json files in the form of a CompositeShape instance 2. A CompositeShape instance hold some block/item specific information as well as an identifier to a Shape instance 4. After connecting to a game server, the client loads all shapes from the shape folder then finds each blocks/items shape by its shape identifier  5. Result is a MeshData instance that holds all vertices, UV coords, colors and etc. for each block 6. That meshdata instance is     a) Held as-is in memory for using during chunk tesselation (you can get a reference to it through getDefaultBlockMesh())    b) "Compiled" to a Model for use during rendering in the gui.        Model Compilation means all it's mesh data is uploaded onto the graphcis through a VAO and a ModelRef instance is left behind which       can be used by the RenderAPI to render it.
function MainMenuAPI.get_Tesselator() end

---@return ITesselatorAPI # Interface that allows custom model model meshing for items, blocks and entities Texturing crash course: 1. Block, Item and Entity textures are loaded from json files in the form of a CompositeTexture instance 2. After connecting to a game server, the client inserts all of these textures into their type-respective texture atlasses 3. After insertion a "texture sub-id" is left behind in the CompositeTexture.Baked Property 4. You can now find the position of the texture inside the atlas through the Block/Item/Entity-TextureAtlasPositions arrays (teturesubid is the array key)  Shape Tesselation crash course: 1. Block and Item shapes are loaded from json files in the form of a CompositeShape instance 2. A CompositeShape instance hold some block/item specific information as well as an identifier to a Shape instance 4. After connecting to a game server, the client loads all shapes from the shape folder then finds each blocks/items shape by its shape identifier  5. Result is a MeshData instance that holds all vertices, UV coords, colors and etc. for each block 6. That meshdata instance is     a) Held as-is in memory for using during chunk tesselation (you can get a reference to it through getDefaultBlockMesh())    b) "Compiled" to a Model for use during rendering in the gui.        Model Compilation means all it's mesh data is uploaded onto the graphcis through a VAO and a ModelRef instance is left behind which       can be used by the RenderAPI to render it.
function MainMenuAPI.get_TesselatorThreadSafe() end

---@return IBlockTextureAtlasAPI # Block texture Atlas
function MainMenuAPI.get_BlockTextureAtlas() end

---@return IItemTextureAtlasAPI # Item texture Atlas.
function MainMenuAPI.get_ItemTextureAtlas() end

---@return ITextureAtlasAPI # Entity texture Atlas.
function MainMenuAPI.get_EntityTextureAtlas() end

---@return IShaderAPI # API for configuring and loading GLSL Shaders
function MainMenuAPI.get_Shader() end

---@return IClientNetworkAPI # API Features to set up a network channel for custom server<->client data exchange. Client side.
function MainMenuAPI.get_Network() end

---@return IClientWorldAccessor # The world accessor implemented by the client, offers some extra features only available on the client
function MainMenuAPI.get_World() end

---@return boolean
function MainMenuAPI.get_MouseWorldInteractAnyway() end

---@param value boolean
function MainMenuAPI.set_MouseWorldInteractAnyway(value) end

---@return OrderedDictionary`2 # Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
function MainMenuAPI.get_HotKeys() end

---@return string
function MainMenuAPI.get_CmdlArguments() end

---@return EnumAppSide
function MainMenuAPI.get_Side() end

---@return IClassRegistryAPI # Interface for creating instances
function MainMenuAPI.get_ClassRegistry() end

---@return IModLoader
function MainMenuAPI.get_ModLoader() end

---@return table
function MainMenuAPI.get_ObjectCache() end

---@return string
function MainMenuAPI.get_DataBasePath() end

---@return function
function MainMenuAPI.get_OpenedGuis() end

---@param value function
function MainMenuAPI.set_OpenedGuis(value) end

---@return number
function MainMenuAPI.get_InWorldEllapsedMilliseconds() end

---@return IXPlatformInterface # The platform interface for various controls.  Used by the game to handle various properties.
function MainMenuAPI.get_Forms() end

---@return IMusicTrack
function MainMenuAPI.get_CurrentMusicTrack() end

---@return table
function MainMenuAPI.get_LinkProtocols() end

---@param value table
function MainMenuAPI.set_LinkProtocols(value) end

---@return IMacroManager
function MainMenuAPI.get_MacroManager() end

---@return boolean
function MainMenuAPI.get_IsSinglePlayer() end

---@return boolean
function MainMenuAPI.get_PlayerReadyFired() end

---@return IChatCommandApi
function MainMenuAPI.get_ChatCommands() end

---@return boolean
function MainMenuAPI.get_OpenedToLan() end

---@param tintIndex number
---@param color number
---@param posX number
---@param posY number
---@param posZ number
---@param fipRb boolean
---@return number
function MainMenuAPI.ApplyColorMapOnRgba(tintIndex, color, posX, posY, posZ, fipRb) end

---@param foldername string
---@return string
function MainMenuAPI.GetOrCreateDataPath(foldername) end

---@param blockId number
---@param textureSubId number
---@return number
function MainMenuAPI.GetRandomBlockPixel(blockId, textureSubId) end

---@param blockId number
---@param textureSubId number
---@param px number
---@param py number
---@return number
function MainMenuAPI.GetBlockPixelAt(blockId, textureSubId, px, py) end

---@param itemId number
---@param textureSubId number
---@return number
function MainMenuAPI.GetRandomItemPixel(itemId, textureSubId) end

---@param className string
---@param blockBehaviorType userdata
function MainMenuAPI.RegisterBlockBehaviorClass(className, blockBehaviorType) end

---@param className string
---@param blockBehaviorType userdata
function MainMenuAPI.RegisterBlockEntityBehaviorClass(className, blockBehaviorType) end

---@param className string
---@param blockType userdata
function MainMenuAPI.RegisterBlockClass(className, blockType) end

---@param className string
---@param blockentityType userdata
function MainMenuAPI.RegisterBlockEntityClass(className, blockentityType) end

---@param chatcommand ClientChatCommand A handle for creating client commands.
---@return boolean
function MainMenuAPI.RegisterCommand(chatcommand) end

---@param command string
---@param descriptionMsg string
---@param syntaxMsg string
---@param handler ClientChatCommandDelegate
---@return boolean
function MainMenuAPI.RegisterCommand(command, descriptionMsg, syntaxMsg, handler) end

---@param className string
---@param type userdata
function MainMenuAPI.RegisterCropBehavior(className, type) end

---@param className string
---@param entity userdata
function MainMenuAPI.RegisterEntity(className, entity) end

---@param className string
---@param entityBehavior userdata
function MainMenuAPI.RegisterEntityBehaviorClass(className, entityBehavior) end

---@param entityClassName string
---@param config EntityProperties
function MainMenuAPI.RegisterEntityClass(entityClassName, config) end

---@param className string
---@param rendererType userdata
function MainMenuAPI.RegisterEntityRendererClass(className, rendererType) end

---@param hotkeyCode string
---@param name string
---@param key Keys
---@param type? HotkeyType
---@param altPressed? boolean
---@param ctrlPressed? boolean
---@param shiftPressed? boolean
function MainMenuAPI.RegisterHotKey(hotkeyCode, name, key, type, altPressed, ctrlPressed, shiftPressed) end

---@param className string
---@param itemType userdata
function MainMenuAPI.RegisterItemClass(className, itemType) end

---@param className string
---@param mountableInstancer GetMountableDelegate This method needs to find your mountable based on the tree attribute data, which you can write to in IMountable.MountableToTreeAttributes() For example if its an entity, you will want to store the entity id, then this method can simply contain return world.GetEntityById(tree.GetLong("entityId"));
function MainMenuAPI.RegisterMountable(className, mountableInstancer) end

---@param message string
function MainMenuAPI.TriggerChatMessage(message) end

---@param message string
---@param groupId number
---@param data? string
function MainMenuAPI.SendChatMessage(message, groupId, data) end

---@param message string
---@param data? string
function MainMenuAPI.SendChatMessage(message, data) end

---@param hotkeyCode string
---@param handler function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function MainMenuAPI.SetHotKeyHandler(hotkeyCode, handler) end

---@param message string
function MainMenuAPI.ShowChatMessage(message) end

---@param packetClient userdata
function MainMenuAPI.SendPacketClient(packetClient) end

---@param tintIndex number
---@param color number
---@param rain number
---@param temp number
---@param flipRb? boolean
---@return number
function MainMenuAPI.ApplyColorMapOnRgba(tintIndex, color, rain, temp, flipRb) end

---@param sender userdata
---@param errorCode string
---@param text string
function MainMenuAPI.TriggerIngameError(sender, errorCode, text) end

---@param message string
function MainMenuAPI.ShowChatNotification(message) end

---@param soundLocation AssetLocation Defines a complete path to an assets, including it's domain
---@param priority number
---@param soundType EnumSoundType
---@param onLoaded? function
---@return MusicTrack # Adds a basic music track.
function MainMenuAPI.StartTrack(soundLocation, priority, soundType, onLoaded) end

---@param protocolname string
---@param onLinkClicked function
function MainMenuAPI.RegisterLinkProtocol(protocolname, onLinkClicked) end

---@param jsonSerializeableData T
---@param filename string
function MainMenuAPI.StoreModConfig(jsonSerializeableData, filename) end

---@param filename string
---@return T
function MainMenuAPI.LoadModConfig(filename) end

---@param map ColorMap
function MainMenuAPI.RegisterColorMap(map) end

---@param sender userdata
---@param errorCode string
---@param text string
function MainMenuAPI.TriggerIngameDiscovery(sender, errorCode, text) end

---@param className string
---@param blockBehaviorType userdata
function MainMenuAPI.RegisterCollectibleBehaviorClass(className, blockBehaviorType) end

---@param recipeRegistryCode string
---@return T
function MainMenuAPI.RegisterRecipeRegistry(recipeRegistryCode) end

function MainMenuAPI.ResolveBlockColorMaps() end

---@param paused boolean
function MainMenuAPI.PauseGame(paused) end

---@param jobj JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
---@param filename string
function MainMenuAPI.StoreModConfig(jobj, filename) end

---@param filename string
---@return JsonObject # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function MainMenuAPI.LoadModConfig(filename) end

---@return userdata
function MainMenuAPI.GetType() end

---@return string
function MainMenuAPI.ToString() end

---@param obj userdata
---@return boolean
function MainMenuAPI.Equals(obj) end

---@return number
function MainMenuAPI.GetHashCode() end


