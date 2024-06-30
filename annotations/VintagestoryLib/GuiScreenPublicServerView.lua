---@meta

---@class GuiScreenPublicServerView: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenPublicServerView = {}

---@param entry ServerListEntry
---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenPublicServerView
function GuiScreenPublicServerView.ctor(entry, screenManager, parentScreen) end

---@return boolean
function GuiScreenPublicServerView.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenPublicServerView.get_IsOpened() end

---@return boolean
function GuiScreenPublicServerView.get_RenderBg() end

---@param value boolean
function GuiScreenPublicServerView.set_RenderBg(value) end

---@param eventCode string
function GuiScreenPublicServerView.BubbleUpEvent(eventCode) end

function GuiScreenPublicServerView.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenPublicServerView.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenPublicServerView.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenPublicServerView.RenderToPrimary(dt) end

---@param dt number
function GuiScreenPublicServerView.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenPublicServerView.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenPublicServerView.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenPublicServerView.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenPublicServerView.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenPublicServerView.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenPublicServerView.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenPublicServerView.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenPublicServerView.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenPublicServerView.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenPublicServerView.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenPublicServerView.OnMouseWheel(e) end

---@return boolean
function GuiScreenPublicServerView.OnBackPressed() end

function GuiScreenPublicServerView.OnWindowClosed() end

---@param focus boolean
function GuiScreenPublicServerView.OnFocusChanged(focus) end

function GuiScreenPublicServerView.OnScreenUnload() end

function GuiScreenPublicServerView.OnScreenLoaded() end

---@param reason string
function GuiScreenPublicServerView.ReloadWorld(reason) end

function GuiScreenPublicServerView.Dispose() end

---@return userdata
function GuiScreenPublicServerView.GetType() end

---@return string
function GuiScreenPublicServerView.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenPublicServerView.Equals(obj) end

---@return number
function GuiScreenPublicServerView.GetHashCode() end


