---@meta

---@class GuiScreenOnlineMods: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenOnlineMods = {}

---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenOnlineMods
function GuiScreenOnlineMods.ctor(screenManager, parentScreen) end

function GuiScreenOnlineMods.OnScreenLoaded() end

---@return boolean
function GuiScreenOnlineMods.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenOnlineMods.get_IsOpened() end

---@return boolean
function GuiScreenOnlineMods.get_RenderBg() end

---@param value boolean
function GuiScreenOnlineMods.set_RenderBg(value) end

---@param eventCode string
function GuiScreenOnlineMods.BubbleUpEvent(eventCode) end

function GuiScreenOnlineMods.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenOnlineMods.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenOnlineMods.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenOnlineMods.RenderToPrimary(dt) end

---@param dt number
function GuiScreenOnlineMods.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenOnlineMods.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenOnlineMods.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenOnlineMods.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenOnlineMods.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenOnlineMods.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenOnlineMods.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenOnlineMods.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenOnlineMods.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenOnlineMods.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenOnlineMods.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenOnlineMods.OnMouseWheel(e) end

---@return boolean
function GuiScreenOnlineMods.OnBackPressed() end

function GuiScreenOnlineMods.OnWindowClosed() end

---@param focus boolean
function GuiScreenOnlineMods.OnFocusChanged(focus) end

function GuiScreenOnlineMods.OnScreenUnload() end

---@param reason string
function GuiScreenOnlineMods.ReloadWorld(reason) end

function GuiScreenOnlineMods.Dispose() end

---@return userdata
function GuiScreenOnlineMods.GetType() end

---@return string
function GuiScreenOnlineMods.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenOnlineMods.Equals(obj) end

---@return number
function GuiScreenOnlineMods.GetHashCode() end


