---@meta

---@class GuiScreenMessage: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenMessage = {}

---@param title string
---@param text string
---@param OnPressBack function
---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenMessage
function GuiScreenMessage.ctor(title, text, OnPressBack, screenManager, parentScreen) end

---@return boolean
function GuiScreenMessage.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenMessage.get_IsOpened() end

---@return boolean
function GuiScreenMessage.get_RenderBg() end

---@param value boolean
function GuiScreenMessage.set_RenderBg(value) end

---@param eventCode string
function GuiScreenMessage.BubbleUpEvent(eventCode) end

function GuiScreenMessage.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenMessage.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenMessage.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenMessage.RenderToPrimary(dt) end

---@param dt number
function GuiScreenMessage.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenMessage.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenMessage.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenMessage.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenMessage.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenMessage.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenMessage.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenMessage.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMessage.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMessage.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMessage.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenMessage.OnMouseWheel(e) end

---@return boolean
function GuiScreenMessage.OnBackPressed() end

function GuiScreenMessage.OnWindowClosed() end

---@param focus boolean
function GuiScreenMessage.OnFocusChanged(focus) end

function GuiScreenMessage.OnScreenUnload() end

function GuiScreenMessage.OnScreenLoaded() end

---@param reason string
function GuiScreenMessage.ReloadWorld(reason) end

function GuiScreenMessage.Dispose() end

---@return userdata
function GuiScreenMessage.GetType() end

---@return string
function GuiScreenMessage.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenMessage.Equals(obj) end

---@return number
function GuiScreenMessage.GetHashCode() end


