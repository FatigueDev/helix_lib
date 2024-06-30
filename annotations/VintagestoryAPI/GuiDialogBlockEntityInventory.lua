---@meta

-- A block entity inventory system for things like a campfire, or other things like that.
---@class GuiDialogBlockEntityInventory: GuiDialogBlockEntity, IDisposable, GuiDialog, GuiDialogBlockEntity, GuiDialogGeneric
---@field DrawOrder number
---@field IsDuplicate boolean
---@field Inventory InventoryBase
---@field BlockEntityPosition BlockPos
---@field OpenSound AssetLocation Gets the opening sound for the dialog being opened, or null if none.
---@field CloseSound AssetLocation Gets the opening sound for the dialog being opened, or null if none.
---@field PrefersUngrabbedMouse boolean
---@field UnregisterOnClose boolean Should this Dialog de-register itself once closed?
---@field Attributes ITreeAttribute The tree attributes for this dialog.
---@field ToggleKeyCombinationCode string
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field DebugName string Debug name.  For debugging purposes.
---@field ZSize number The amount of depth required for this dialog. Default is 150. Required for correct z-ordering of dialogs.
---@field Focused boolean Is the dialogue currently in focus?
---@field Focusable boolean Can this dialog be focused?
---@field DialogType EnumDialogType Is this dialogue a dialogue or a HUD object?
---@field InputOrder number Determines the order on which dialog receives keyboard input first when the dialog is opened. 0 = handle inputs first, 9999 = handle inputs last. Reference list: 0: Escape menu 0.5 (default): tick profiler, selection box editor, macro editor, survival&creative inventory, first launch info dialog, dead dialog, character dialog, etc. 1: hotbar 1.1: chat dialog
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field DialogTitle string The title of the Dialog.
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
GuiDialogBlockEntityInventory = {}

---@param dialogTitle string
---@param inventory InventoryBase Basic class representing an item inventory
---@param blockEntityPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param cols number
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return GuiDialogBlockEntityInventory
function GuiDialogBlockEntityInventory.ctor(dialogTitle, inventory, blockEntityPos, cols, capi) end

---@return number
function GuiDialogBlockEntityInventory.get_DrawOrder() end

function GuiDialogBlockEntityInventory.OnGuiClosed() end

function GuiDialogBlockEntityInventory.OnGuiOpened() end

---@return boolean
function GuiDialogBlockEntityInventory.get_IsDuplicate() end

---@return InventoryBase # Basic class representing an item inventory
function GuiDialogBlockEntityInventory.get_Inventory() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function GuiDialogBlockEntityInventory.get_BlockEntityPosition() end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function GuiDialogBlockEntityInventory.get_OpenSound() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function GuiDialogBlockEntityInventory.set_OpenSound(value) end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function GuiDialogBlockEntityInventory.get_CloseSound() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function GuiDialogBlockEntityInventory.set_CloseSound(value) end

-- This occurs right before the frame is pushed to the screen.
---@param dt number
function GuiDialogBlockEntityInventory.OnFinalizeFrame(dt) end

-- Render's the object in Orthographic mode.
---@param deltaTime number
function GuiDialogBlockEntityInventory.OnRenderGUI(deltaTime) end

-- Attempts to open this gui.
---@return boolean
function GuiDialogBlockEntityInventory.TryOpen() end

---@return boolean
function GuiDialogBlockEntityInventory.get_PrefersUngrabbedMouse() end

-- Reloads the values of the GUI.
function GuiDialogBlockEntityInventory.ReloadValues() end

---@param code string
---@return EnumPosFlag
function GuiDialogBlockEntityInventory.GetFreePos(code) end

---@param code string
---@param pos EnumPosFlag
function GuiDialogBlockEntityInventory.OccupyPos(code, pos) end

---@param code string
---@param pos EnumPosFlag
function GuiDialogBlockEntityInventory.FreePos(code, pos) end

---@return boolean
function GuiDialogBlockEntityInventory.get_UnregisterOnClose() end

---@return ITreeAttribute # Represents a List of nestable Attributes
function GuiDialogBlockEntityInventory.get_Attributes() end

---@return string
function GuiDialogBlockEntityInventory.get_ToggleKeyCombinationCode() end

