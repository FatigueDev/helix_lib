---@meta

---@class GuiScreenMultiplayerNewServer: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenMultiplayerNewServer = {}

---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenMultiplayerNewServer
function GuiScreenMultiplayerNewServer.ctor(screenManager, parentScreen) end

function GuiScreenMultiplayerNewServer.OnScreenLoaded() end

---@return boolean
function GuiScreenMultiplayerNewServer.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenMultiplayerNewServer.get_IsOpened() end

---@return boolean
function GuiScreenMultiplayerNewServer.get_RenderBg() end

---@param value boolean
function GuiScreenMultiplayerNewServer.set_RenderBg(value) end

---@param eventCode string
function GuiScreenMultiplayerNewServer.BubbleUpEvent(eventCode) end

function GuiScreenMultiplayerNewServer.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenMultiplayerNewServer.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenMultiplayerNewServer.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenMultiplayerNewServer.RenderToPrimary(dt) end

---@param dt number
function GuiScreenMultiplayerNewServer.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenMultiplayerNewServer.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenMultiplayerNewServer.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenMultiplayerNewServer.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenMultiplayerNewServer.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenMultiplayerNewServer.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenMultiplayerNewServer.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenMultiplayerNewServer.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMultiplayerNewServer.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMultiplayerNewServer.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMultiplayerNewServer.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenMultiplayerNewServer.OnMouseWheel(e) end

---@return boolean
function GuiScreenMultiplayerNewServer.OnBackPressed() end

function GuiScreenMultiplayerNewServer.OnWindowClosed() end

---@param focus boolean
function GuiScreenMultiplayerNewServer.OnFocusChanged(focus) end

function GuiScreenMultiplayerNewServer.OnScreenUnload() end

---@param reason string
function GuiScreenMultiplayerNewServer.ReloadWorld(reason) end

function GuiScreenMultiplayerNewServer.Dispose() end

---@return userdata
function GuiScreenMultiplayerNewServer.GetType() end

---@return string
function GuiScreenMultiplayerNewServer.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenMultiplayerNewServer.Equals(obj) end

---@return number
function GuiScreenMultiplayerNewServer.GetHashCode() end


