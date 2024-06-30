---@meta

---@class GuiScreenLoadingGame: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field textElem GuiElementDynamicText
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenLoadingGame = {}

---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenLoadingGame
function GuiScreenLoadingGame.ctor(screenManager, parentScreen) end

---@param dt number
function GuiScreenLoadingGame.RenderToDefaultFramebuffer(dt) end

function GuiScreenLoadingGame.OnScreenLoaded() end

---@return boolean
function GuiScreenLoadingGame.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenLoadingGame.get_IsOpened() end

---@return boolean
function GuiScreenLoadingGame.get_RenderBg() end

---@param value boolean
function GuiScreenLoadingGame.set_RenderBg(value) end

---@param eventCode string
function GuiScreenLoadingGame.BubbleUpEvent(eventCode) end

function GuiScreenLoadingGame.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenLoadingGame.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenLoadingGame.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenLoadingGame.RenderToPrimary(dt) end

---@param dt number
function GuiScreenLoadingGame.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenLoadingGame.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenLoadingGame.RenderAfterBlit(dt) end

---@param filename string
---@return boolean
function GuiScreenLoadingGame.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenLoadingGame.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenLoadingGame.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenLoadingGame.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenLoadingGame.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenLoadingGame.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenLoadingGame.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenLoadingGame.OnMouseWheel(e) end

---@return boolean
function GuiScreenLoadingGame.OnBackPressed() end

function GuiScreenLoadingGame.OnWindowClosed() end

---@param focus boolean
function GuiScreenLoadingGame.OnFocusChanged(focus) end

function GuiScreenLoadingGame.OnScreenUnload() end

---@param reason string
function GuiScreenLoadingGame.ReloadWorld(reason) end

function GuiScreenLoadingGame.Dispose() end

---@return userdata
function GuiScreenLoadingGame.GetType() end

---@return string
function GuiScreenLoadingGame.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenLoadingGame.Equals(obj) end

---@return number
function GuiScreenLoadingGame.GetHashCode() end


