---@meta

---@class GuiDialogInventory: GuiDialog, IDisposable, GuiDialog
---@field DrawOrder number
---@field ToggleKeyCombinationCode string
---@field PrefersUngrabbedMouse boolean
---@field ZSize number
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field DebugName string Debug name.  For debugging purposes.
---@field Focused boolean Is the dialogue currently in focus?
---@field Focusable boolean Can this dialog be focused?
---@field DialogType EnumDialogType Is this dialogue a dialogue or a HUD object?
---@field InputOrder number Determines the order on which dialog receives keyboard input first when the dialog is opened. 0 = handle inputs first, 9999 = handle inputs last. Reference list: 0: Escape menu 0.5 (default): tick profiler, selection box editor, macro editor, survival&creative inventory, first launch info dialog, dead dialog, character dialog, etc. 1: hotbar 1.1: chat dialog
---@field UnregisterOnClose boolean Should this dialogue de-register itself once it's closed? (Defaults to no)
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
GuiDialogInventory = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return GuiDialogInventory
function GuiDialogInventory.ctor(capi) end

---@return number
function GuiDialogInventory.get_DrawOrder() end

---@return string
function GuiDialogInventory.get_ToggleKeyCombinationCode() end

function GuiDialogInventory.OnOwnPlayerDataReceived() end

---@param firstBuild boolean
function GuiDialogInventory.ComposeGui(firstBuild) end

---@return boolean
function GuiDialogInventory.TryOpen() end

function GuiDialogInventory.OnGuiOpened() end

function GuiDialogInventory.OnGuiClosed() end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogInventory.OnMouseDown(args) end

---@return boolean
function GuiDialogInventory.CaptureAllInputs() end

---@return boolean
function GuiDialogInventory.get_PrefersUngrabbedMouse() end

function GuiDialogInventory.Dispose() end

---@return number
function GuiDialogInventory.get_ZSize() end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogInventory.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogInventory.set_SingleComposer(value) end

---@return string
function GuiDialogInventory.get_DebugName() end

---@return boolean
function GuiDialogInventory.get_Focused() end

---@return boolean
function GuiDialogInventory.get_Focusable() end

---@return EnumDialogType
function GuiDialogInventory.get_DialogType() end

---@param value function
function GuiDialogInventory.add_OnOpened(value) end

---@param value function
function GuiDialogInventory.remove_OnOpened(value) end

---@param value function
function GuiDialogInventory.add_OnClosed(value) end

---@param value function
function GuiDialogInventory.remove_OnClosed(value) end

-- Makes this gui pop up once a pre-set given key combination is set.
function GuiDialogInventory.OnBlockTexturesLoaded() end

function GuiDialogInventory.OnLevelFinalize() end

---@return number
function GuiDialogInventory.get_InputOrder() end

---@return boolean
function GuiDialogInventory.get_UnregisterOnClose() end

---@param withFocus boolean
---@return boolean
function GuiDialogInventory.TryOpen(withFocus) end

-- Attempts to close this dialogue- triggering the OnCloseDialogue event.
---@return boolean
function GuiDialogInventory.TryClose() end

-- Unfocuses the dialogue.
function GuiDialogInventory.UnFocus() end

-- Focuses the dialog
function GuiDialogInventory.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function GuiDialogInventory.Toggle() end

-- Is this dialogue opened?
---@return boolean
function GuiDialogInventory.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function GuiDialogInventory.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function GuiDialogInventory.OnBeforeRenderFrame3D(deltaTime) end

-- This runs when the dialogue is ready to render all of the components.
---@param deltaTime number
function GuiDialogInventory.OnRenderGUI(deltaTime) end

-- This runs when the dialogue is finalizing and cleaning up all of the components.
---@param dt number
function GuiDialogInventory.OnFinalizeFrame(dt) end

-- Fires when keys are held down.
---@param args KeyEvent
function GuiDialogInventory.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function GuiDialogInventory.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function GuiDialogInventory.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function GuiDialogInventory.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogInventory.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogInventory.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogInventory.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is released.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogInventory.OnMouseUp(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogInventory.OnMouseMove(args) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiDialogInventory.OnMouseWheel(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function GuiDialogInventory.ShouldReceiveRenderEvents() end

-- A check for whether the dialogue should recieve keyboard events.
---@return boolean
function GuiDialogInventory.ShouldReceiveKeyboardEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function GuiDialogInventory.ShouldReceiveMouseEvents() end

---@return boolean
function GuiDialogInventory.RequiresUngrabbedMouse() end

---@return boolean
function GuiDialogInventory.get_DisableMouseGrab() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function GuiDialogInventory.CaptureRawMouse() end

-- Clears the composers.
function GuiDialogInventory.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function GuiDialogInventory.IsInRangeOf(pos) end

---@return userdata
function GuiDialogInventory.GetType() end

---@return string
function GuiDialogInventory.ToString() end

---@param obj userdata
---@return boolean
function GuiDialogInventory.Equals(obj) end

---@return number
function GuiDialogInventory.GetHashCode() end


