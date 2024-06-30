---@meta

---@class HudStatbar: HudElement, IDisposable, GuiDialog, HudElement
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
HudStatbar = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return HudStatbar
function HudStatbar.ctor(capi) end

---@return number
function HudStatbar.get_InputOrder() end

---@return string
function HudStatbar.get_ToggleKeyCombinationCode() end

function HudStatbar.OnOwnPlayerDataReceived() end

function HudStatbar.ComposeGuis() end

---@return boolean
function HudStatbar.TryClose() end

---@return boolean
function HudStatbar.ShouldReceiveKeyboardEvents() end

---@param deltaTime number
function HudStatbar.OnRenderGUI(deltaTime) end

---@return boolean
function HudStatbar.get_Focusable() end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudStatbar.OnMouseDown(args) end

---@return EnumDialogType
function HudStatbar.get_DialogType() end

---@return boolean
function HudStatbar.get_PrefersUngrabbedMouse() end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudStatbar.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudStatbar.set_SingleComposer(value) end

---@return string
function HudStatbar.get_DebugName() end

---@return number
function HudStatbar.get_ZSize() end

---@return boolean
function HudStatbar.get_Focused() end

---@param value function
function HudStatbar.add_OnOpened(value) end

---@param value function
function HudStatbar.remove_OnOpened(value) end

---@param value function
function HudStatbar.add_OnClosed(value) end

---@param value function
function HudStatbar.remove_OnClosed(value) end

-- Makes this gui pop up once a pre-set given key combination is set.
function HudStatbar.OnBlockTexturesLoaded() end

function HudStatbar.OnLevelFinalize() end

---@return number
function HudStatbar.get_DrawOrder() end

---@return boolean
function HudStatbar.get_UnregisterOnClose() end

-- Fires when the GUI is opened.
function HudStatbar.OnGuiOpened() end

-- Fires when the GUI is closed.
function HudStatbar.OnGuiClosed() end

-- Attempts to open this dialogue.
---@return boolean
function HudStatbar.TryOpen() end

---@param withFocus boolean
---@return boolean
function HudStatbar.TryOpen(withFocus) end

-- Unfocuses the dialogue.
function HudStatbar.UnFocus() end

-- Focuses the dialog
function HudStatbar.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function HudStatbar.Toggle() end

-- Is this dialogue opened?
---@return boolean
function HudStatbar.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function HudStatbar.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function HudStatbar.OnBeforeRenderFrame3D(deltaTime) end

-- This runs when the dialogue is finalizing and cleaning up all of the components.
---@param dt number
function HudStatbar.OnFinalizeFrame(dt) end

-- Fires when keys are held down.
---@param args KeyEvent
function HudStatbar.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function HudStatbar.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function HudStatbar.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function HudStatbar.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function HudStatbar.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudStatbar.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudStatbar.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is released.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudStatbar.OnMouseUp(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudStatbar.OnMouseMove(args) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function HudStatbar.OnMouseWheel(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function HudStatbar.ShouldReceiveRenderEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function HudStatbar.ShouldReceiveMouseEvents() end

---@return boolean
function HudStatbar.RequiresUngrabbedMouse() end

---@return boolean
function HudStatbar.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function HudStatbar.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function HudStatbar.CaptureRawMouse() end

-- Disposes the Dialog.
function HudStatbar.Dispose() end

-- Clears the composers.
function HudStatbar.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function HudStatbar.IsInRangeOf(pos) end

---@return userdata
function HudStatbar.GetType() end

---@return string
function HudStatbar.ToString() end

---@param obj userdata
---@return boolean
function HudStatbar.Equals(obj) end

---@return number
function HudStatbar.GetHashCode() end


