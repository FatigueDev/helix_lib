---@meta

-- The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@class ICoreClientAPI:  ICoreAPICommon, ICoreAPI
---@field LinkProtocols table Add your own link protocol here if you want to implement a custom protocol. E.g. image://url-to-picture
---@field TagConverters table Add your own rich text elements here. Your will need to convert a VTML tag into a RichTextComponentBase element. 
---@field Settings ISettings The clients game settings as stored in the clientsettings.json
---@field Forms IXPlatformInterface Platform independent ui methods and features. 
---@field MacroManager IMacroManager Api to the client side macros system
---@field ElapsedMilliseconds number Amount of milliseconds ellapsed since client startup
---@field InWorldEllapsedMilliseconds number Amount of milliseconds ellapsed while in a running game that is not paused
---@field IsShuttingDown boolean True if the client is currently in the process of exiting
---@field IsGamePaused boolean True if the game is currently paused (only available in singleplayer)
---@field IsSinglePlayer boolean True if this is a singleplayer session
---@field OpenedToLan boolean
---@field HideGuis boolean If true, the player is in gui-less mode (through the F4 key)
---@field PlayerReadyFired boolean True if all SendPlayerNowReady() was sent, signalling the player is now ready (called by the character selector upon submit)
---@field Ambient IAmbientManager API Component to control the clients ambient values
---@field Event IClientEventAPI API Component for registering to various Events
---@field Render IRenderAPI API for Rendering stuff onto the screen using OpenGL
---@field Gui IGuiAPI API for GUI Related methods
---@field Input IInputAPI API for Mouse / Keyboard input related things
---@field TesselatorManager ITesselatorManager Holds the default meshes of all blocks
---@field Tesselator ITesselatorAPI API for Meshing in the Mainthread. Thread safe.
---@field BlockTextureAtlas IBlockTextureAtlasAPI API for the Block Texture Atlas
---@field ItemTextureAtlas IItemTextureAtlasAPI API for the Item Texture Atlas
---@field EntityTextureAtlas ITextureAtlasAPI API for the Entity Texture Atlas
---@field ColorPreset IColorPresets Fetch color configs, used for accessibility e.g. for knapping wireframe gridlines
---@field Shader IShaderAPI API for Rendering stuff onto the screen using OpenGL
---@field Network IClientNetworkAPI API for doing sending/receiving network packets
---@field World IClientWorldAccessor API for accessing anything in the game world
---@field OpenedGuis function Active GUI objects.
---@field CurrentMusicTrack IMusicTrack Returns the currently playing music track, if any is playing
ICoreClientAPI = {}


---@return table
function ICoreClientAPI.get_LinkProtocols() end

---@return table
function ICoreClientAPI.get_TagConverters() end

---@return ISettings # Setting interface for multiple settings.
function ICoreClientAPI.get_Settings() end

---@return IXPlatformInterface # The platform interface for various controls.  Used by the game to handle various properties.
function ICoreClientAPI.get_Forms() end

---@return IMacroManager
function ICoreClientAPI.get_MacroManager() end

---@return number
function ICoreClientAPI.get_ElapsedMilliseconds() end

---@return number
function ICoreClientAPI.get_InWorldEllapsedMilliseconds() end

---@return boolean
function ICoreClientAPI.get_IsShuttingDown() end

---@return boolean
function ICoreClientAPI.get_IsGamePaused() end

---@return boolean
function ICoreClientAPI.get_IsSinglePlayer() end

---@return boolean
function ICoreClientAPI.get_OpenedToLan() end

---@return boolean
function ICoreClientAPI.get_HideGuis() end

---@return boolean
function ICoreClientAPI.get_PlayerReadyFired() end

---@return IAmbientManager # This is the system that manages the worlds ambient settings, such as fog color/density and clouds. The ambient manager basically blends ambientmodifiers on top of each other to generate the final ambient values. Blending is in order how the modifiers are held in CurrentModifiers in the likes of float weight = modifier.FogMin.Weight; BlendedFogMin = w * modifier.FogMin.Value + (1 - w) * BlendedFogMin;
function ICoreClientAPI.get_Ambient() end

---@return IClientEventAPI # Contains some client specific events you can hook into
function ICoreClientAPI.get_Event() end

---@return IRenderAPI # The main api component to assist you in rendering pretty stuff onto the screen
function ICoreClientAPI.get_Render() end

---@return IGuiAPI
function ICoreClientAPI.get_Gui() end

---@return IInputAPI # This interface manages the inputs of the player and is used mostly on the client side.  
function ICoreClientAPI.get_Input() end

---@return ITesselatorManager # Manager interface for Tesselators.
function ICoreClientAPI.get_TesselatorManager() end

