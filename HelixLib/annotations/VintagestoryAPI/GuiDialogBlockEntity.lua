---@meta

-- Base class for dialogs bound to block entities.
---@class GuiDialogBlockEntity: GuiDialogGeneric, IDisposable, GuiDialog, GuiDialogGeneric
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
---@field DrawOrder number 0 = draw first, 1 = draw last. Used to enforce tooltips and held itemstack always drawn last to be visible. Vanilla dialogs draw order: Name tags: -0.1 Chat dialog: 0 Block Interaction help: 0.05 Worldmap HUD: 0.07 Default value for most other dialogs: 0.1 Worldmap Dialog: 0.11 Player and Chest inventories: 0.2 Various config/edit dialogs: 0.2 Handbook: 0.2 Escape menu: 0.89
---@field InputOrder number Determines the order on which dialog receives keyboard input first when the dialog is opened. 0 = handle inputs first, 9999 = handle inputs last. Reference list: 0: Escape menu 0.5 (default): tick profiler, selection box editor, macro editor, survival&creative inventory, first launch info dialog, dead dialog, character dialog, etc. 1: hotbar 1.1: chat dialog
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field DialogTitle string The title of the Dialog.
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
---@field EnumPosFlag nil
GuiDialogBlockEntity = {}

---@param dialogTitle string
---@param inventory InventoryBase Basic class representing an item inventory
---@param blockEntityPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return GuiDialogBlockEntity
function GuiDialogBlockEntity.ctor(dialogTitle, inventory, blockEntityPos, capi) end
---@param dialogTitle string
---@param blockEntityPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return GuiDialogBlockEntity
function GuiDialogBlockEntity.ctor(dialogTitle, blockEntityPos, capi) end

---@return boolean
function GuiDialogBlockEntity.get_IsDuplicate() end

---@return InventoryBase # Basic class representing an item inventory
function GuiDialogBlockEntity.get_Inventory() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function GuiDialogBlockEntity.get_BlockEntityPosition() end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function GuiDialogBlockEntity.get_OpenSound() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function GuiDialogBlockEntity.set_OpenSound(value) end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function GuiDialogBlockEntity.get_CloseSound() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function GuiDialogBlockEntity.set_CloseSound(value) end

-- This occurs right before the frame is pushed to the screen.
---@param dt number
function GuiDialogBlockEntity.OnFinalizeFrame(dt) end

-- Render's the object in Orthographic mode.
---@param deltaTime number
function GuiDialogBlockEntity.OnRenderGUI(deltaTime) end

-- Called whenver the GUI is opened.
function GuiDialogBlockEntity.OnGuiOpened() end

-- Attempts to open this gui.
---@return boolean
function GuiDialogBlockEntity.TryOpen() end

-- Called when the GUI is closed.
function GuiDialogBlockEntity.OnGuiClosed() end

---@return boolean
function GuiDialogBlockEntity.get_PrefersUngrabbedMouse() end

-- Reloads the values of the GUI.
function GuiDialogBlockEntity.ReloadValues() end

---@param code string
---@return EnumPosFlag
function GuiDialogBlockEntity.GetFreePos(code) end

---@param code string
---@param pos EnumPosFlag
function GuiDialogBlockEntity.OccupyPos(code, pos) end

---@param code string
---@param pos EnumPosFlag
function GuiDialogBlockEntity.FreePos(code, pos) end

---@return boolean
function GuiDialogBlockEntity.get_UnregisterOnClose() end

---@return ITreeAttribute # Represents a List of nestable Attributes
function GuiDialogBlockEntity.get_Attributes() end

---@return string
function GuiDialogBlockEntity.get_ToggleKeyCombinationCode() end

-- Recomposes the dialog with it's set of elements.
function GuiDialogBlockEntity.Recompose() end

-- Unfocuses the elements in each composer.
function GuiDialogBlockEntity.UnfocusElements() end

-- Focuses a specific element in the single composer.
---@param index number
function GuiDialogBlockEntity.FocusElement(index) end

-- Checks if the player is in range of the block.
---@param blockEntityPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function GuiDialogBlockEntity.IsInRangeOfBlock(blockEntityPos) end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogBlockEntity.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogBlockEntity.set_SingleComposer(value) end

---@return string
function GuiDialogBlockEntity.get_DebugName() end

---@return number
function GuiDialogBlockEntity.get_ZSize() end

---@return boolean
function GuiDialogBlockEntity.get_Focused() end

---@return boolean
function GuiDialogBlockEntity.get_Focusable() end

---@return EnumDialogType
function GuiDialogBlockEntity.get_DialogType() end

---@param value function
function GuiDialogBlockEntity.add_OnOpened(value) end

---@param value function
function GuiDialogBlockEntity.remove_OnOpened(value) end

---@param value function
function GuiDialogBlockEntity.add_OnClosed(value) end

---@param value function
function GuiDialogBlockEntity.remove_OnClosed(value) end

-- Makes this gui pop up once a pre-set given key combination is set.
function GuiDialogBlockEntity.OnBlockTexturesLoaded() end

function GuiDialogBlockEntity.OnLevelFinalize() end

function GuiDialogBlockEntity.OnOwnPlayerDataReceived() end

---@return number
function GuiDialogBlockEntity.get_DrawOrder() end

---@return number
function GuiDialogBlockEntity.get_InputOrder() end

---@param withFocus boolean
---@return boolean
function GuiDialogBlockEntity.TryOpen(withFocus) end

-- Attempts to close this dialogue- triggering the OnCloseDialogue event.
---@return boolean
function GuiDialogBlockEntity.TryClose() end

-- Unfocuses the dialogue.
function GuiDialogBlockEntity.UnFocus() end

-- Focuses the dialog
function GuiDialogBlockEntity.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function GuiDialogBlockEntity.Toggle() end

-- Is this dialogue opened?
---@return boolean
function GuiDialogBlockEntity.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function GuiDialogBlockEntity.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function GuiDialogBlockEntity.OnBeforeRenderFrame3D(deltaTime) end

-- Fires when keys are held down.
---@param args KeyEvent
function GuiDialogBlockEntity.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function GuiDialogBlockEntity.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function GuiDialogBlockEntity.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function GuiDialogBlockEntity.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogBlockEntity.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogBlockEntity.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogBlockEntity.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is held down.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogBlockEntity.OnMouseDown(args) end

-- Fires when a mouse button is released.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogBlockEntity.OnMouseUp(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogBlockEntity.OnMouseMove(args) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiDialogBlockEntity.OnMouseWheel(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function GuiDialogBlockEntity.ShouldReceiveRenderEvents() end

-- A check for whether the dialogue should recieve keyboard events.
---@return boolean
function GuiDialogBlockEntity.ShouldReceiveKeyboardEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function GuiDialogBlockEntity.ShouldReceiveMouseEvents() end

---@return boolean
function GuiDialogBlockEntity.RequiresUngrabbedMouse() end

---@return boolean
function GuiDialogBlockEntity.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function GuiDialogBlockEntity.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function GuiDialogBlockEntity.CaptureRawMouse() end

-- Disposes the Dialog.
function GuiDialogBlockEntity.Dispose() end

-- Clears the composers.
function GuiDialogBlockEntity.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function GuiDialogBlockEntity.IsInRangeOf(pos) end

---@return userdata
function GuiDialogBlockEntity.GetType() end

---@return string
function GuiDialogBlockEntity.ToString() end

---@param obj userdata
---@return boolean
function GuiDialogBlockEntity.Equals(obj) end

---@return number
function GuiDialogBlockEntity.GetHashCode() end


