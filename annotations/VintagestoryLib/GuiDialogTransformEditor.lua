---@meta

---@class GuiDialogTransformEditor: GuiDialog, IDisposable, GuiDialog
---@field TargetTransform ModelTransform
---@field ToggleKeyCombinationCode string
---@field PrefersUngrabbedMouse boolean
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field DebugName string Debug name.  For debugging purposes.
---@field ZSize number The amount of depth required for this dialog. Default is 150. Required for correct z-ordering of dialogs.
---@field Focused boolean Is the dialogue currently in focus?
---@field Focusable boolean Can this dialog be focused?
---@field DialogType EnumDialogType Is this dialogue a dialogue or a HUD object?
---@field DrawOrder number 0 = draw first, 1 = draw last. Used to enforce tooltips and held itemstack always drawn last to be visible. Vanilla dialogs draw order: Name tags: -0.1 Chat dialog: 0 Block Interaction help: 0.05 Worldmap HUD: 0.07 Default value for most other dialogs: 0.1 Worldmap Dialog: 0.11 Player and Chest inventories: 0.2 Various config/edit dialogs: 0.2 Handbook: 0.2 Escape menu: 0.89
---@field InputOrder number Determines the order on which dialog receives keyboard input first when the dialog is opened. 0 = handle inputs first, 9999 = handle inputs last. Reference list: 0: Escape menu 0.5 (default): tick profiler, selection box editor, macro editor, survival&creative inventory, first launch info dialog, dead dialog, character dialog, etc. 1: hotbar 1.1: chat dialog
---@field UnregisterOnClose boolean Should this dialogue de-register itself once it's closed? (Defaults to no)
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field extraTransforms table
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
GuiDialogTransformEditor = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return GuiDialogTransformEditor
function GuiDialogTransformEditor.ctor(capi) end

---@return ModelTransform # Used for transformations applied to a block or item model
function GuiDialogTransformEditor.get_TargetTransform() end

---@param value ModelTransform Used for transformations applied to a block or item model
function GuiDialogTransformEditor.set_TargetTransform(value) end

function GuiDialogTransformEditor.OnGuiOpened() end

---@return string
function GuiDialogTransformEditor.get_ToggleKeyCombinationCode() end

function GuiDialogTransformEditor.OnGuiClosed() end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiDialogTransformEditor.OnMouseWheel(args) end

---@return boolean
function GuiDialogTransformEditor.get_PrefersUngrabbedMouse() end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogTransformEditor.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogTransformEditor.set_SingleComposer(value) end

---@return string
function GuiDialogTransformEditor.get_DebugName() end

---@return number
function GuiDialogTransformEditor.get_ZSize() end

---@return boolean
function GuiDialogTransformEditor.get_Focused() end

---@return boolean
function GuiDialogTransformEditor.get_Focusable() end

---@return EnumDialogType
function GuiDialogTransformEditor.get_DialogType() end

---@param value function
function GuiDialogTransformEditor.add_OnOpened(value) end

---@param value function
function GuiDialogTransformEditor.remove_OnOpened(value) end

---@param value function
function GuiDialogTransformEditor.add_OnClosed(value) end

---@param value function
function GuiDialogTransformEditor.remove_OnClosed(value) end

-- Makes this gui pop up once a pre-set given key combination is set.
function GuiDialogTransformEditor.OnBlockTexturesLoaded() end

function GuiDialogTransformEditor.OnLevelFinalize() end

function GuiDialogTransformEditor.OnOwnPlayerDataReceived() end

---@return number
function GuiDialogTransformEditor.get_DrawOrder() end

---@return number
function GuiDialogTransformEditor.get_InputOrder() end

---@return boolean
function GuiDialogTransformEditor.get_UnregisterOnClose() end

-- Attempts to open this dialogue.
---@return boolean
function GuiDialogTransformEditor.TryOpen() end

---@param withFocus boolean
---@return boolean
function GuiDialogTransformEditor.TryOpen(withFocus) end

-- Attempts to close this dialogue- triggering the OnCloseDialogue event.
---@return boolean
function GuiDialogTransformEditor.TryClose() end

-- Unfocuses the dialogue.
function GuiDialogTransformEditor.UnFocus() end

-- Focuses the dialog
function GuiDialogTransformEditor.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function GuiDialogTransformEditor.Toggle() end

-- Is this dialogue opened?
---@return boolean
function GuiDialogTransformEditor.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function GuiDialogTransformEditor.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function GuiDialogTransformEditor.OnBeforeRenderFrame3D(deltaTime) end

-- This runs when the dialogue is ready to render all of the components.
---@param deltaTime number
function GuiDialogTransformEditor.OnRenderGUI(deltaTime) end

-- This runs when the dialogue is finalizing and cleaning up all of the components.
---@param dt number
function GuiDialogTransformEditor.OnFinalizeFrame(dt) end

-- Fires when keys are held down.
---@param args KeyEvent
function GuiDialogTransformEditor.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function GuiDialogTransformEditor.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function GuiDialogTransformEditor.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function GuiDialogTransformEditor.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogTransformEditor.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogTransformEditor.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogTransformEditor.OnMouseClickSlot(itemSlot) end

-- Fires when a mouse button is held down.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogTransformEditor.OnMouseDown(args) end

-- Fires when a mouse button is released.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogTransformEditor.OnMouseUp(args) end

-- Fires when the mouse is moved.
---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogTransformEditor.OnMouseMove(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function GuiDialogTransformEditor.ShouldReceiveRenderEvents() end

-- A check for whether the dialogue should recieve keyboard events.
---@return boolean
function GuiDialogTransformEditor.ShouldReceiveKeyboardEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function GuiDialogTransformEditor.ShouldReceiveMouseEvents() end

---@return boolean
function GuiDialogTransformEditor.RequiresUngrabbedMouse() end

---@return boolean
function GuiDialogTransformEditor.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function GuiDialogTransformEditor.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function GuiDialogTransformEditor.CaptureRawMouse() end

-- Disposes the Dialog.
function GuiDialogTransformEditor.Dispose() end

-- Clears the composers.
function GuiDialogTransformEditor.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function GuiDialogTransformEditor.IsInRangeOf(pos) end

---@return userdata
function GuiDialogTransformEditor.GetType() end

---@return string
function GuiDialogTransformEditor.ToString() end

---@param obj userdata
---@return boolean
function GuiDialogTransformEditor.Equals(obj) end

---@return number
function GuiDialogTransformEditor.GetHashCode() end


