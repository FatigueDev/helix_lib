---@meta

-- Mainly used for block entity based guis
---@class GuiDialogGeneric: GuiDialog, IDisposable, GuiDialog
---@field UnregisterOnClose boolean Should this Dialog de-register itself once closed?
---@field Attributes ITreeAttribute The tree attributes for this dialog.
---@field ToggleKeyCombinationCode string
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field DebugName string Debug name.  For debugging purposes.
---@field ZSize number The amount of depth required for this dialog. Default is 150. Required for correct z-ordering of dialogs.
---@field Focused boolean Is the dialogue currently in focus?
---@field Focusable boolean Can this dialog be focused?
---@field DialogType EnumDialogType Is this dialogue a dialogue or a HUD object?
---@field DrawOrder number 0 = draw first, 1 = draw last. Used to enforce tooltips and held itemstack always drawn last to be visible. Vanilla dialogs draw order: Name tags: -0.1 Chat dialog: 0 Block Interaction help: 0.05 Worldmap HUD: 0.07 Default value for most other dialogs: 0.1 Worldmap Dialog: 0.11 Player and Chest inventories: 0.2 Various config/edit dialogs: 0.2 Handbook: 0.2 Escape menu: 0.89
---@field InputOrder number Determines the order on which dialog receives keyboard input first when the dialog is opened. 0 = handle inputs first, 9999 = handle inputs last. Reference list: 0: Escape menu 0.5 (default): tick profiler, selection box editor, macro editor, survival&creative inventory, first launch info dialog, dead dialog, character dialog, etc. 1: hotbar 1.1: chat dialog
---@field PrefersUngrabbedMouse boolean Gets whether it is preferred for the mouse to be not grabbed while this dialog is opened. If true (default), the Alt button needs to be held to manually grab the mouse.
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field DialogTitle string The title of the Dialog.
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
GuiDialogGeneric = {}

---@param DialogTitle string
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return GuiDialogGeneric
function GuiDialogGeneric.ctor(DialogTitle, capi) end

---@return boolean
function GuiDialogGeneric.get_UnregisterOnClose() end

---@return ITreeAttribute # Represents a List of nestable Attributes
function GuiDialogGeneric.get_Attributes() end

---@return string
function GuiDialogGeneric.get_ToggleKeyCombinationCode() end

-- Recomposes the dialog with it's set of elements.
function GuiDialogGeneric.Recompose() end

-- Unfocuses the elements in each composer.
function GuiDialogGeneric.UnfocusElements() end

-- Focuses a specific element in the single composer.
---@param index number
function GuiDialogGeneric.FocusElement(index) end

-- Checks if the player is in range of the block.
---@param blockEntityPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function GuiDialogGeneric.IsInRangeOfBlock(blockEntityPos) end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogGeneric.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogGeneric.set_SingleComposer(value) end

---@return string
function GuiDialogGeneric.get_DebugName() end

---@return number
function GuiDialogGeneric.get_ZSize() end

---@return boolean
function GuiDialogGeneric.get_Focused() end

---@return boolean
function GuiDialogGeneric.get_Focusable() end

---@return EnumDialogType
function GuiDialogGeneric.get_DialogType() end

---@param value function
function GuiDialogGeneric.add_OnOpened(value) end

---@param value function
function GuiDialogGeneric.remove_OnOpened(value) end

---@param value function
function GuiDialogGeneric.add_OnClosed(value) end

---@param value function
function GuiDialogGeneric.remove_OnClosed(value) end

-- Makes this gui pop up once a pre-set given key combination is set.
function GuiDialogGeneric.OnBlockTexturesLoaded() end

function GuiDialogGeneric.OnLevelFinalize() end

function GuiDialogGeneric.OnOwnPlayerDataReceived() end

---@return number
function GuiDialogGeneric.get_DrawOrder() end

---@return number
function GuiDialogGeneric.get_InputOrder() end

-- Fires when the GUI is opened.
function GuiDialogGeneric.OnGuiOpened() end

-- Fires when the GUI is closed.
function GuiDialogGeneric.OnGuiClosed() end

-- Attempts to open this dialogue.
---@return boolean
function GuiDialogGeneric.TryOpen() end

---@param withFocus boolean
---@return boolean
function GuiDialogGeneric.TryOpen(withFocus) end

-- Attempts to close this dialogue- triggering the OnCloseDialogue event.
---@return boolean
function GuiDialogGeneric.TryClose() end

-- Unfocuses the dialogue.
function GuiDialogGeneric.UnFocus() end

-- Focuses the dialog
function GuiDialogGeneric.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function GuiDialogGeneric.Toggle() end

-- Is this dialogue opened?
---@return boolean
function GuiDialogGeneric.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function GuiDialogGeneric.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function GuiDialogGeneric.OnBeforeRenderFrame3D(deltaTime) end

-- This runs when the dialogue is ready to render all of the components.
---@param deltaTime number
function GuiDialogGeneric.OnRenderGUI(deltaTime) end

-- This runs when the dialogue is finalizing and cleaning up all of the components.
---@param dt number
function GuiDialogGeneric.OnFinalizeFrame(dt) end

-- Fires when keys are held down.
---@param args KeyEvent
function GuiDialogGeneric.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function GuiDialogGeneric.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function GuiDialogGeneric.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function GuiDialogGeneric.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogGeneric.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogGeneric.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogGeneric.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is held down.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogGeneric.OnMouseDown(args) end

-- Fires when a mouse button is released.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogGeneric.OnMouseUp(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogGeneric.OnMouseMove(args) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiDialogGeneric.OnMouseWheel(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function GuiDialogGeneric.ShouldReceiveRenderEvents() end

-- A check for whether the dialogue should recieve keyboard events.
---@return boolean
function GuiDialogGeneric.ShouldReceiveKeyboardEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function GuiDialogGeneric.ShouldReceiveMouseEvents() end

---@return boolean
function GuiDialogGeneric.get_PrefersUngrabbedMouse() end

---@return boolean
function GuiDialogGeneric.RequiresUngrabbedMouse() end

---@return boolean
function GuiDialogGeneric.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function GuiDialogGeneric.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function GuiDialogGeneric.CaptureRawMouse() end

-- Disposes the Dialog.
function GuiDialogGeneric.Dispose() end

-- Clears the composers.
function GuiDialogGeneric.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function GuiDialogGeneric.IsInRangeOf(pos) end

---@return userdata
function GuiDialogGeneric.GetType() end

---@return string
function GuiDialogGeneric.ToString() end

---@param obj userdata
---@return boolean
function GuiDialogGeneric.Equals(obj) end

---@return number
function GuiDialogGeneric.GetHashCode() end


