---@meta

---@class GuiScreenRunningGame: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field serverargs StartServerArgs
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenRunningGame = {}

---@param screenManager ScreenManager
---@param parent GuiScreen
---@return GuiScreenRunningGame
function GuiScreenRunningGame.ctor(screenManager, parent) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenRunningGame.OnEvent(eventCode, arg) end

---@param singleplayer boolean
---@param serverargs StartServerArgs
---@param connectData ServerConnectData
function GuiScreenRunningGame.Start(singleplayer, serverargs, connectData) end

---@param dt number
function GuiScreenRunningGame.RenderToPrimary(dt) end

---@param dt number
function GuiScreenRunningGame.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenRunningGame.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenRunningGame.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenRunningGame.RenderToDefaultFramebuffer(dt) end

function GuiScreenRunningGame.OnWindowClosed() end

---@param reason string
function GuiScreenRunningGame.ReloadWorld(reason) end

---@param isDisconnect? boolean
---@param reason? string
function GuiScreenRunningGame.ExitOrRedirect(isDisconnect, reason) end

---@param args KeyEvent
function GuiScreenRunningGame.OnKeyDown(args) end

---@param args KeyEvent
function GuiScreenRunningGame.OnKeyUp(args) end

---@param args KeyEvent
function GuiScreenRunningGame.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenRunningGame.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenRunningGame.OnMouseMove(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenRunningGame.OnMouseUp(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenRunningGame.OnMouseWheel(args) end

---@param filename string
---@return boolean
function GuiScreenRunningGame.OnFileDrop(filename) end

---@param focus boolean
function GuiScreenRunningGame.OnFocusChanged(focus) end

---@return boolean
function GuiScreenRunningGame.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenRunningGame.get_IsOpened() end

---@return boolean
function GuiScreenRunningGame.get_RenderBg() end

---@param value boolean
function GuiScreenRunningGame.set_RenderBg(value) end

---@param eventCode string
function GuiScreenRunningGame.BubbleUpEvent(eventCode) end

function GuiScreenRunningGame.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenRunningGame.BubbleUpEvent(eventCode, arg) end

---@return boolean
function GuiScreenRunningGame.OnBackPressed() end

function GuiScreenRunningGame.OnScreenUnload() end

function GuiScreenRunningGame.OnScreenLoaded() end

function GuiScreenRunningGame.Dispose() end

---@return userdata
function GuiScreenRunningGame.GetType() end

---@return string
function GuiScreenRunningGame.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenRunningGame.Equals(obj) end

---@return number
function GuiScreenRunningGame.GetHashCode() end


