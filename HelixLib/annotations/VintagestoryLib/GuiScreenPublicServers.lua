---@meta

---@class GuiScreenPublicServers: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenPublicServers = {}

---@param screenManager ScreenManager
---@param parent GuiScreen
---@return GuiScreenPublicServers
function GuiScreenPublicServers.ctor(screenManager, parent) end

function GuiScreenPublicServers.OnScreenLoaded() end

---@param dt number
function GuiScreenPublicServers.RenderToDefaultFramebuffer(dt) end

---@return boolean
function GuiScreenPublicServers.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenPublicServers.get_IsOpened() end

---@return boolean
function GuiScreenPublicServers.get_RenderBg() end

---@param value boolean
function GuiScreenPublicServers.set_RenderBg(value) end

---@param eventCode string
function GuiScreenPublicServers.BubbleUpEvent(eventCode) end

function GuiScreenPublicServers.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenPublicServers.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenPublicServers.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenPublicServers.RenderToPrimary(dt) end

---@param dt number
function GuiScreenPublicServers.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenPublicServers.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenPublicServers.RenderAfterBlit(dt) end

---@param filename string
---@return boolean
function GuiScreenPublicServers.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenPublicServers.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenPublicServers.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenPublicServers.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenPublicServers.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenPublicServers.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenPublicServers.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenPublicServers.OnMouseWheel(e) end

---@return boolean
function GuiScreenPublicServers.OnBackPressed() end

function GuiScreenPublicServers.OnWindowClosed() end

---@param focus boolean
function GuiScreenPublicServers.OnFocusChanged(focus) end

function GuiScreenPublicServers.OnScreenUnload() end

---@param reason string
function GuiScreenPublicServers.ReloadWorld(reason) end

function GuiScreenPublicServers.Dispose() end

---@return userdata
function GuiScreenPublicServers.GetType() end

---@return string
function GuiScreenPublicServers.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenPublicServers.Equals(obj) end

---@return number
function GuiScreenPublicServers.GetHashCode() end