---@return ITesselatorAPI # Interface that allows custom model model meshing for items, blocks and entities Texturing crash course: 1. Block, Item and Entity textures are loaded from json files in the form of a CompositeTexture instance 2. After connecting to a game server, the client inserts all of these textures into their type-respective texture atlasses 3. After insertion a "texture sub-id" is left behind in the CompositeTexture.Baked Property 4. You can now find the position of the texture inside the atlas through the Block/Item/Entity-TextureAtlasPositions arrays (teturesubid is the array key)  Shape Tesselation crash course: 1. Block and Item shapes are loaded from json files in the form of a CompositeShape instance 2. A CompositeShape instance hold some block/item specific information as well as an identifier to a Shape instance 4. After connecting to a game server, the client loads all shapes from the shape folder then finds each blocks/items shape by its shape identifier  5. Result is a MeshData instance that holds all vertices, UV coords, colors and etc. for each block 6. That meshdata instance is     a) Held as-is in memory for using during chunk tesselation (you can get a reference to it through getDefaultBlockMesh())    b) "Compiled" to a Model for use during rendering in the gui.        Model Compilation means all it's mesh data is uploaded onto the graphcis through a VAO and a ModelRef instance is left behind which       can be used by the RenderAPI to render it.
function ICoreClientAPI.get_Tesselator() end

---@return IBlockTextureAtlasAPI # Block texture Atlas
function ICoreClientAPI.get_BlockTextureAtlas() end

---@return IItemTextureAtlasAPI # Item texture Atlas.
function ICoreClientAPI.get_ItemTextureAtlas() end

---@return ITextureAtlasAPI # Entity texture Atlas.
function ICoreClientAPI.get_EntityTextureAtlas() end

---@return IColorPresets # Facilitates the Accessibility tab wireframe colors setting.  Offers three preset color options, "Default", "Preset2" and "Preset3". The selection between these three options is chosen by the ClientSettings int value "guiColorsPreset". Within these presets, individual color values are stored by string key.
function ICoreClientAPI.get_ColorPreset() end

---@return IShaderAPI # API for configuring and loading GLSL Shaders
function ICoreClientAPI.get_Shader() end

---@return IClientNetworkAPI # API Features to set up a network channel for custom server<->client data exchange. Client side.
function ICoreClientAPI.get_Network() end

---@return IClientWorldAccessor # The world accessor implemented by the client, offers some extra features only available on the client
function ICoreClientAPI.get_World() end

---@return function
function ICoreClientAPI.get_OpenedGuis() end

-- Registers a chat command
---@param chatcommand ClientChatCommand A handle for creating client commands.
---@return boolean
function ICoreClientAPI.RegisterCommand(chatcommand) end

-- Registers a chat command
---@param command string
---@param descriptionMsg string
---@param syntaxMsg string
---@param handler ClientChatCommandDelegate
---@return boolean
function ICoreClientAPI.RegisterCommand(command, descriptionMsg, syntaxMsg, handler) end

-- Registers an entity renderer for given entity
---@param className string
---@param rendererType userdata
function ICoreClientAPI.RegisterEntityRendererClass(className, rendererType) end

-- Register a link protocol handler
---@param protocolname string
---@param onLinkClicked function
function ICoreClientAPI.RegisterLinkProtocol(protocolname, onLinkClicked) end

-- Shows a client side only chat message in the current chat channel. Uses the same code paths a server => client message takes. Does not execute client commands.
---@param message string
function ICoreClientAPI.ShowChatMessage(message) end

-- Triggers a discovery event. HudDiscoveryMessage registers to this event and fades in/out a "discovery message" on the players screen
---@param sender userdata
---@param errorCode string
---@param text string
function ICoreClientAPI.TriggerIngameDiscovery(sender, errorCode, text) end

-- Triggers an in-game-error event. HudIngameError registers to this event and shows a vibrating red text on the players screen
---@param sender userdata
---@param errorCode string
---@param text string
function ICoreClientAPI.TriggerIngameError(sender, errorCode, text) end

-- Same as ShowChatMessage but will also execute client commands if they are prefixed with a dot.
---@param message string
function ICoreClientAPI.TriggerChatMessage(message) end

-- Sends a chat message to the server
---@param message string
---@param groupId number
---@param data? string
function ICoreClientAPI.SendChatMessage(message, groupId, data) end

-- Sends a chat message to the server in the players currently active channel
---@param message string
---@param data? string
function ICoreClientAPI.SendChatMessage(message, data) end

-- Tells the music engine to load and immediately start given track once loaded, if the priority is higher than the currently playing track. May also be stopped while playing if another track with a higher priority is started.
-- If you supply an onLoaded method the track is not started immediately and you can manually start it at any given time by calling sound.Start()
---@param soundLocation AssetLocation Defines a complete path to an assets, including it's domain
---@param priority number
---@param soundType EnumSoundType
---@param onLoaded? function
---@return MusicTrack # Adds a basic music track.
function ICoreClientAPI.StartTrack(soundLocation, priority, soundType, onLoaded) end

---@return IMusicTrack
function ICoreClientAPI.get_CurrentMusicTrack() end

---@param paused boolean
function ICoreClientAPI.PauseGame(paused) end


