---@meta

---@class HudEntityNameTags: HudElement, IDisposable, GuiDialog, HudElement
---@field DrawOrder number
---@field DialogType EnumDialogType
---@field ToggleKeyCombinationCode string
---@field PrefersUngrabbedMouse boolean
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field DebugName string Debug name.  For debugging purposes.
---@field ZSize number The amount of depth required for this dialog. Default is 150. Required for correct z-ordering of dialogs.
---@field Focused boolean Is the dialogue currently in focus?
---@field Focusable boolean Can this dialog be focused?
---@field InputOrder number Determines the order on which dialog receives keyboard input first when the dialog is opened. 0 = handle inputs first, 9999 = handle inputs last. Reference list: 0: Escape menu 0.5 (default): tick profiler, selection box editor, macro editor, survival&creative inventory, first launch info dialog, dead dialog, character dialog, etc. 1: hotbar 1.1: chat dialog
---@field UnregisterOnClose boolean Should this dialogue de-register itself once it's closed? (Defaults to no)
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
HudEntityNameTags = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return HudEntityNameTags
function HudEntityNameTags.ctor(capi) end

---@return number
function HudEntityNameTags.get_DrawOrder() end

---@param deltaTime number
function HudEntityNameTags.OnRenderGUI(deltaTime) end

---@return boolean
function HudEntityNameTags.TryClose() end

---@return boolean
function HudEntityNameTags.ShouldReceiveKeyboardEvents() end

---@return boolean
function HudEntityNameTags.ShouldReceiveRenderEvents() end

---@return EnumDialogType
function HudEntityNameTags.get_DialogType() end

---@return string
function HudEntityNameTags.get_ToggleKeyCombinationCode() end

---@return boolean
function HudEntityNameTags.get_PrefersUngrabbedMouse() end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudEntityNameTags.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudEntityNameTags.set_SingleComposer(value) end

---@return string
function HudEntityNameTags.get_DebugName() end

---@return number
function HudEntityNameTags.get_ZSize() end

---@return boolean
function HudEntityNameTags.get_Focused() end

---@return boolean
function HudEntityNameTags.get_Focusable() end

---@param value function
function HudEntityNameTags.add_OnOpened(value) end

---@param value function
function HudEntityNameTags.remove_OnOpened(value) end

---@param value function
function HudEntityNameTags.add_OnClosed(value) end

---@param value function
function HudEntityNameTags.remove_OnClosed(value) end

-- Makes this gui pop up once a pre-set given key combination is set.
function HudEntityNameTags.OnBlockTexturesLoaded() end

function HudEntityNameTags.OnLevelFinalize() end

function HudEntityNameTags.OnOwnPlayerDataReceived() end

---@return number
function HudEntityNameTags.get_InputOrder() end

---@return boolean
function HudEntityNameTags.get_UnregisterOnClose() end

-- Fires when the GUI is opened.
function HudEntityNameTags.OnGuiOpened() end

-- Fires when the GUI is closed.
function HudEntityNameTags.OnGuiClosed() end

-- Attempts to open this dialogue.
---@return boolean
function HudEntityNameTags.TryOpen() end

---@param withFocus boolean
---@return boolean
function HudEntityNameTags.TryOpen(withFocus) end

-- Unfocuses the dialogue.
function HudEntityNameTags.UnFocus() end

-- Focuses the dialog
function HudEntityNameTags.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function HudEntityNameTags.Toggle() end

-- Is this dialogue opened?
---@return boolean
function HudEntityNameTags.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function HudEntityNameTags.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function HudEntityNameTags.OnBeforeRenderFrame3D(deltaTime) end

-- This runs when the dialogue is finalizing and cleaning up all of the components.
---@param dt number
function HudEntityNameTags.OnFinalizeFrame(dt) end

-- Fires when keys are held down.
---@param args KeyEvent
function HudEntityNameTags.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function HudEntityNameTags.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function HudEntityNameTags.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function HudEntityNameTags.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function HudEntityNameTags.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudEntityNameTags.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudEntityNameTags.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is held down.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudEntityNameTags.OnMouseDown(args) end

-- Fires when a mouse button is released.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudEntityNameTags.OnMouseUp(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudEntityNameTags.OnMouseMove(args) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function HudEntityNameTags.OnMouseWheel(args) end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function HudEntityNameTags.ShouldReceiveMouseEvents() end

---@return boolean
function HudEntityNameTags.RequiresUngrabbedMouse() end

---@return boolean
function HudEntityNameTags.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function HudEntityNameTags.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function HudEntityNameTags.CaptureRawMouse() end

-- Disposes the Dialog.
function HudEntityNameTags.Dispose() end

-- Clears the composers.
function HudEntityNameTags.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function HudEntityNameTags.IsInRangeOf(pos) end

---@return userdata
function HudEntityNameTags.GetType() end

---@return string
function HudEntityNameTags.ToString() end

---@param obj userdata
---@return boolean
function HudEntityNameTags.Equals(obj) end

---@return number
function HudEntityNameTags.GetHashCode() end


