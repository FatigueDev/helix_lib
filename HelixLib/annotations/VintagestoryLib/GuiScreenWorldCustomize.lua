---@meta

---@class GuiScreenWorldCustomize: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field wcu WorldConfig
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenWorldCustomize = {}

---@param didApply function
---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@param wcu WorldConfig
---@param playstyles table
---@return GuiScreenWorldCustomize
function GuiScreenWorldCustomize.ctor(didApply, screenManager, parentScreen, wcu, playstyles) end

function GuiScreenWorldCustomize.OnScreenLoaded() end

---@param e KeyEvent
function GuiScreenWorldCustomize.OnKeyDown(e) end

---@return boolean
function GuiScreenWorldCustomize.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenWorldCustomize.get_IsOpened() end

---@return boolean
function GuiScreenWorldCustomize.get_RenderBg() end

---@param value boolean
function GuiScreenWorldCustomize.set_RenderBg(value) end

---@param eventCode string
function GuiScreenWorldCustomize.BubbleUpEvent(eventCode) end

function GuiScreenWorldCustomize.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenWorldCustomize.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenWorldCustomize.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenWorldCustomize.RenderToPrimary(dt) end

---@param dt number
function GuiScreenWorldCustomize.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenWorldCustomize.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenWorldCustomize.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenWorldCustomize.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenWorldCustomize.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenWorldCustomize.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenWorldCustomize.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenWorldCustomize.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenWorldCustomize.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenWorldCustomize.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenWorldCustomize.OnMouseWheel(e) end

---@return boolean
function GuiScreenWorldCustomize.OnBackPressed() end

function GuiScreenWorldCustomize.OnWindowClosed() end

---@param focus boolean
function GuiScreenWorldCustomize.OnFocusChanged(focus) end

function GuiScreenWorldCustomize.OnScreenUnload() end

---@param reason string
function GuiScreenWorldCustomize.ReloadWorld(reason) end

function GuiScreenWorldCustomize.Dispose() end

---@return userdata
function GuiScreenWorldCustomize.GetType() end

---@return string
function GuiScreenWorldCustomize.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenWorldCustomize.Equals(obj) end

---@return number
function GuiScreenWorldCustomize.GetHashCode() end


