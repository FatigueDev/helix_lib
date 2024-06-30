---@meta

---@class GuiDialogCharacter: GuiDialogCharacterBase, IDisposable, GuiDialog, GuiDialogCharacterBase
---@field ToggleKeyCombinationCode string
---@field PrefersUngrabbedMouse boolean
---@field ZSize number
---@field Tabs table
---@field RenderTabHandlers table
---@field SingleComposer GuiComposer A single composer for this GUIDialogue.
---@field DebugName string Debug name.  For debugging purposes.
---@field Focused boolean Is the dialogue currently in focus?
---@field Focusable boolean Can this dialog be focused?
---@field DialogType EnumDialogType Is this dialogue a dialogue or a HUD object?
---@field DrawOrder number 0 = draw first, 1 = draw last. Used to enforce tooltips and held itemstack always drawn last to be visible. Vanilla dialogs draw order: Name tags: -0.1 Chat dialog: 0 Block Interaction help: 0.05 Worldmap HUD: 0.07 Default value for most other dialogs: 0.1 Worldmap Dialog: 0.11 Player and Chest inventories: 0.2 Various config/edit dialogs: 0.2 Handbook: 0.2 Escape menu: 0.89
---@field InputOrder number Determines the order on which dialog receives keyboard input first when the dialog is opened. 0 = handle inputs first, 9999 = handle inputs last. Reference list: 0: Escape menu 0.5 (default): tick profiler, selection box editor, macro editor, survival&creative inventory, first launch info dialog, dead dialog, character dialog, etc. 1: hotbar 1.1: chat dialog
---@field UnregisterOnClose boolean Should this dialogue de-register itself once it's closed? (Defaults to no)
---@field DisableMouseGrab boolean Gets whether ability to grab the mouse cursor is disabled while this dialog is opened. For example, the escape menu. (Default: false)
---@field ComposeExtraGuis function
---@field TabClicked function
---@field OnOpened function The event fired when this dialogue is opened.
---@field OnClosed function The event fired when this dialogue is closed.
---@field rendertabhandlers table
---@field Composers DlgComposers The Instance of Dialogue Composer for this GUIDialogue.
---@field ignoreNextKeyPress boolean
---@field MouseOverCursor string
GuiDialogCharacter = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return GuiDialogCharacter
function GuiDialogCharacter.ctor(capi) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogCharacter.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogCharacter.OnMouseUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiDialogCharacter.OnMouseMove(args) end

---@param value function
function GuiDialogCharacter.add_ComposeExtraGuis(value) end

---@param value function
function GuiDialogCharacter.remove_ComposeExtraGuis(value) end

---@param value function
function GuiDialogCharacter.add_TabClicked(value) end

---@param value function
function GuiDialogCharacter.remove_TabClicked(value) end

---@param deltaTime number
function GuiDialogCharacter.OnRenderGUI(deltaTime) end

function GuiDialogCharacter.OnGuiOpened() end

function GuiDialogCharacter.OnGuiClosed() end

---@return string
function GuiDialogCharacter.get_ToggleKeyCombinationCode() end

---@return boolean
function GuiDialogCharacter.get_PrefersUngrabbedMouse() end

---@return number
function GuiDialogCharacter.get_ZSize() end

---@return table
function GuiDialogCharacter.get_Tabs() end

---@return table
function GuiDialogCharacter.get_RenderTabHandlers() end

function GuiDialogCharacter.OnTitleBarClose() end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogCharacter.get_SingleComposer() end

---@param value GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiDialogCharacter.set_SingleComposer(value) end

---@return string
function GuiDialogCharacter.get_DebugName() end

---@return boolean
function GuiDialogCharacter.get_Focused() end

---@return boolean
function GuiDialogCharacter.get_Focusable() end

---@return EnumDialogType
function GuiDialogCharacter.get_DialogType() end

---@param value function
function GuiDialogCharacter.add_OnOpened(value) end

---@param value function
function GuiDialogCharacter.remove_OnOpened(value) end

---@param value function
function GuiDialogCharacter.add_OnClosed(value) end

---@param value function
function GuiDialogCharacter.remove_OnClosed(value) end

