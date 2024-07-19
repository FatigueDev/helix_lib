---@meta

---@class HudDialogChat: HudElement, IDisposable, GuiDialog, HudElement
---@field ToggleKeyCombinationCode string
---@field InputOrder number
---@field DrawOrder number
---@field DialogType EnumDialogType
---@field PrefersUngrabbedMouse boolean
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field DebugName string Debug name.  For debugging purposes.
---@field ZSize number The amount of depth required for this dialog. Default is 150. Required for correct z-ordering of dialogs.
---@field Focused boolean Is the dialogue currently in focus?
---@field Focusable boolean Can this dialog be focused?
---@field UnregisterOnClose boolean Should this dialogue de-register itself once it's closed? (Defaults to no)
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
HudDialogChat = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return HudDialogChat
function HudDialogChat.ctor(capi) end

---@return string
function HudDialogChat.get_ToggleKeyCombinationCode() end

---@return number
function HudDialogChat.get_InputOrder() end

---@return number
function HudDialogChat.get_DrawOrder() end

function HudDialogChat.OnOwnPlayerDataReceived() end

---@param deltaTime number
function HudDialogChat.OnRenderGUI(deltaTime) end

---@param dt number
function HudDialogChat.OnFinalizeFrame(dt) end

---@return boolean
function HudDialogChat.OnEscapePressed() end

---@param dialogComposerName string
---@return boolean
function HudDialogChat.IsOpened(dialogComposerName) end

function HudDialogChat.UnFocus() end

function HudDialogChat.OnGuiOpened() end

function HudDialogChat.OnGuiClosed() end

---@return boolean
function HudDialogChat.TryClose() end

function HudDialogChat.DoClose() end

---@param args KeyEvent
function HudDialogChat.OnKeyPress(args) end

---@param args KeyEvent
function HudDialogChat.OnKeyDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudDialogChat.OnMouseUp(args) end

---@param typedMessagesHistoryPos number
---@return string
function HudDialogChat.GetHistoricalMessage(typedMessagesHistoryPos) end

---@param message string
---@param groupid number
function HudDialogChat.HandleClientCommand(message, groupid) end

---@param groupid number
---@param message string
function HudDialogChat.HandleClientMessage(groupid, message) end

---@return EnumDialogType
function HudDialogChat.get_DialogType() end

---@return boolean
function HudDialogChat.get_PrefersUngrabbedMouse() end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudDialogChat.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function HudDialogChat.set_SingleComposer(value) end

---@return string
function HudDialogChat.get_DebugName() end

---@return number
function HudDialogChat.get_ZSize() end

---@return boolean
function HudDialogChat.get_Focused() end

---@return boolean
function HudDialogChat.get_Focusable() end

---@param value function
function HudDialogChat.add_OnOpened(value) end

---@param value function
function HudDialogChat.remove_OnOpened(value) end

---@param value function
function HudDialogChat.add_OnClosed(value) end

---@param value function
function HudDialogChat.remove_OnClosed(value) end

-- Makes this gui pop up once a pre-set given key combination is set.
function HudDialogChat.OnBlockTexturesLoaded() end

function HudDialogChat.OnLevelFinalize() end

---@return boolean
function HudDialogChat.get_UnregisterOnClose() end

-- Attempts to open this dialogue.
---@return boolean
function HudDialogChat.TryOpen() end

---@param withFocus boolean
---@return boolean
function HudDialogChat.TryOpen(withFocus) end

-- Focuses the dialog
function HudDialogChat.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function HudDialogChat.Toggle() end

-- Is this dialogue opened?
---@return boolean
function HudDialogChat.IsOpened() end

-- This runs before the render.  Local update method.
---@param deltaTime number
function HudDialogChat.OnBeforeRenderFrame3D(deltaTime) end

-- Fires when the keys are released.
---@param args KeyEvent
function HudDialogChat.OnKeyUp(args) end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function HudDialogChat.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudDialogChat.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function HudDialogChat.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is held down.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudDialogChat.OnMouseDown(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function HudDialogChat.OnMouseMove(args) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function HudDialogChat.OnMouseWheel(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function HudDialogChat.ShouldReceiveRenderEvents() end

-- A check for whether the dialogue should recieve keyboard events.
---@return boolean
function HudDialogChat.ShouldReceiveKeyboardEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function HudDialogChat.ShouldReceiveMouseEvents() end

---@return boolean
function HudDialogChat.RequiresUngrabbedMouse() end

---@return boolean
function HudDialogChat.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function HudDialogChat.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function HudDialogChat.CaptureRawMouse() end

-- Disposes the Dialog.
function HudDialogChat.Dispose() end

-- Clears the composers.
function HudDialogChat.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function HudDialogChat.IsInRangeOf(pos) end

---@return userdata
function HudDialogChat.GetType() end

---@return string
function HudDialogChat.ToString() end

---@param obj userdata
---@return boolean
function HudDialogChat.Equals(obj) end

---@return number
function HudDialogChat.GetHashCode() end


