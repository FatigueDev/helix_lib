---@meta

---@class GuiScreenDownloadMods: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenDownloadMods = {}

---@param connectdata ServerConnectData
---@param installPath string
---@param modsToDownload table
---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenDownloadMods
function GuiScreenDownloadMods.ctor(connectdata, installPath, modsToDownload, screenManager, parentScreen) end

---@param dt number
function GuiScreenDownloadMods.RenderToPrimary(dt) end

---@param dt number
function GuiScreenDownloadMods.RenderToDefaultFramebuffer(dt) end

---@return boolean
function GuiScreenDownloadMods.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenDownloadMods.get_IsOpened() end

---@return boolean
function GuiScreenDownloadMods.get_RenderBg() end

---@param value boolean
function GuiScreenDownloadMods.set_RenderBg(value) end

---@param eventCode string
function GuiScreenDownloadMods.BubbleUpEvent(eventCode) end

function GuiScreenDownloadMods.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenDownloadMods.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenDownloadMods.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenDownloadMods.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenDownloadMods.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenDownloadMods.RenderAfterBlit(dt) end

---@param filename string
---@return boolean
function GuiScreenDownloadMods.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenDownloadMods.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenDownloadMods.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenDownloadMods.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenDownloadMods.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenDownloadMods.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenDownloadMods.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenDownloadMods.OnMouseWheel(e) end

---@return boolean
function GuiScreenDownloadMods.OnBackPressed() end

function GuiScreenDownloadMods.OnWindowClosed() end

---@param focus boolean
function GuiScreenDownloadMods.OnFocusChanged(focus) end

function GuiScreenDownloadMods.OnScreenUnload() end

function GuiScreenDownloadMods.OnScreenLoaded() end

---@param reason string
function GuiScreenDownloadMods.ReloadWorld(reason) end

function GuiScreenDownloadMods.Dispose() end

---@return userdata
function GuiScreenDownloadMods.GetType() end

---@return string
function GuiScreenDownloadMods.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenDownloadMods.Equals(obj) end

---@return number
function GuiScreenDownloadMods.GetHashCode() end