-- Recomposes the dialog with it's set of elements.
function GuiDialogBlockEntityInventory.Recompose() end

-- Unfocuses the elements in each composer.
function GuiDialogBlockEntityInventory.UnfocusElements() end

-- Focuses a specific element in the single composer.
---@param index number
function GuiDialogBlockEntityInventory.FocusElement(index) end

-- Checks if the player is in range of the block.
---@param blockEntityPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function GuiDialogBlockEntityInventory.IsInRangeOfBlock(blockEntityPos) end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogBlockEntityInventory.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogBlockEntityInventory.set_SingleComposer(value) end

---@return string
function GuiDialogBlockEntityInventory.get_DebugName() end

---@return number
function GuiDialogBlockEntityInventory.get_ZSize() end

---@return boolean
function GuiDialogBlockEntityInventory.get_Focused() end

---@return boolean
function GuiDialogBlockEntityInventory.get_Focusable() end

---@return EnumDialogType
function GuiDialogBlockEntityInventory.get_DialogType() end

---@param value function
function GuiDialogBlockEntityInventory.add_OnOpened(value) end

---@param value function
function GuiDialogBlockEntityInventory.remove_OnOpened(value) end

---@param value function
function GuiDialogBlockEntityInventory.add_OnClosed(value) end

---@param value function
function GuiDialogBlockEntityInventory.remove_OnClosed(value) end

-- Makes this gui pop up once a pre-set given key combination is set.
function GuiDialogBlockEntityInventory.OnBlockTexturesLoaded() end

function GuiDialogBlockEntityInventory.OnLevelFinalize() end

function GuiDialogBlockEntityInventory.OnOwnPlayerDataReceived() end

---@return number
function GuiDialogBlockEntityInventory.get_InputOrder() end

---@param withFocus boolean
---@return boolean
function GuiDialogBlockEntityInventory.TryOpen(withFocus) end

-- Attempts to close this dialogue- triggering the OnCloseDialogue event.
---@return boolean
function GuiDialogBlockEntityInventory.TryClose() end

-- Unfocuses the dialogue.
function GuiDialogBlockEntityInventory.UnFocus() end

-- Focuses the dialog
function GuiDialogBlockEntityInventory.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function GuiDialogBlockEntityInventory.Toggle() end

-- Is this dialogue opened?
---@return boolean
function GuiDialogBlockEntityInventory.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function GuiDialogBlockEntityInventory.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function GuiDialogBlockEntityInventory.OnBeforeRenderFrame3D(deltaTime) end

-- Fires when keys are held down.
---@param args KeyEvent
function GuiDialogBlockEntityInventory.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function GuiDialogBlockEntityInventory.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function GuiDialogBlockEntityInventory.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function GuiDialogBlockEntityInventory.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogBlockEntityInventory.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogBlockEntityInventory.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogBlockEntityInventory.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is held down.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogBlockEntityInventory.OnMouseDown(args) end

-- Fires when a mouse button is released.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogBlockEntityInventory.OnMouseUp(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogBlockEntityInventory.OnMouseMove(args) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiDialogBlockEntityInventory.OnMouseWheel(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function GuiDialogBlockEntityInventory.ShouldReceiveRenderEvents() end

-- A check for whether the dialogue should recieve keyboard events.
---@return boolean
function GuiDialogBlockEntityInventory.ShouldReceiveKeyboardEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function GuiDialogBlockEntityInventory.ShouldReceiveMouseEvents() end

---@return boolean
function GuiDialogBlockEntityInventory.RequiresUngrabbedMouse() end

---@return boolean
function GuiDialogBlockEntityInventory.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function GuiDialogBlockEntityInventory.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function GuiDialogBlockEntityInventory.CaptureRawMouse() end

-- Disposes the Dialog.
function GuiDialogBlockEntityInventory.Dispose() end

-- Clears the composers.
function GuiDialogBlockEntityInventory.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function GuiDialogBlockEntityInventory.IsInRangeOf(pos) end

---@return userdata
function GuiDialogBlockEntityInventory.GetType() end

---@return string
function GuiDialogBlockEntityInventory.ToString() end

---@param obj userdata
---@return boolean
function GuiDialogBlockEntityInventory.Equals(obj) end

---@return number
function GuiDialogBlockEntityInventory.GetHashCode() end


