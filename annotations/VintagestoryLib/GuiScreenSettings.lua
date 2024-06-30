---@meta

---@class GuiScreenSettings: GuiScreen, GuiScreen, IGameSettingsHandler, IGuiCompositeHandler
---@field IsIngame boolean
---@field MaxViewDistanceAlarmValue Nullable`1
---@field GuiComposers GuiComposerManager
---@field Api ICoreClientAPI
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenSettings = {}

---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenSettings
function GuiScreenSettings.ctor(screenManager, parentScreen) end

---@return boolean
function GuiScreenSettings.get_IsIngame() end

---@return Nullable`1
function GuiScreenSettings.get_MaxViewDistanceAlarmValue() end

---@return boolean
function GuiScreenSettings.OnBackPressed() end

---@return GuiComposerManager
function GuiScreenSettings.get_GuiComposers() end

---@return ICoreClientAPI # The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
function GuiScreenSettings.get_Api() end

---@param composer GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiScreenSettings.LoadComposer(composer) end

---@return boolean
function GuiScreenSettings.LeaveSettingsMenu() end

---@param e KeyEvent
function GuiScreenSettings.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenSettings.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenSettings.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenSettings.OnMouseUp(e) end

function GuiScreenSettings.ReloadShaders() end

function GuiScreenSettings.OnScreenLoaded() end

function GuiScreenSettings.OnMacroEditor() end

---@return boolean
function GuiScreenSettings.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenSettings.get_IsOpened() end

---@return boolean
function GuiScreenSettings.get_RenderBg() end

---@param value boolean
function GuiScreenSettings.set_RenderBg(value) end

---@param eventCode string
function GuiScreenSettings.BubbleUpEvent(eventCode) end

function GuiScreenSettings.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenSettings.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenSettings.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenSettings.RenderToPrimary(dt) end

---@param dt number
function GuiScreenSettings.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenSettings.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenSettings.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenSettings.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenSettings.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenSettings.OnKeyPress(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenSettings.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenSettings.OnMouseWheel(e) end

function GuiScreenSettings.OnWindowClosed() end

---@param focus boolean
function GuiScreenSettings.OnFocusChanged(focus) end

function GuiScreenSettings.OnScreenUnload() end

---@param reason string
function GuiScreenSettings.ReloadWorld(reason) end

function GuiScreenSettings.Dispose() end

---@return userdata
function GuiScreenSettings.GetType() end

---@return string
function GuiScreenSettings.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenSettings.Equals(obj) end

---@return number
function GuiScreenSettings.GetHashCode() end


