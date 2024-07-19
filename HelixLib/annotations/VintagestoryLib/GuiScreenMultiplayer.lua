---@meta

---@class GuiScreenMultiplayer: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenMultiplayer = {}

---@param screenManager ScreenManager
---@param parent GuiScreen
---@return GuiScreenMultiplayer
function GuiScreenMultiplayer.ctor(screenManager, parent) end

function GuiScreenMultiplayer.OnScreenLoaded() end

---@return boolean
function GuiScreenMultiplayer.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenMultiplayer.get_IsOpened() end

---@return boolean
function GuiScreenMultiplayer.get_RenderBg() end

---@param value boolean
function GuiScreenMultiplayer.set_RenderBg(value) end

---@param eventCode string
function GuiScreenMultiplayer.BubbleUpEvent(eventCode) end

function GuiScreenMultiplayer.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenMultiplayer.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenMultiplayer.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenMultiplayer.RenderToPrimary(dt) end

---@param dt number
function GuiScreenMultiplayer.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenMultiplayer.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenMultiplayer.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenMultiplayer.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenMultiplayer.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenMultiplayer.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenMultiplayer.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenMultiplayer.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMultiplayer.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMultiplayer.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMultiplayer.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenMultiplayer.OnMouseWheel(e) end

---@return boolean
function GuiScreenMultiplayer.OnBackPressed() end

function GuiScreenMultiplayer.OnWindowClosed() end

---@param focus boolean
function GuiScreenMultiplayer.OnFocusChanged(focus) end

function GuiScreenMultiplayer.OnScreenUnload() end

---@param reason string
function GuiScreenMultiplayer.ReloadWorld(reason) end

function GuiScreenMultiplayer.Dispose() end

---@return userdata
function GuiScreenMultiplayer.GetType() end

---@return string
function GuiScreenMultiplayer.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenMultiplayer.Equals(obj) end

---@return number
function GuiScreenMultiplayer.GetHashCode() end


