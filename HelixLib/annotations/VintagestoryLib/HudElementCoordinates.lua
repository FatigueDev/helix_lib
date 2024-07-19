---@meta

---@class HudElementCoordinates: HudElement, IDisposable, GuiDialog, HudElement
---@field ToggleKeyCombinationCode string
---@field DialogType EnumDialogType
---@field PrefersUngrabbedMouse boolean
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field DebugName string Debug name.  For debugging purposes.
---@field ZSize number The amount of depth required for this dialog. Default is 150. Required for correct z-ordering of dialogs.
---@field Focused boolean Is the dialogue currently in focus?
---@field Focusable boolean Can this dialog be focused?
---@field DrawOrder number 0 = draw first, 1 = draw last. Used to enforce tooltips and held itemstack always drawn last to be visible. Vanilla dialogs draw order: Name tags: -0.1 Chat dialog: 0 Block Interaction help: 0.05 Worldmap HUD: 0.07 Default value for most other dialogs: 0.1 Worldmap Dialog: 0.11 Player and Chest inventories: 0.2 Various config/edit dialogs: 0.2 Handbook: 0.2 Escape menu: 0.89
---@field InputOrder number Determines the order on which dialog receives keyboard input first when the dialog is opened. 0 = handle inputs first, 9999 = handle inputs last. Reference list: 0: Escape menu 0.5 (default): tick profiler, selection box editor, macro editor, survival&creative inventory, first launch info dialog, dead dialog, character dialog, etc. 1: hotbar 1.1: chat dialog
---@field UnregisterOnClose boolean Should this dialogue de-register itself once it's closed? (Defaults to no)
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
HudElementCoordinates = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return HudElementCoordinates
function HudElementCoordinates.ctor(capi) end

---@return string
function HudElementCoordinates.get_ToggleKeyCombinationCode() end

function HudElementCoordinates.OnOwnPlayerDataReceived() end

function HudElementCoordinates.OnBlockTexturesLoaded() end

function HudElementCoordinates.OnGuiOpened() end

function HudElementCoordinates.OnGuiClosed() end

---@param deltaTime number
function HudElementCoordinates.OnRenderGUI(deltaTime) end

---@return EnumDialogType
function HudElementCoordinates.get_DialogType() end

---@return boolean
function HudElementCoordinates.get_PrefersUngrabbedMouse() end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudElementCoordinates.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudElementCoordinates.set_SingleComposer(value) end

---@return string
function HudElementCoordinates.get_DebugName() end

---@return number
function HudElementCoordinates.get_ZSize() end

---@return boolean
function HudElementCoordinates.get_Focused() end

---@return boolean
function HudElementCoordinates.get_Focusable() end

---@param value function
function HudElementCoordinates.add_OnOpened(value) end

---@param value function
function HudElementCoordinates.remove_OnOpened(value) end

---@param value function
function HudElementCoordinates.add_OnClosed(value) end

---@param value function
function HudElementCoordinates.remove_OnClosed(value) end

function HudElementCoordinates.OnLevelFinalize() end

---@return number
function HudElementCoordinates.get_DrawOrder() end

---@return number
function HudElementCoordinates.get_InputOrder() end

---@return boolean
function HudElementCoordinates.get_UnregisterOnClose() end

-- Attempts to open this dialogue.
---@return boolean
function HudElementCoordinates.TryOpen() end

---@param withFocus boolean
---@return boolean
function HudElementCoordinates.TryOpen(withFocus) end

-- Attempts to close this dialogue- triggering the OnCloseDialogue event.
---@return boolean
function HudElementCoordinates.TryClose() end

-- Unfocuses the dialogue.
function HudElementCoordinates.UnFocus() end

-- Focuses the dialog
function HudElementCoordinates.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function HudElementCoordinates.Toggle() end

-- Is this dialogue opened?
---@return boolean
function HudElementCoordinates.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function HudElementCoordinates.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function HudElementCoordinates.OnBeforeRenderFrame3D(deltaTime) end

-- This runs when the dialogue is finalizing and cleaning up all of the components.
---@param dt number
function HudElementCoordinates.OnFinalizeFrame(dt) end

-- Fires when keys are held down.
---@param args KeyEvent
function HudElementCoordinates.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function HudElementCoordinates.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function HudElementCoordinates.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function HudElementCoordinates.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function HudElementCoordinates.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudElementCoordinates.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudElementCoordinates.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is held down.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudElementCoordinates.OnMouseDown(args) end

-- Fires when a mouse button is released.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudElementCoordinates.OnMouseUp(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudElementCoordinates.OnMouseMove(args) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function HudElementCoordinates.OnMouseWheel(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function HudElementCoordinates.ShouldReceiveRenderEvents() end

-- A check for whether the dialogue should recieve keyboard events.
---@return boolean
function HudElementCoordinates.ShouldReceiveKeyboardEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function HudElementCoordinates.ShouldReceiveMouseEvents() end

---@return boolean
function HudElementCoordinates.RequiresUngrabbedMouse() end

---@return boolean
function HudElementCoordinates.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function HudElementCoordinates.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function HudElementCoordinates.CaptureRawMouse() end

-- Disposes the Dialog.
function HudElementCoordinates.Dispose() end

-- Clears the composers.
function HudElementCoordinates.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function HudElementCoordinates.IsInRangeOf(pos) end

---@return userdata
function HudElementCoordinates.GetType() end

---@return string
function HudElementCoordinates.ToString() end

---@param obj userdata
---@return boolean
function HudElementCoordinates.Equals(obj) end

---@return number
function HudElementCoordinates.GetHashCode() end


