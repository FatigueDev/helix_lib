---@meta

---@class GuiScreenSingleplayer: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenSingleplayer = {}

---@param screenManager ScreenManager
---@param parent GuiScreen
---@return GuiScreenSingleplayer
function GuiScreenSingleplayer.ctor(screenManager, parent) end

function GuiScreenSingleplayer.OnScreenLoaded() end

---@return boolean
function GuiScreenSingleplayer.OnBackPressed() end

---@return boolean
function GuiScreenSingleplayer.OnCancel() end

---@param seconds number
---@return string
function GuiScreenSingleplayer.PrettyTime(seconds) end

---@return boolean
function GuiScreenSingleplayer.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenSingleplayer.get_IsOpened() end

---@return boolean
function GuiScreenSingleplayer.get_RenderBg() end

---@param value boolean
function GuiScreenSingleplayer.set_RenderBg(value) end

---@param eventCode string
function GuiScreenSingleplayer.BubbleUpEvent(eventCode) end

function GuiScreenSingleplayer.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenSingleplayer.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenSingleplayer.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenSingleplayer.RenderToPrimary(dt) end

---@param dt number
function GuiScreenSingleplayer.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenSingleplayer.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenSingleplayer.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenSingleplayer.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenSingleplayer.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenSingleplayer.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenSingleplayer.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenSingleplayer.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenSingleplayer.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenSingleplayer.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenSingleplayer.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenSingleplayer.OnMouseWheel(e) end

function GuiScreenSingleplayer.OnWindowClosed() end

---@param focus boolean
function GuiScreenSingleplayer.OnFocusChanged(focus) end

function GuiScreenSingleplayer.OnScreenUnload() end

---@param reason string
function GuiScreenSingleplayer.ReloadWorld(reason) end

function GuiScreenSingleplayer.Dispose() end

---@return userdata
function GuiScreenSingleplayer.GetType() end

---@return string
function GuiScreenSingleplayer.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenSingleplayer.Equals(obj) end

---@return number
function GuiScreenSingleplayer.GetHashCode() end


