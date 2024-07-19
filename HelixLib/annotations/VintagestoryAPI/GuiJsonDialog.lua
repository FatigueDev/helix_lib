---@meta

-- This is a dialogue built from JSON files.  
---@class GuiJsonDialog: GuiDialogGeneric, IDisposable, GuiDialog, GuiDialogGeneric
---@field DebugName string The debug name of the GUI
---@field ToggleKeyCombinationCode string Key Combination for the GUI
---@field PrefersUngrabbedMouse boolean
---@field UnregisterOnClose boolean Should this Dialog de-register itself once closed?
---@field Attributes ITreeAttribute The tree attributes for this dialog.
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field ZSize number The amount of depth required for this dialog. Default is 150. Required for correct z-ordering of dialogs.
---@field Focused boolean Is the dialogue currently in focus?
---@field Focusable boolean Can this dialog be focused?
---@field DialogType EnumDialogType Is this dialogue a dialogue or a HUD object?
---@field DrawOrder number 0 = draw first, 1 = draw last. Used to enforce tooltips and held itemstack always drawn last to be visible. Vanilla dialogs draw order: Name tags: -0.1 Chat dialog: 0 Block Interaction help: 0.05 Worldmap HUD: 0.07 Default value for most other dialogs: 0.1 Worldmap Dialog: 0.11 Player and Chest inventories: 0.2 Various config/edit dialogs: 0.2 Handbook: 0.2 Escape menu: 0.89
---@field InputOrder number Determines the order on which dialog receives keyboard input first when the dialog is opened. 0 = handle inputs first, 9999 = handle inputs last. Reference list: 0: Escape menu 0.5 (default): tick profiler, selection box editor, macro editor, survival&creative inventory, first launch info dialog, dead dialog, character dialog, etc. 1: hotbar 1.1: chat dialog
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field DialogTitle string The title of the Dialog.
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
GuiJsonDialog = {}

---@param settings JsonDialogSettings
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return GuiJsonDialog
function GuiJsonDialog.ctor(settings, capi) end
---@param settings JsonDialogSettings
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param focusFirstElement boolean
---@return GuiJsonDialog
function GuiJsonDialog.ctor(settings, capi, focusFirstElement) end

---@return string
function GuiJsonDialog.get_DebugName() end

---@return string
function GuiJsonDialog.get_ToggleKeyCombinationCode() end

-- Recomposes the GUI.
function GuiJsonDialog.Recompose() end

---@return boolean
function GuiJsonDialog.get_PrefersUngrabbedMouse() end

-- Composes the dialogue with specifications dictated by JSON.
---@param focusFirstElement? boolean
function GuiJsonDialog.ComposeDialog(focusFirstElement) end

-- Fires an event when the mouse is held down.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiJsonDialog.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiJsonDialog.OnMouseUp(args) end

-- Reloads the values in the GUI.
function GuiJsonDialog.ReloadValues() end

---@return boolean
function GuiJsonDialog.get_UnregisterOnClose() end

---@return ITreeAttribute # Represents a List of nestable Attributes
function GuiJsonDialog.get_Attributes() end

-- Unfocuses the elements in each composer.
function GuiJsonDialog.UnfocusElements() end

-- Focuses a specific element in the single composer.
---@param index number
function GuiJsonDialog.FocusElement(index) end

-- Checks if the player is in range of the block.
---@param blockEntityPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function GuiJsonDialog.IsInRangeOfBlock(blockEntityPos) end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiJsonDialog.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiJsonDialog.set_SingleComposer(value) end

---@return number
function GuiJsonDialog.get_ZSize() end

---@return boolean
function GuiJsonDialog.get_Focused() end

---@return boolean
function GuiJsonDialog.get_Focusable() end

---@return EnumDialogType
function GuiJsonDialog.get_DialogType() end

---@param value function
function GuiJsonDialog.add_OnOpened(value) end

---@param value function
function GuiJsonDialog.remove_OnOpened(value) end

---@param value function
function GuiJsonDialog.add_OnClosed(value) end

---@param value function
function GuiJsonDialog.remove_OnClosed(value) end

-- Makes this gui pop up once a pre-set given key combination is set.
function GuiJsonDialog.OnBlockTexturesLoaded() end

function GuiJsonDialog.OnLevelFinalize() end

function GuiJsonDialog.OnOwnPlayerDataReceived() end

---@return number
function GuiJsonDialog.get_DrawOrder() end

---@return number
function GuiJsonDialog.get_InputOrder() end

-- Fires when the GUI is opened.
function GuiJsonDialog.OnGuiOpened() end

-- Fires when the GUI is closed.
function GuiJsonDialog.OnGuiClosed() end

-- Attempts to open this dialogue.
---@return boolean
function GuiJsonDialog.TryOpen() end

---@param withFocus boolean
---@return boolean
function GuiJsonDialog.TryOpen(withFocus) end

-- Attempts to close this dialogue- triggering the OnCloseDialogue event.
---@return boolean
function GuiJsonDialog.TryClose() end

-- Unfocuses the dialogue.
function GuiJsonDialog.UnFocus() end

-- Focuses the dialog
function GuiJsonDialog.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function GuiJsonDialog.Toggle() end

-- Is this dialogue opened?
---@return boolean
function GuiJsonDialog.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function GuiJsonDialog.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function GuiJsonDialog.OnBeforeRenderFrame3D(deltaTime) end

-- This runs when the dialogue is ready to render all of the components.
---@param deltaTime number
function GuiJsonDialog.OnRenderGUI(deltaTime) end

-- This runs when the dialogue is finalizing and cleaning up all of the components.
---@param dt number
function GuiJsonDialog.OnFinalizeFrame(dt) end

-- Fires when keys are held down.
---@param args KeyEvent
function GuiJsonDialog.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function GuiJsonDialog.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function GuiJsonDialog.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function GuiJsonDialog.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiJsonDialog.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiJsonDialog.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiJsonDialog.OnMouseClickSlot(itemSlot) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiJsonDialog.OnMouseMove(args) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiJsonDialog.OnMouseWheel(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function GuiJsonDialog.ShouldReceiveRenderEvents() end

-- A check for whether the dialogue should recieve keyboard events.
---@return boolean
function GuiJsonDialog.ShouldReceiveKeyboardEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function GuiJsonDialog.ShouldReceiveMouseEvents() end

---@return boolean
function GuiJsonDialog.RequiresUngrabbedMouse() end

---@return boolean
function GuiJsonDialog.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function GuiJsonDialog.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function GuiJsonDialog.CaptureRawMouse() end

-- Disposes the Dialog.
function GuiJsonDialog.Dispose() end

-- Clears the composers.
function GuiJsonDialog.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function GuiJsonDialog.IsInRangeOf(pos) end

---@return userdata
function GuiJsonDialog.GetType() end

---@return string
function GuiJsonDialog.ToString() end

---@param obj userdata
---@return boolean
function GuiJsonDialog.Equals(obj) end

---@return number
function GuiJsonDialog.GetHashCode() end


