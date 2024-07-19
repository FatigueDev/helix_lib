---@meta

---@class GuiScreenSingleplayerNewWorld: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenSingleplayerNewWorld = {}

---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenSingleplayerNewWorld
function GuiScreenSingleplayerNewWorld.ctor(screenManager, parentScreen) end

function GuiScreenSingleplayerNewWorld.OnScreenLoaded() end

---@return boolean
function GuiScreenSingleplayerNewWorld.OnCustomize() end

---@return string
function GuiScreenSingleplayerNewWorld.GenRandomSurvivalName() end

---@return string
function GuiScreenSingleplayerNewWorld.GenRandomCreativeName() end

---@return boolean
function GuiScreenSingleplayerNewWorld.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenSingleplayerNewWorld.get_IsOpened() end

---@return boolean
function GuiScreenSingleplayerNewWorld.get_RenderBg() end

---@param value boolean
function GuiScreenSingleplayerNewWorld.set_RenderBg(value) end

---@param eventCode string
function GuiScreenSingleplayerNewWorld.BubbleUpEvent(eventCode) end

function GuiScreenSingleplayerNewWorld.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenSingleplayerNewWorld.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenSingleplayerNewWorld.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenSingleplayerNewWorld.RenderToPrimary(dt) end

---@param dt number
function GuiScreenSingleplayerNewWorld.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenSingleplayerNewWorld.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenSingleplayerNewWorld.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenSingleplayerNewWorld.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenSingleplayerNewWorld.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenSingleplayerNewWorld.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenSingleplayerNewWorld.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenSingleplayerNewWorld.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenSingleplayerNewWorld.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenSingleplayerNewWorld.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenSingleplayerNewWorld.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenSingleplayerNewWorld.OnMouseWheel(e) end

---@return boolean
function GuiScreenSingleplayerNewWorld.OnBackPressed() end

function GuiScreenSingleplayerNewWorld.OnWindowClosed() end

---@param focus boolean
function GuiScreenSingleplayerNewWorld.OnFocusChanged(focus) end

function GuiScreenSingleplayerNewWorld.OnScreenUnload() end

---@param reason string
function GuiScreenSingleplayerNewWorld.ReloadWorld(reason) end

function GuiScreenSingleplayerNewWorld.Dispose() end

---@return userdata
function GuiScreenSingleplayerNewWorld.GetType() end

---@return string
function GuiScreenSingleplayerNewWorld.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenSingleplayerNewWorld.Equals(obj) end

---@return number
function GuiScreenSingleplayerNewWorld.GetHashCode() end