-- Makes this gui pop up once a pre-set given key combination is set.
function GuiDialogCharacter.OnBlockTexturesLoaded() end

function GuiDialogCharacter.OnLevelFinalize() end

function GuiDialogCharacter.OnOwnPlayerDataReceived() end

---@return number
function GuiDialogCharacter.get_DrawOrder() end

---@return number
function GuiDialogCharacter.get_InputOrder() end

---@return boolean
function GuiDialogCharacter.get_UnregisterOnClose() end

-- Attempts to open this dialogue.
---@return boolean
function GuiDialogCharacter.TryOpen() end

---@param withFocus boolean
---@return boolean
function GuiDialogCharacter.TryOpen(withFocus) end

-- Attempts to close this dialogue- triggering the OnCloseDialogue event.
---@return boolean
function GuiDialogCharacter.TryClose() end

-- Unfocuses the dialogue.
function GuiDialogCharacter.UnFocus() end

-- Focuses the dialog
function GuiDialogCharacter.Focus() end

-- If the dialogue is opened, this attempts to close it.  If the dialogue is closed, this attempts to open it.
function GuiDialogCharacter.Toggle() end

-- Is this dialogue opened?
---@return boolean
function GuiDialogCharacter.IsOpened() end

-- Is this dialogue opened in the given context?
---@param dialogComposerName string
---@return boolean
function GuiDialogCharacter.IsOpened(dialogComposerName) end

-- This runs before the render.  Local update method.
---@param deltaTime number
function GuiDialogCharacter.OnBeforeRenderFrame3D(deltaTime) end

-- This runs when the dialogue is finalizing and cleaning up all of the components.
---@param dt number
function GuiDialogCharacter.OnFinalizeFrame(dt) end

-- Fires when keys are held down.
---@param args KeyEvent
function GuiDialogCharacter.OnKeyDown(args) end

-- Fires when the keys are pressed.
---@param args KeyEvent
function GuiDialogCharacter.OnKeyPress(args) end

-- Fires when the keys are released.
---@param args KeyEvent
function GuiDialogCharacter.OnKeyUp(args) end

-- Fires explicitly when the Escape key is pressed and attempts to close the dialogue.
---@return boolean
function GuiDialogCharacter.OnEscapePressed() end

-- Fires when the mouse enters the given slot.
---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogCharacter.OnMouseEnterSlot(slot) end

-- Fires when the mouse leaves the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogCharacter.OnMouseLeaveSlot(itemSlot) end

-- Fires when the mouse clicks within the slot.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiDialogCharacter.OnMouseClickSlot(itemSlot) end

-- Fires when the mouse wheel is scrolled.
---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiDialogCharacter.OnMouseWheel(args) end

-- A check for whether the dialogue should recieve Render events.
---@return boolean
function GuiDialogCharacter.ShouldReceiveRenderEvents() end

-- A check for whether the dialogue should recieve keyboard events.
---@return boolean
function GuiDialogCharacter.ShouldReceiveKeyboardEvents() end

-- A check if the dialogue should recieve mouse events.
---@return boolean
function GuiDialogCharacter.ShouldReceiveMouseEvents() end

---@return boolean
function GuiDialogCharacter.RequiresUngrabbedMouse() end

---@return boolean
function GuiDialogCharacter.get_DisableMouseGrab() end

-- Should this dialog (e.g. textbox) capture all the keyboard events except for escape.
---@return boolean
function GuiDialogCharacter.CaptureAllInputs() end

-- Should this dialog capture the raw mouse button clicks - useful for example for the settings menu itself (in case the user has unset them or set them to something crazy)
---@return boolean
function GuiDialogCharacter.CaptureRawMouse() end

-- Disposes the Dialog.
function GuiDialogCharacter.Dispose() end

-- Clears the composers.
function GuiDialogCharacter.ClearComposers() end

-- Checks if the player is in range (pickingrange) of the given position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return boolean
function GuiDialogCharacter.IsInRangeOf(pos) end

---@return userdata
function GuiDialogCharacter.GetType() end

---@return string
function GuiDialogCharacter.ToString() end

---@param obj userdata
---@return boolean
function GuiDialogCharacter.Equals(obj) end

---@return number
function GuiDialogCharacter.GetHashCode() end


