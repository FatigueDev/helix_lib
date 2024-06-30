---@meta

---@class HudIngameDiscovery: HudElement, IDisposable, GuiDialog, HudElement
---@field InputOrder number
---@field ToggleKeyCombinationCode string
---@field Focusable boolean
---@field DialogType EnumDialogType
---@field PrefersUngrabbedMouse boolean
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field DebugName string Debug name.  For debugging purposes.
---@field ZSize number The amount of depth required for this dialog. Default is 150. Required for correct z-ordering of dialogs.
---@field Focused boolean Is the dialogue currently in focus?
---@field DrawOrder number 0 = draw first, 1 = draw last. Used to enforce tooltips and held itemstack always drawn last to be visible. Vanilla dialogs draw order: Name tags: -0.1 Chat dialog: 0 Block Interaction help: 0.05 Worldmap HUD: 0.07 Default value for most other dialogs: 0.1 Worldmap Dialog: 0.11 Player and Chest inventories: 0.2 Various config/edit dialogs: 0.2 Handbook: 0.2 Escape menu: 0.89
---@field UnregisterOnClose boolean Should this dialogue de-register itself once it's closed? (Defaults to no)
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
HudIngameDiscovery = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return HudIngameDiscovery
function HudIngameDiscovery.ctor(capi) end

---@return number
function HudIngameDiscovery.get_InputOrder() end

---@return string
function HudIngameDiscovery.get_ToggleKeyCombinationCode() end

function HudIngameDiscovery.OnOwnPlayerDataReceived() end

function HudIngameDiscovery.ComposeGuis() end

---@return boolean
function HudIngameDiscovery.TryClose() end

---@return boolean
function HudIngameDiscovery.ShouldReceiveKeyboardEvents() end

---@return boolean
function HudIngameDiscovery.ShouldReceiveMouseEvents() end

---@param deltaTime number
function HudIngameDiscovery.OnRenderGUI(deltaTime) end

---@return boolean
function HudIngameDiscovery.get_Focusable() end

---@return EnumDialogType
function HudIngameDiscovery.get_DialogType() end

---@return boolean
function HudIngameDiscovery.get_PrefersUngrabbedMouse() end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudIngameDiscovery.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudIngameDiscovery.set_SingleComposer(value) end

---@return string
function HudIngameDiscovery.get_DebugName() end

---@return number
function HudIngameDiscovery.get_ZSize() end

---@return boolean
function HudIngameDiscovery.get_Focused() end

---@param value function
function HudIngameDiscovery.add_OnOpened(value) end

---@param value function
function HudIngameDiscovery.remove_OnOpened(value) end

---@param value function
function HudIngameDiscovery.add_OnClosed(value) end

---@param value function
function HudIngameDiscovery.remove_OnClosed(value) end

-- Makes this gui pop up once a pre-set given key combination is set.
function HudIngameDiscovery.OnBlockTexturesLoaded() end

function HudIngameDiscovery.OnLevelFinalize() end

---@return number
function HudIngameDiscovery.get_DrawOrder() end

---@return boolean
function HudIngameDiscovery.get_UnregisterOnClose() end

-- Fires when the GUI is opened.
function HudIngameDiscovery.OnGuiOpened() end

-- Fires when the GUI is closed.
function HudIngameDiscovery.OnGuiClosed() end

-- Attempts to open this dialogue.
---@return boolean
function HudIngameDiscovery.TryOpen() end

---@param withFocus boolean
---@return boolean
function HudIngameDiscovery.TryOpen(withFocus) end

-- Unfocuses the dialogue.
function HudIngameDiscovery.UnFocus() end

-- Focuses the dialog
function HudIngameDiscovery.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function HudIngameDiscovery.Toggle() end

-- Is this dialogue opened?
---@return boolean
function HudIngameDiscovery.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function HudIngameDiscovery.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function HudIngameDiscovery.OnBeforeRenderFrame3D(deltaTime) end

-- This runs when the dialogue is finalizing and cleaning up all of the components.
---@param dt number
function HudIngameDiscovery.OnFinalizeFrame(dt) end

-- Fires when keys are held down.
---@param args KeyEvent
function HudIngameDiscovery.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function HudIngameDiscovery.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function HudIngameDiscovery.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function HudIngameDiscovery.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function HudIngameDiscovery.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudIngameDiscovery.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudIngameDiscovery.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is held down.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudIngameDiscovery.OnMouseDown(args) end

-- Fires when a mouse button is released.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudIngameDiscovery.OnMouseUp(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudIngameDiscovery.OnMouseMove(args) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function HudIngameDiscovery.OnMouseWheel(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function HudIngameDiscovery.ShouldReceiveRenderEvents() end

---@return boolean
function HudIngameDiscovery.RequiresUngrabbedMouse() end

---@return boolean
function HudIngameDiscovery.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function HudIngameDiscovery.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function HudIngameDiscovery.CaptureRawMouse() end

-- Disposes the Dialog.
function HudIngameDiscovery.Dispose() end

-- Clears the composers.
function HudIngameDiscovery.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function HudIngameDiscovery.IsInRangeOf(pos) end

---@return userdata
function HudIngameDiscovery.GetType() end

---@return string
function HudIngameDiscovery.ToString() end

---@param obj userdata
---@return boolean
function HudIngameDiscovery.Equals(obj) end

---@return number
function HudIngameDiscovery.GetHashCode() end


