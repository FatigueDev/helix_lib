---@meta

---@class GuiScreenServerResetWorld: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenServerResetWorld = {}

---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenServerResetWorld
function GuiScreenServerResetWorld.ctor(screenManager, parentScreen) end

function GuiScreenServerResetWorld.OnScreenLoaded() end

---@return boolean
function GuiScreenServerResetWorld.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenServerResetWorld.get_IsOpened() end

---@return boolean
function GuiScreenServerResetWorld.get_RenderBg() end

---@param value boolean
function GuiScreenServerResetWorld.set_RenderBg(value) end

---@param eventCode string
function GuiScreenServerResetWorld.BubbleUpEvent(eventCode) end

function GuiScreenServerResetWorld.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenServerResetWorld.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenServerResetWorld.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenServerResetWorld.RenderToPrimary(dt) end

---@param dt number
function GuiScreenServerResetWorld.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenServerResetWorld.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenServerResetWorld.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenServerResetWorld.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenServerResetWorld.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenServerResetWorld.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenServerResetWorld.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenServerResetWorld.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenServerResetWorld.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenServerResetWorld.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenServerResetWorld.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenServerResetWorld.OnMouseWheel(e) end

---@return boolean
function GuiScreenServerResetWorld.OnBackPressed() end

function GuiScreenServerResetWorld.OnWindowClosed() end

---@param focus boolean
function GuiScreenServerResetWorld.OnFocusChanged(focus) end

function GuiScreenServerResetWorld.OnScreenUnload() end

---@param reason string
function GuiScreenServerResetWorld.ReloadWorld(reason) end

function GuiScreenServerResetWorld.Dispose() end

---@return userdata
function GuiScreenServerResetWorld.GetType() end

---@return string
function GuiScreenServerResetWorld.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenServerResetWorld.Equals(obj) end

---@return number
function GuiScreenServerResetWorld.GetHashCode() end


