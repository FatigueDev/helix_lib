---@meta

---@class HudHotbar: HudElement, IDisposable, GuiDialog, HudElement
---@field InputOrder number
---@field ToggleKeyCombinationCode string
---@field DialogType EnumDialogType
---@field PrefersUngrabbedMouse boolean
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field DebugName string Debug name.  For debugging purposes.
---@field ZSize number The amount of depth required for this dialog. Default is 150. Required for correct z-ordering of dialogs.
---@field Focused boolean Is the dialogue currently in focus?
---@field Focusable boolean Can this dialog be focused?
---@field DrawOrder number 0 = draw first, 1 = draw last. Used to enforce tooltips and held itemstack always drawn last to be visible. Vanilla dialogs draw order: Name tags: -0.1 Chat dialog: 0 Block Interaction help: 0.05 Worldmap HUD: 0.07 Default value for most other dialogs: 0.1 Worldmap Dialog: 0.11 Player and Chest inventories: 0.2 Various config/edit dialogs: 0.2 Handbook: 0.2 Escape menu: 0.89
---@field UnregisterOnClose boolean Should this dialogue de-register itself once it's closed? (Defaults to no)
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
HudHotbar = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return HudHotbar
function HudHotbar.ctor(capi) end

---@return number
function HudHotbar.get_InputOrder() end

function HudHotbar.OnBlockTexturesLoaded() end

---@return string
function HudHotbar.get_ToggleKeyCombinationCode() end

function HudHotbar.OnOwnPlayerDataReceived() end

function HudHotbar.ComposeGuis() end

---@return boolean
function HudHotbar.TryClose() end

---@return boolean
function HudHotbar.ShouldReceiveKeyboardEvents() end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function HudHotbar.OnMouseWheel(args) end

---@param deltaTime number
function HudHotbar.OnRenderGUI(deltaTime) end

---@param dt number
function HudHotbar.OnFinalizeFrame(dt) end

---@param args KeyEvent
function HudHotbar.OnKeyDown(args) end

function HudHotbar.Dispose() end

---@return EnumDialogType
function HudHotbar.get_DialogType() end

---@return boolean
function HudHotbar.get_PrefersUngrabbedMouse() end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudHotbar.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudHotbar.set_SingleComposer(value) end

---@return string
function HudHotbar.get_DebugName() end

---@return number
function HudHotbar.get_ZSize() end

---@return boolean
function HudHotbar.get_Focused() end

---@return boolean
function HudHotbar.get_Focusable() end

---@param value function
function HudHotbar.add_OnOpened(value) end

---@param value function
function HudHotbar.remove_OnOpened(value) end

---@param value function
function HudHotbar.add_OnClosed(value) end

---@param value function
function HudHotbar.remove_OnClosed(value) end

function HudHotbar.OnLevelFinalize() end

---@return number
function HudHotbar.get_DrawOrder() end

---@return boolean
function HudHotbar.get_UnregisterOnClose() end

-- Fires when the GUI is opened.
function HudHotbar.OnGuiOpened() end

-- Fires when the GUI is closed.
function HudHotbar.OnGuiClosed() end

-- Attempts to open this dialogue.
---@return boolean
function HudHotbar.TryOpen() end

---@param withFocus boolean
---@return boolean
function HudHotbar.TryOpen(withFocus) end

-- Unfocuses the dialogue.
function HudHotbar.UnFocus() end

-- Focuses the dialog
function HudHotbar.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function HudHotbar.Toggle() end

-- Is this dialogue opened?
---@return boolean
function HudHotbar.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function HudHotbar.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function HudHotbar.OnBeforeRenderFrame3D(deltaTime) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function HudHotbar.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function HudHotbar.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function HudHotbar.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function HudHotbar.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudHotbar.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudHotbar.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is held down.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudHotbar.OnMouseDown(args) end

-- Fires when a mouse button is released.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudHotbar.OnMouseUp(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudHotbar.OnMouseMove(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function HudHotbar.ShouldReceiveRenderEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function HudHotbar.ShouldReceiveMouseEvents() end

---@return boolean
function HudHotbar.RequiresUngrabbedMouse() end

---@return boolean
function HudHotbar.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function HudHotbar.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function HudHotbar.CaptureRawMouse() end

-- Clears the composers.
function HudHotbar.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function HudHotbar.IsInRangeOf(pos) end

---@return userdata
function HudHotbar.GetType() end

---@return string
function HudHotbar.ToString() end

---@param obj userdata
---@return boolean
function HudHotbar.Equals(obj) end

---@return number
function HudHotbar.GetHashCode() end


