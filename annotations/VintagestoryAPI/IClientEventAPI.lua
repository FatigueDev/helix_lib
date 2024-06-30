---@meta

-- Contains some client specific events you can hook into
---@class IClientEventAPI:  IEventAPI
---@field ChatMessage ChatLineDelegate Called when a chat message was received
---@field OnSendChatMessage ClientChatLineDelegate Called before a chat message is sent to the server
---@field PlayerJoin PlayerEventDelegate Called when a player joins. The Entity of the player might be null if out of range!
---@field PlayerLeave PlayerEventDelegate Called whenever a player disconnects (timeout, leave, disconnect, kick, etc.). The Entity of the player might be null if out of range!
---@field PlayerDeath PlayerEventDelegate Called when the player dies
---@field IsPlayerReady IsPlayerReadyDelegate Fired when a player is ready to join but awaits any potential mod-user interaction, such as a character selection screen
---@field PlayerEntitySpawn PlayerEventDelegate Called when a players entity got in range
---@field PlayerEntityDespawn PlayerEventDelegate Called whenever a players got out of range
---@field PauseResume OnGamePauseResume When the game was paused/resumed (only in single player)
---@field LeaveWorld function When the player wants to leave the world to go back to the main menu
---@field LeftWorld function When the player left the world to go back to the main menu
---@field BlockChanged BlockChangedDelegate When a player block has been modified. OldBlock param may be null!
---@field TestBlockAccess TestBlockAccessDelegate When player tries to modify a block
---@field BeforeActiveSlotChanged Func`2 Fired before a player changes their active slot (such as selected hotbar slot). Allows for the event to be cancelled depending on the return value. Note: Not called when the server forcefully changes active slot.
---@field AfterActiveSlotChanged function Fired after a player changes their active slot (such as selected hotbar slot).
---@field InGameError IngameErrorDelegate Fired when something fires an ingame error
---@field InGameDiscovery IngameDiscoveryDelegate Fired when something triggers a discovery event, such as the lore system
---@field ColorsPresetChanged function Fired when the GuiColorsPreset client setting is changed, since meshes may need to be redrawn
---@field BlockTexturesLoaded function Fired when server assets were received and all texture atlases have been created, also all sounds loaded
---@field ReloadShader function Fired when the player tries to reload the shaders (happens when graphics settings are changed)
---@field ReloadTextures function Called when textures got reloaded
---@field LevelFinalize function Called when the client received the level finalize packet from the server
---@field ReloadShapes function Called when shapes got reloaded
---@field HotkeysChanged function Called when the hotkeys are changed
---@field MouseDown MouseEventDelegate Provides low level access to the mouse down event. If e.Handled is set to true, the event will not be handled by the game
---@field MouseUp MouseEventDelegate Provides low level access to the mouse up event. If e.Handled is set to true, the event will not be handled by the game
---@field MouseMove MouseEventDelegate Provides low level access to the mouse move event. If e.Handled is set to true, the event will not be handled by the game
---@field KeyDown KeyEventDelegate Provides low level access to the key down event. If e.Handled is set to true, the event will not be handled by the game
---@field KeyUp KeyEventDelegate Provides low level access to the key up event. If e.Handled is set to true, the event will not be handled by the game
---@field FileDrop FileDropDelegate Fired when the user drags&drops a file into the game window
IClientEventAPI = {}


---@param value ChatLineDelegate
function IClientEventAPI.add_ChatMessage(value) end

---@param value ChatLineDelegate
function IClientEventAPI.remove_ChatMessage(value) end

---@param value ClientChatLineDelegate
function IClientEventAPI.add_OnSendChatMessage(value) end

---@param value ClientChatLineDelegate
function IClientEventAPI.remove_OnSendChatMessage(value) end

---@param value PlayerEventDelegate
function IClientEventAPI.add_PlayerJoin(value) end

---@param value PlayerEventDelegate
function IClientEventAPI.remove_PlayerJoin(value) end

---@param value PlayerEventDelegate
function IClientEventAPI.add_PlayerLeave(value) end

---@param value PlayerEventDelegate
function IClientEventAPI.remove_PlayerLeave(value) end

---@param value PlayerEventDelegate
function IClientEventAPI.add_PlayerDeath(value) end

---@param value PlayerEventDelegate
function IClientEventAPI.remove_PlayerDeath(value) end

---@param value IsPlayerReadyDelegate
function IClientEventAPI.add_IsPlayerReady(value) end

---@param value IsPlayerReadyDelegate
function IClientEventAPI.remove_IsPlayerReady(value) end

---@param value PlayerEventDelegate
function IClientEventAPI.add_PlayerEntitySpawn(value) end

---@param value PlayerEventDelegate
function IClientEventAPI.remove_PlayerEntitySpawn(value) end

---@param value PlayerEventDelegate
function IClientEventAPI.add_PlayerEntityDespawn(value) end

---@param value PlayerEventDelegate
function IClientEventAPI.remove_PlayerEntityDespawn(value) end

---@param value OnGamePauseResume
function IClientEventAPI.add_PauseResume(value) end

---@param value OnGamePauseResume
function IClientEventAPI.remove_PauseResume(value) end

---@param value function
function IClientEventAPI.add_LeaveWorld(value) end

---@param value function
function IClientEventAPI.remove_LeaveWorld(value) end

---@param value function
function IClientEventAPI.add_LeftWorld(value) end

---@param value function
function IClientEventAPI.remove_LeftWorld(value) end

---@param value BlockChangedDelegate OldBlock param may be null!
function IClientEventAPI.add_BlockChanged(value) end

---@param value BlockChangedDelegate OldBlock param may be null!
function IClientEventAPI.remove_BlockChanged(value) end

---@param value TestBlockAccessDelegate
function IClientEventAPI.add_TestBlockAccess(value) end

---@param value TestBlockAccessDelegate
function IClientEventAPI.remove_TestBlockAccess(value) end

---@param value Func`2
function IClientEventAPI.add_BeforeActiveSlotChanged(value) end

