---@meta

---@class HudDisconnected: HudElement, IDisposable, GuiDialog, HudElement
---@field Focusable boolean
---@field DialogType EnumDialogType
---@field ToggleKeyCombinationCode string
---@field PrefersUngrabbedMouse boolean
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field DebugName string Debug name.  For debugging purposes.
---@field ZSize number The amount of depth required for this dialog. Default is 150. Required for correct z-ordering of dialogs.
---@field Focused boolean Is the dialogue currently in focus?
---@field DrawOrder number 0 = draw first, 1 = draw last. Used to enforce tooltips and held itemstack always drawn last to be visible. Vanilla dialogs draw order: Name tags: -0.1 Chat dialog: 0 Block Interaction help: 0.05 Worldmap HUD: 0.07 Default value for most other dialogs: 0.1 Worldmap Dialog: 0.11 Player and Chest inventories: 0.2 Various config/edit dialogs: 0.2 Handbook: 0.2 Escape menu: 0.89
---@field InputOrder number Determines the order on which dialog receives keyboard input first when the dialog is opened. 0 = handle inputs first, 9999 = handle inputs last. Reference list: 0: Escape menu 0.5 (default): tick profiler, selection box editor, macro editor, survival&creative inventory, first launch info dialog, dead dialog, character dialog, etc. 1: hotbar 1.1: chat dialog
---@field UnregisterOnClose boolean Should this dialogue de-register itself once it's closed? (Defaults to no)
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
HudDisconnected = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return HudDisconnected
function HudDisconnected.ctor(capi) end

function HudDisconnected.OnBlockTexturesLoaded() end

---@return boolean
function HudDisconnected.TryClose() end

---@param deltaTime number
function HudDisconnected.OnRenderGUI(deltaTime) end

---@return boolean
function HudDisconnected.get_Focusable() end

function HudDisconnected.Dispose() end

---@return EnumDialogType
function HudDisconnected.get_DialogType() end

---@return string
function HudDisconnected.get_ToggleKeyCombinationCode() end

---@return boolean
function HudDisconnected.get_PrefersUngrabbedMouse() end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudDisconnected.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudDisconnected.set_SingleComposer(value) end

---@return string
function HudDisconnected.get_DebugName() end

---@return number
function HudDisconnected.get_ZSize() end

---@return boolean
function HudDisconnected.get_Focused() end

---@param value function
function HudDisconnected.add_OnOpened(value) end

---@param value function
function HudDisconnected.remove_OnOpened(value) end

---@param value function
function HudDisconnected.add_OnClosed(value) end

---@param value function
function HudDisconnected.remove_OnClosed(value) end

function HudDisconnected.OnLevelFinalize() end

function HudDisconnected.OnOwnPlayerDataReceived() end

---@return number
function HudDisconnected.get_DrawOrder() end

---@return number
function HudDisconnected.get_InputOrder() end

---@return boolean
function HudDisconnected.get_UnregisterOnClose() end

-- Fires when the GUI is opened.
function HudDisconnected.OnGuiOpened() end

-- Fires when the GUI is closed.
function HudDisconnected.OnGuiClosed() end

-- Attempts to open this dialogue.
---@return boolean
function HudDisconnected.TryOpen() end

---@param withFocus boolean
---@return boolean
function HudDisconnected.TryOpen(withFocus) end

-- Unfocuses the dialogue.
function HudDisconnected.UnFocus() end

-- Focuses the dialog
function HudDisconnected.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function HudDisconnected.Toggle() end

-- Is this dialogue opened?
---@return boolean
function HudDisconnected.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function HudDisconnected.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function HudDisconnected.OnBeforeRenderFrame3D(deltaTime) end

-- This runs when the dialogue is finalizing and cleaning up all of the components.
---@param dt number
function HudDisconnected.OnFinalizeFrame(dt) end

-- Fires when keys are held down.
---@param args KeyEvent
function HudDisconnected.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function HudDisconnected.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function HudDisconnected.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function HudDisconnected.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function HudDisconnected.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudDisconnected.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudDisconnected.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is held down.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudDisconnected.OnMouseDown(args) end

-- Fires when a mouse button is released.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudDisconnected.OnMouseUp(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudDisconnected.OnMouseMove(args) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function HudDisconnected.OnMouseWheel(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function HudDisconnected.ShouldReceiveRenderEvents() end

-- A check for whether the dialogue should recieve keyboard events.
---@return boolean
function HudDisconnected.ShouldReceiveKeyboardEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function HudDisconnected.ShouldReceiveMouseEvents() end

---@return boolean
function HudDisconnected.RequiresUngrabbedMouse() end

---@return boolean
function HudDisconnected.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function HudDisconnected.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function HudDisconnected.CaptureRawMouse() end

-- Clears the composers.
function HudDisconnected.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function HudDisconnected.IsInRangeOf(pos) end

---@return userdata
function HudDisconnected.GetType() end

---@return string
function HudDisconnected.ToString() end

---@param obj userdata
---@return boolean
function HudDisconnected.Equals(obj) end

---@return number
function HudDisconnected.GetHashCode() end


