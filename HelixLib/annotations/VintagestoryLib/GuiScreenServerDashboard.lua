---@meta

---@class GuiScreenServerDashboard: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenServerDashboard = {}

---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenServerDashboard
function GuiScreenServerDashboard.ctor(screenManager, parentScreen) end

function GuiScreenServerDashboard.OnScreenLoaded() end

---@param dt number
function GuiScreenServerDashboard.RenderAfterFinalComposition(dt) end

---@return boolean
function GuiScreenServerDashboard.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenServerDashboard.get_IsOpened() end

---@return boolean
function GuiScreenServerDashboard.get_RenderBg() end

---@param value boolean
function GuiScreenServerDashboard.set_RenderBg(value) end

---@param eventCode string
function GuiScreenServerDashboard.BubbleUpEvent(eventCode) end

function GuiScreenServerDashboard.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenServerDashboard.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenServerDashboard.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenServerDashboard.RenderToPrimary(dt) end

---@param dt number
function GuiScreenServerDashboard.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenServerDashboard.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenServerDashboard.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenServerDashboard.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenServerDashboard.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenServerDashboard.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenServerDashboard.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenServerDashboard.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenServerDashboard.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenServerDashboard.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenServerDashboard.OnMouseWheel(e) end

---@return boolean
function GuiScreenServerDashboard.OnBackPressed() end

function GuiScreenServerDashboard.OnWindowClosed() end

---@param focus boolean
function GuiScreenServerDashboard.OnFocusChanged(focus) end

function GuiScreenServerDashboard.OnScreenUnload() end

---@param reason string
function GuiScreenServerDashboard.ReloadWorld(reason) end

function GuiScreenServerDashboard.Dispose() end

---@return userdata
function GuiScreenServerDashboard.GetType() end

---@return string
function GuiScreenServerDashboard.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenServerDashboard.Equals(obj) end

---@return number
function GuiScreenServerDashboard.GetHashCode() end


