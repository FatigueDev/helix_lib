---@meta

---@class GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreen = {}

---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreen
function GuiScreen.ctor(screenManager, parentScreen) end

---@return boolean
function GuiScreen.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreen.get_IsOpened() end

---@return boolean
function GuiScreen.get_RenderBg() end

---@param value boolean
function GuiScreen.set_RenderBg(value) end

---@param eventCode string
function GuiScreen.BubbleUpEvent(eventCode) end

function GuiScreen.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreen.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreen.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreen.RenderToPrimary(dt) end

---@param dt number
function GuiScreen.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreen.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreen.RenderAfterBlit(dt) end

---@param dt number
function GuiScreen.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreen.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreen.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreen.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreen.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreen.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreen.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreen.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreen.OnMouseWheel(e) end

---@return boolean
function GuiScreen.OnBackPressed() end

function GuiScreen.OnWindowClosed() end

---@param focus boolean
function GuiScreen.OnFocusChanged(focus) end

function GuiScreen.OnScreenUnload() end

function GuiScreen.OnScreenLoaded() end

---@param reason string
function GuiScreen.ReloadWorld(reason) end

function GuiScreen.Dispose() end

---@return userdata
function GuiScreen.GetType() end

---@return string
function GuiScreen.ToString() end

---@param obj userdata
---@return boolean
function GuiScreen.Equals(obj) end

---@return number
function GuiScreen.GetHashCode() end


