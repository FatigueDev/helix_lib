---@meta

---@class GuiScreenMods: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenMods = {}

---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenMods
function GuiScreenMods.ctor(screenManager, parentScreen) end

function GuiScreenMods.OnScreenLoaded() end

---@return boolean
function GuiScreenMods.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenMods.get_IsOpened() end

---@return boolean
function GuiScreenMods.get_RenderBg() end

---@param value boolean
function GuiScreenMods.set_RenderBg(value) end

---@param eventCode string
function GuiScreenMods.BubbleUpEvent(eventCode) end

function GuiScreenMods.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenMods.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenMods.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenMods.RenderToPrimary(dt) end

---@param dt number
function GuiScreenMods.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenMods.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenMods.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenMods.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenMods.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenMods.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenMods.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenMods.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMods.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMods.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMods.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenMods.OnMouseWheel(e) end

---@return boolean
function GuiScreenMods.OnBackPressed() end

function GuiScreenMods.OnWindowClosed() end

---@param focus boolean
function GuiScreenMods.OnFocusChanged(focus) end

function GuiScreenMods.OnScreenUnload() end

---@param reason string
function GuiScreenMods.ReloadWorld(reason) end

function GuiScreenMods.Dispose() end

---@return userdata
function GuiScreenMods.GetType() end

---@return string
function GuiScreenMods.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenMods.Equals(obj) end

---@return number
function GuiScreenMods.GetHashCode() end


