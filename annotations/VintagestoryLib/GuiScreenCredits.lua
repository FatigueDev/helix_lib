---@meta

---@class GuiScreenCredits: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenCredits = {}

---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenCredits
function GuiScreenCredits.ctor(screenManager, parentScreen) end

---@return boolean
function GuiScreenCredits.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenCredits.get_IsOpened() end

---@return boolean
function GuiScreenCredits.get_RenderBg() end

---@param value boolean
function GuiScreenCredits.set_RenderBg(value) end

---@param eventCode string
function GuiScreenCredits.BubbleUpEvent(eventCode) end

function GuiScreenCredits.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenCredits.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenCredits.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenCredits.RenderToPrimary(dt) end

---@param dt number
function GuiScreenCredits.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenCredits.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenCredits.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenCredits.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenCredits.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenCredits.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenCredits.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenCredits.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenCredits.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenCredits.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenCredits.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenCredits.OnMouseWheel(e) end

---@return boolean
function GuiScreenCredits.OnBackPressed() end

function GuiScreenCredits.OnWindowClosed() end

---@param focus boolean
function GuiScreenCredits.OnFocusChanged(focus) end

function GuiScreenCredits.OnScreenUnload() end

function GuiScreenCredits.OnScreenLoaded() end

---@param reason string
function GuiScreenCredits.ReloadWorld(reason) end

function GuiScreenCredits.Dispose() end

---@return userdata
function GuiScreenCredits.GetType() end

---@return string
function GuiScreenCredits.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenCredits.Equals(obj) end

---@return number
function GuiScreenCredits.GetHashCode() end


