---@meta

---@class GuiCompositeMainMenuLeft: GuiComposite, GuiComposite
---@field Width number
GuiCompositeMainMenuLeft = {}

---@param screenManager ScreenManager
---@return GuiCompositeMainMenuLeft
function GuiCompositeMainMenuLeft.ctor(screenManager) end

---@return number
function GuiCompositeMainMenuLeft.get_Width() end

function GuiCompositeMainMenuLeft.Compose() end

---@return number
function GuiCompositeMainMenuLeft.UnixTimeNow() end

---@param key string
function GuiCompositeMainMenuLeft.updateButtonActiveFlag(key) end

---@return boolean
function GuiCompositeMainMenuLeft.OnSingleplayer() end

---@return boolean
function GuiCompositeMainMenuLeft.OnMultiplayer() end

---@return boolean
function GuiCompositeMainMenuLeft.OnQuit() end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiCompositeMainMenuLeft.OnMouseDown(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function GuiCompositeMainMenuLeft.OnMouseUp(e) end

---@param dt number
---@param mainMenuVisible boolean
function GuiCompositeMainMenuLeft.RenderBg(dt, mainMenuVisible) end

function GuiCompositeMainMenuLeft.Dispose() end

---@return userdata
function GuiCompositeMainMenuLeft.GetType() end

---@return string
function GuiCompositeMainMenuLeft.ToString() end

---@param obj userdata
---@return boolean
function GuiCompositeMainMenuLeft.Equals(obj) end

---@return number
function GuiCompositeMainMenuLeft.GetHashCode() end


