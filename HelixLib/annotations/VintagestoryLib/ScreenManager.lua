---@meta

---@class ScreenManager:  NewFrameHandler, KeyEventHandler, MouseEventHandler
---@field GamePlatform ClientPlatformAbstract
---@field OpenedInventories table
---@field World IWorldAccessor
---@field AsyncSoundLoadComplete boolean
---@field PlayerInventoryManager IPlayerInventoryManager
---@field Player IPlayer
---@field sessionManager SessionManager
---@field loadingText string
---@field ClientIsOffline boolean
---@field api MainMenuAPI
---@field MainThreadId number
---@field GuiComposers GuiComposerManager
---@field Platform ClientPlatformAbstract
---@field FrameProfiler FrameProfilerUtil
---@field KeyboardModifiers KeyModifiers
---@field KeyboardKeyState boolean
---@field MouseButtonState boolean
---@field soundAudioData table
---@field soundAudioDataAsyncLoadTemp table
---@field MainThreadTasks Queue`1
---@field debugDrawCallNextFrame boolean
---@field hotkeyManager HotkeyManager
---@field ParsedArgs ClientProgramArgs
---@field RawCmdLineArgs string
ScreenManager = {}

---@param platform ClientPlatformAbstract
---@return ScreenManager
function ScreenManager.ctor(platform) end

---@return ClientPlatformAbstract
function ScreenManager.get_GamePlatform() end

---@return table
function ScreenManager.get_OpenedInventories() end

---@return IWorldAccessor # Important interface to access the game world.
function ScreenManager.get_World() end

---@param args ClientProgramArgs
---@param rawArgs string
function ScreenManager.Start(args, rawArgs) end

function ScreenManager.registerSettingsWatchers() end

function ScreenManager.DoGameInitStage1() end

function ScreenManager.DoGameInitStage2() end

---@return boolean
function ScreenManager.get_AsyncSoundLoadComplete() end

---@param value boolean
function ScreenManager.set_AsyncSoundLoadComplete(value) end

---@param onCompleted function
function ScreenManager.CatalogSounds(onCompleted) end

---@param game ClientMain
function ScreenManager.LoadSoundsSlow_Async(game) end

function ScreenManager.LoadSoundsInitial() end

---@param game ClientMain
function ScreenManager.LoadSoundsSlow(game) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return AudioData
function ScreenManager.LoadMusicTrack(asset) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return AudioData
function ScreenManager.LoadSound(asset) end

function ScreenManager.loadMods() end

---@param dt number
function ScreenManager.OnNewFrame(dt) end

---@param a function
function ScreenManager.EnqueueMainThreadTask(a) end

---@param a function
---@param msdelay number
function ScreenManager.EnqueueCallBack(a, msdelay) end

---@param className string
---@return IInventory # Basic interface representing an item inventory
function ScreenManager.GetOwnInventory(className) end

---@param packetClient Packet_Client
function ScreenManager.SendPacketClient(packetClient) end

---@param slot ItemSlot The default item slot to item stacks
function ScreenManager.TriggerOnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
function ScreenManager.TriggerOnMouseLeaveSlot(itemSlot) end

---@param itemSlot ItemSlot The default item slot to item stacks
function ScreenManager.TriggerOnMouseClickSlot(itemSlot) end

---@return IPlayerInventoryManager # Let's you do various interesting things with the players inventory.
function ScreenManager.get_PlayerInventoryManager() end

---@return IPlayer # Represents a player
function ScreenManager.get_Player() end

---@param itemstack ItemStack
---@param posX number
---@param posY number
---@param posZ number
---@param size number
---@param color number
---@param rotate? boolean
---@param showStackSize? boolean
function ScreenManager.RenderItemstack(itemstack, posX, posY, posZ, size, color, rotate, showStackSize) end

---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ScreenManager.BeginClipArea(bounds) end

function ScreenManager.EndClipArea() end

---@param e KeyEvent
function ScreenManager.OnKeyDown(e) end

---@param e KeyEvent
function ScreenManager.OnKeyUp(e) end

---@param e KeyEvent
function ScreenManager.OnKeyPress(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function ScreenManager.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function ScreenManager.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function ScreenManager.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function ScreenManager.OnMouseWheel(e) end

---@param screenType userdata
function ScreenManager.LoadAndCacheScreen(screenType) end

---@param screen GuiScreen
function ScreenManager.LoadScreen(screen) end

---@param screen GuiScreen
function ScreenManager.LoadScreenNoLoadCall(screen) end

---@param singleplayer boolean
---@param serverargs StartServerArgs
---@param connectData ServerConnectData
function ScreenManager.StartGame(singleplayer, serverargs, connectData) end

---@param modid string
function ScreenManager.InstallMod(modid) end

---@param host string
---@param password string
function ScreenManager.ConnectToMultiplayer(host, password) end

---@param serverargs StartServerArgs
function ScreenManager.ConnectToSingleplayer(serverargs) end

---@return number
function ScreenManager.GetMouseCurrentX() end

---@return number
function ScreenManager.GetMouseCurrentY() end

---@param name string
function ScreenManager.PlaySound(name) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
function ScreenManager.PlaySound(location) end

---@return ClientPlatformAbstract
function ScreenManager.getGamePlatform() end

---@return userdata
function ScreenManager.GetType() end

---@return string
function ScreenManager.ToString() end

---@param obj userdata
---@return boolean
function ScreenManager.Equals(obj) end

---@return number
function ScreenManager.GetHashCode() end


