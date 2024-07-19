---@meta

---@class GuiScreenMultiplayerModify: GuiScreen, GuiScreen
---@field ShouldDisposePreviousScreen boolean
---@field IsOpened boolean
---@field RenderBg boolean
---@field ElementComposer GuiComposer
---@field ScreenManager ScreenManager
---@field ParentScreen GuiScreen
---@field ShowMainMenu boolean
---@field UnfocusedMouseCursor string
---@field FocusedMouseCursor string
GuiScreenMultiplayerModify = {}

---@param serverentry MultiplayerServerEntry
---@param screenManager ScreenManager
---@param parentScreen GuiScreen
---@return GuiScreenMultiplayerModify
function GuiScreenMultiplayerModify.ctor(serverentry, screenManager, parentScreen) end

function GuiScreenMultiplayerModify.OnScreenLoaded() end

---@return boolean
function GuiScreenMultiplayerModify.get_ShouldDisposePreviousScreen() end

---@return boolean
function GuiScreenMultiplayerModify.get_IsOpened() end

---@return boolean
function GuiScreenMultiplayerModify.get_RenderBg() end

---@param value boolean
function GuiScreenMultiplayerModify.set_RenderBg(value) end

---@param eventCode string
function GuiScreenMultiplayerModify.BubbleUpEvent(eventCode) end

function GuiScreenMultiplayerModify.Refresh() end

---@param eventCode string
---@param arg userdata
function GuiScreenMultiplayerModify.BubbleUpEvent(eventCode, arg) end

---@param eventCode string
---@param arg userdata
---@return boolean
function GuiScreenMultiplayerModify.OnEvent(eventCode, arg) end

---@param dt number
function GuiScreenMultiplayerModify.RenderToPrimary(dt) end

---@param dt number
function GuiScreenMultiplayerModify.RenderAfterPostProcessing(dt) end

---@param dt number
function GuiScreenMultiplayerModify.RenderAfterFinalComposition(dt) end

---@param dt number
function GuiScreenMultiplayerModify.RenderAfterBlit(dt) end

---@param dt number
function GuiScreenMultiplayerModify.RenderToDefaultFramebuffer(dt) end

---@param filename string
---@return boolean
function GuiScreenMultiplayerModify.OnFileDrop(filename) end

---@param e KeyEvent
function GuiScreenMultiplayerModify.OnKeyDown(e) end

---@param e KeyEvent
function GuiScreenMultiplayerModify.OnKeyPress(e) end

---@param e KeyEvent
function GuiScreenMultiplayerModify.OnKeyUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMultiplayerModify.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMultiplayerModify.OnMouseUp(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiScreenMultiplayerModify.OnMouseMove(e) end

---@param e MouseWheelEventArgs The event arguments for the mouse.
function GuiScreenMultiplayerModify.OnMouseWheel(e) end

---@return boolean
function GuiScreenMultiplayerModify.OnBackPressed() end

function GuiScreenMultiplayerModify.OnWindowClosed() end

---@param focus boolean
function GuiScreenMultiplayerModify.OnFocusChanged(focus) end

function GuiScreenMultiplayerModify.OnScreenUnload() end

---@param reason string
function GuiScreenMultiplayerModify.ReloadWorld(reason) end

function GuiScreenMultiplayerModify.Dispose() end

---@return userdata
function GuiScreenMultiplayerModify.GetType() end

---@return string
function GuiScreenMultiplayerModify.ToString() end

---@param obj userdata
---@return boolean
function GuiScreenMultiplayerModify.Equals(obj) end

---@return number
function GuiScreenMultiplayerModify.GetHashCode() end


