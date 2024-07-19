---@meta

---@class GuiScreenMainRight: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenMainRight = {}

---@param screenManager ScreenManager
---@param parent GuiScreen
---@return GuiScreenMainRight
function GuiScreenMainRight.ctor(screenManager, parent) end

function GuiScreenMainRight.OnScreenLoaded() end

function GuiScreenMainRight.Compose() end

---@param dt number
function GuiScreenMainRight.RenderToDefaultFramebuffer(dt) end

---@param dt number
---@param ellapsedMs number
---@param onlyBackground? boolean
function GuiScreenMainRight.Render(dt, ellapsedMs, onlyBackground) end

function GuiScreenMainRight.Dispose() end

---@return boolean
function GuiScreenMainRight.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenMainRight.get_IsOpened() end

---@return boolean
function GuiScreenMainRight.get_RenderBg() end

---@param value boolean
function GuiScreenMainRight.set_RenderBg(value) end

---@param eventCode string
function GuiScreenMainRight.BubbleUpEvent(eventCode) end

function GuiScreenMainRight.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenMainRight.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenMainRight.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenMainRight.RenderToPrimary(dt) end

---@param dt number
function GuiScreenMainRight.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenMainRight.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenMainRight.RenderAfterBlit(dt) end

---@param filename string
---@return boolean
function GuiScreenMainRight.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenMainRight.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenMainRight.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenMainRight.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMainRight.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMainRight.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMainRight.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenMainRight.OnMouseWheel(e) end

---@return boolean
function GuiScreenMainRight.OnBackPressed() end

function GuiScreenMainRight.OnWindowClosed() end

---@param focus boolean
function GuiScreenMainRight.OnFocusChanged(focus) end

function GuiScreenMainRight.OnScreenUnload() end

---@param reason string
function GuiScreenMainRight.ReloadWorld(reason) end

---@return userdata
function GuiScreenMainRight.GetType() end

---@return string
function GuiScreenMainRight.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenMainRight.Equals(obj) end

---@return number
function GuiScreenMainRight.GetHashCode() end