---@param value Func`2
function IClientEventAPI.remove_BeforeActiveSlotChanged(value) end

---@param value function
function IClientEventAPI.add_AfterActiveSlotChanged(value) end

---@param value function
function IClientEventAPI.remove_AfterActiveSlotChanged(value) end

---@param value IngameErrorDelegate
function IClientEventAPI.add_InGameError(value) end

---@param value IngameErrorDelegate
function IClientEventAPI.remove_InGameError(value) end

---@param value IngameDiscoveryDelegate
function IClientEventAPI.add_InGameDiscovery(value) end

---@param value IngameDiscoveryDelegate
function IClientEventAPI.remove_InGameDiscovery(value) end

---@param value function
function IClientEventAPI.add_ColorsPresetChanged(value) end

---@param value function
function IClientEventAPI.remove_ColorsPresetChanged(value) end

-- Registers a rendering handler to be called during every render frame
---@param renderer IRenderer Interface to render something on to the clients screens. Used for block entitites.
---@param renderStage EnumRenderStage
---@param profilingName? string
function IClientEventAPI.RegisterRenderer(renderer, renderStage, profilingName) end

-- Removes a previously registered rendering handler.
---@param renderer IRenderer Interface to render something on to the clients screens. Used for block entitites.
---@param renderStage EnumRenderStage
function IClientEventAPI.UnregisterRenderer(renderer, renderStage) end

-- Registers a custom itemstack renderer for given collectible object. If none is registered, the default renderer is used. For render target gui, the gui shader and its uniforms are already fully prepared, you may only call RenderMesh() and ignore the modelMat, position and size values - stack sizes however, are not covered by this.
---@param forObj CollectibleObject Contains all properties shared by Blocks and Items
---@param rendererDelegate ItemRenderDelegate A custom itemstack render handler. This method is called after Collectible.OnBeforeRender(). For render target gui, the gui shader and its uniforms are already fully prepared, you may only call RenderMesh() and ignore the modelMat, position and size values - stack sizes however, are not covered by this.
---@param target EnumItemRenderTarget The render taget for an item stack
function IClientEventAPI.RegisterItemstackRenderer(forObj, rendererDelegate, target) end

-- Removes a previously registered itemstack renderer
---@param forObj CollectibleObject Contains all properties shared by Blocks and Items
---@param target EnumItemRenderTarget The render taget for an item stack
function IClientEventAPI.UnregisterItemstackRenderer(forObj, target) end

-- Set up an asynchronous particle spawner. The async particle simulation does most of the work in a seperate thread and thus runs a lot faster, with the down side of not being exaclty in sync with player interactions. This method of spawning particles is best suited for ambient particles, such as rain fall.
---@param handler ContinousParticleSpawnTaskDelegate Return false to stop spawning particles
function IClientEventAPI.RegisterAsyncParticleSpawner(handler) end

---@param value function
function IClientEventAPI.add_BlockTexturesLoaded(value) end

---@param value function
function IClientEventAPI.remove_BlockTexturesLoaded(value) end

---@param value function Return true if the action/event was successfull
function IClientEventAPI.add_ReloadShader(value) end

---@param value function Return true if the action/event was successfull
function IClientEventAPI.remove_ReloadShader(value) end

---@param value function
function IClientEventAPI.add_ReloadTextures(value) end

---@param value function
function IClientEventAPI.remove_ReloadTextures(value) end

---@param value function
function IClientEventAPI.add_LevelFinalize(value) end

---@param value function
function IClientEventAPI.remove_LevelFinalize(value) end

---@param value function
function IClientEventAPI.add_ReloadShapes(value) end

---@param value function
function IClientEventAPI.remove_ReloadShapes(value) end

---@param value function
function IClientEventAPI.add_HotkeysChanged(value) end

---@param value function
function IClientEventAPI.remove_HotkeysChanged(value) end

---@param value MouseEventDelegate
function IClientEventAPI.add_MouseDown(value) end

---@param value MouseEventDelegate
function IClientEventAPI.remove_MouseDown(value) end

---@param value MouseEventDelegate
function IClientEventAPI.add_MouseUp(value) end

---@param value MouseEventDelegate
function IClientEventAPI.remove_MouseUp(value) end

---@param value MouseEventDelegate
function IClientEventAPI.add_MouseMove(value) end

---@param value MouseEventDelegate
function IClientEventAPI.remove_MouseMove(value) end

---@param value KeyEventDelegate
function IClientEventAPI.add_KeyDown(value) end

---@param value KeyEventDelegate
function IClientEventAPI.remove_KeyDown(value) end

---@param value KeyEventDelegate
function IClientEventAPI.add_KeyUp(value) end

---@param value KeyEventDelegate
function IClientEventAPI.remove_KeyUp(value) end

---@param value FileDropDelegate
function IClientEventAPI.add_FileDrop(value) end

---@param value FileDropDelegate
function IClientEventAPI.remove_FileDrop(value) end


