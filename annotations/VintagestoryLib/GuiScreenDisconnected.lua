---@meta

---@class GuiScreenDisconnected: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenDisconnected = {}

---@param reason string
---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenDisconnected
function GuiScreenDisconnected.ctor(reason, screenManager, parentScreen) end

---@param dt number
function GuiScreenDisconnected.RenderToDefaultFramebuffer(dt) end

---@return boolean
function GuiScreenDisconnected.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenDisconnected.get_IsOpened() end

---@return boolean
function GuiScreenDisconnected.get_RenderBg() end

---@param value boolean
function GuiScreenDisconnected.set_RenderBg(value) end

---@param eventCode string
function GuiScreenDisconnected.BubbleUpEvent(eventCode) end

function GuiScreenDisconnected.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenDisconnected.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenDisconnected.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenDisconnected.RenderToPrimary(dt) end

---@param dt number
function GuiScreenDisconnected.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenDisconnected.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenDisconnected.RenderAfterBlit(dt) end

---@param filename string
---@return boolean
function GuiScreenDisconnected.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenDisconnected.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenDisconnected.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenDisconnected.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenDisconnected.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenDisconnected.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenDisconnected.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenDisconnected.OnMouseWheel(e) end

---@return boolean
function GuiScreenDisconnected.OnBackPressed() end

function GuiScreenDisconnected.OnWindowClosed() end

---@param focus boolean
function GuiScreenDisconnected.OnFocusChanged(focus) end

function GuiScreenDisconnected.OnScreenUnload() end

function GuiScreenDisconnected.OnScreenLoaded() end

---@param reason string
function GuiScreenDisconnected.ReloadWorld(reason) end

function GuiScreenDisconnected.Dispose() end

---@return userdata
function GuiScreenDisconnected.GetType() end

---@return string
function GuiScreenDisconnected.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenDisconnected.Equals(obj) end

---@return number
function GuiScreenDisconnected.GetHashCode() end


