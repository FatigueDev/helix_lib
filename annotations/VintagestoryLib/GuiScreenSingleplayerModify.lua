---@meta

---@class GuiScreenSingleplayerModify: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenSingleplayerModify = {}

---@param worldfilename string
---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenSingleplayerModify
function GuiScreenSingleplayerModify.ctor(worldfilename, screenManager, parentScreen) end

---@param savegame SaveGame
function GuiScreenSingleplayerModify.initGui(savegame) end

---@return boolean
function GuiScreenSingleplayerModify.OnCreateBackup() end

function GuiScreenSingleplayerModify.OnScreenLoaded() end

---@return boolean
function GuiScreenSingleplayerModify.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenSingleplayerModify.get_IsOpened() end

---@return boolean
function GuiScreenSingleplayerModify.get_RenderBg() end

---@param value boolean
function GuiScreenSingleplayerModify.set_RenderBg(value) end

---@param eventCode string
function GuiScreenSingleplayerModify.BubbleUpEvent(eventCode) end

function GuiScreenSingleplayerModify.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenSingleplayerModify.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenSingleplayerModify.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenSingleplayerModify.RenderToPrimary(dt) end

---@param dt number
function GuiScreenSingleplayerModify.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenSingleplayerModify.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenSingleplayerModify.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenSingleplayerModify.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenSingleplayerModify.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenSingleplayerModify.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenSingleplayerModify.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenSingleplayerModify.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenSingleplayerModify.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenSingleplayerModify.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenSingleplayerModify.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenSingleplayerModify.OnMouseWheel(e) end

---@return boolean
function GuiScreenSingleplayerModify.OnBackPressed() end

function GuiScreenSingleplayerModify.OnWindowClosed() end

---@param focus boolean
function GuiScreenSingleplayerModify.OnFocusChanged(focus) end

function GuiScreenSingleplayerModify.OnScreenUnload() end

---@param reason string
function GuiScreenSingleplayerModify.ReloadWorld(reason) end

function GuiScreenSingleplayerModify.Dispose() end

---@return userdata
function GuiScreenSingleplayerModify.GetType() end

---@return string
function GuiScreenSingleplayerModify.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenSingleplayerModify.Equals(obj) end

---@return number
function GuiScreenSingleplayerModify.GetHashCode() end


