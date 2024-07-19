---@meta

---@class GuiDialogCharacterBase: GuiDialog, IDisposable, GuiDialog
---@field Tabs table
---@field RenderTabHandlers table
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field DebugName string Debug name.  For debugging purposes.
---@field ZSize number The amount of depth required for this dialog. Default is 150. Required for correct z-ordering of dialogs.
---@field Focused boolean Is the dialogue currently in focus?
---@field Focusable boolean Can this dialog be focused?
---@field DialogType EnumDialogType Is this dialogue a dialogue or a HUD object?
---@field DrawOrder number 0 = draw first, 1 = draw last. Used to enforce tooltips and held itemstack always drawn last to be visible. Vanilla dialogs draw order: Name tags: -0.1 Chat dialog: 0 Block Interaction help: 0.05 Worldmap HUD: 0.07 Default value for most other dialogs: 0.1 Worldmap Dialog: 0.11 Player and Chest inventories: 0.2 Various config/edit dialogs: 0.2 Handbook: 0.2 Escape menu: 0.89
---@field InputOrder number Determines the order on which dialog receives keyboard input first when the dialog is opened. 0 = handle inputs first, 9999 = handle inputs last. Reference list: 0: Escape menu 0.5 (default): tick profiler, selection box editor, macro editor, survival&creative inventory, first launch info dialog, dead dialog, character dialog, etc. 1: hotbar 1.1: chat dialog
---@field UnregisterOnClose boolean Should this dialogue de-register itself once it's closed? (Defaults to no)
---@field PrefersUngrabbedMouse boolean Gets whether it is preferred for the mouse to be not grabbed while this dialog is opened. If true (default), the Alt button needs to be held to manually grab the mouse.
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field ToggleKeyCombinationCode string The key combination string that toggles this GUI object.
---@field ComposeExtraGuis function
---@field TabClicked function
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
GuiDialogCharacterBase = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return GuiDialogCharacterBase
function GuiDialogCharacterBase.ctor(capi) end

---@return table
function GuiDialogCharacterBase.get_Tabs() end

---@return table
function GuiDialogCharacterBase.get_RenderTabHandlers() end

function GuiDialogCharacterBase.OnTitleBarClose() end

---@param value function
function GuiDialogCharacterBase.add_ComposeExtraGuis(value) end

---@param value function
function GuiDialogCharacterBase.remove_ComposeExtraGuis(value) end

---@param value function
function GuiDialogCharacterBase.add_TabClicked(value) end

---@param value function
function GuiDialogCharacterBase.remove_TabClicked(value) end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogCharacterBase.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogCharacterBase.set_SingleComposer(value) end

---@return string
function GuiDialogCharacterBase.get_DebugName() end

---@return number
function GuiDialogCharacterBase.get_ZSize() end

---@return boolean
function GuiDialogCharacterBase.get_Focused() end

---@return boolean
function GuiDialogCharacterBase.get_Focusable() end

---@return EnumDialogType
function GuiDialogCharacterBase.get_DialogType() end

---@param value function
function GuiDialogCharacterBase.add_OnOpened(value) end

---@param value function
function GuiDialogCharacterBase.remove_OnOpened(value) end

---@param value function
function GuiDialogCharacterBase.add_OnClosed(value) end

---@param value function
function GuiDialogCharacterBase.remove_OnClosed(value) end

-- Makes this gui pop up once a pre-set given key combination is set.
function GuiDialogCharacterBase.OnBlockTexturesLoaded() end

function GuiDialogCharacterBase.OnLevelFinalize() end

function GuiDialogCharacterBase.OnOwnPlayerDataReceived() end

---@return number
function GuiDialogCharacterBase.get_DrawOrder() end

---@return number
function GuiDialogCharacterBase.get_InputOrder() end

---@return boolean
function GuiDialogCharacterBase.get_UnregisterOnClose() end

-- Fires when the GUI is opened.
function GuiDialogCharacterBase.OnGuiOpened() end

-- Fires when the GUI is closed.
function GuiDialogCharacterBase.OnGuiClosed() end

-- Attempts to open this dialogue.
---@return boolean
function GuiDialogCharacterBase.TryOpen() end

---@param withFocus boolean
---@return boolean
function GuiDialogCharacterBase.TryOpen(withFocus) end

-- Attempts to close this dialogue- triggering the OnCloseDialogue event.
---@return boolean
function GuiDialogCharacterBase.TryClose() end

-- Unfocuses the dialogue.
function GuiDialogCharacterBase.UnFocus() end

-- Focuses the dialog
function GuiDialogCharacterBase.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function GuiDialogCharacterBase.Toggle() end

-- Is this dialogue opened?
---@return boolean
function GuiDialogCharacterBase.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function GuiDialogCharacterBase.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function GuiDialogCharacterBase.OnBeforeRenderFrame3D(deltaTime) end

-- This runs when the dialogue is ready to render all of the components.
---@param deltaTime number
function GuiDialogCharacterBase.OnRenderGUI(deltaTime) end

-- This runs when the dialogue is finalizing and cleaning up all of the components.
---@param dt number
function GuiDialogCharacterBase.OnFinalizeFrame(dt) end

-- Fires when keys are held down.
---@param args KeyEvent
function GuiDialogCharacterBase.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function GuiDialogCharacterBase.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function GuiDialogCharacterBase.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function GuiDialogCharacterBase.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogCharacterBase.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogCharacterBase.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogCharacterBase.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is held down.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogCharacterBase.OnMouseDown(args) end

-- Fires when a mouse button is released.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogCharacterBase.OnMouseUp(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogCharacterBase.OnMouseMove(args) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiDialogCharacterBase.OnMouseWheel(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function GuiDialogCharacterBase.ShouldReceiveRenderEvents() end

-- A check for whether the dialogue should recieve keyboard events.
---@return boolean
function GuiDialogCharacterBase.ShouldReceiveKeyboardEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function GuiDialogCharacterBase.ShouldReceiveMouseEvents() end

---@return boolean
function GuiDialogCharacterBase.get_PrefersUngrabbedMouse() end

---@return boolean
function GuiDialogCharacterBase.RequiresUngrabbedMouse() end

---@return boolean
function GuiDialogCharacterBase.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function GuiDialogCharacterBase.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function GuiDialogCharacterBase.CaptureRawMouse() end

-- Disposes the Dialog.
function GuiDialogCharacterBase.Dispose() end

-- Clears the composers.
function GuiDialogCharacterBase.ClearComposers() end

---@return string
function GuiDialogCharacterBase.get_ToggleKeyCombinationCode() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function GuiDialogCharacterBase.IsInRangeOf(pos) end

---@return userdata
function GuiDialogCharacterBase.GetType() end

---@return string
function GuiDialogCharacterBase.ToString() end

---@param obj userdata
---@return boolean
function GuiDialogCharacterBase.Equals(obj) end

---@return number
function GuiDialogCharacterBase.GetHashCode() end


