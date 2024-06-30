---@meta

---@class GuiCompositeSettings: GuiComposite, GuiComposite
---@field IsCapturingHotKey boolean
---@field IsInCreativeMode boolean
---@field LanguageConfig nil
GuiCompositeSettings = {}

---@param handler IGameSettingsHandler
---@param onMainScreen boolean
---@return GuiCompositeSettings
function GuiCompositeSettings.ctor(handler, onMainScreen) end

---@return boolean
function GuiCompositeSettings.get_IsCapturingHotKey() end

---@return boolean
function GuiCompositeSettings.ShouldCaptureAllInputs() end

---@param eventArgs KeyEvent
function GuiCompositeSettings.OnKeyDown(eventArgs) end

---@param eventArgs KeyEvent
function GuiCompositeSettings.OnKeyUp(eventArgs) end

---@param eventArgs MouseEvent This contains the data for what the mouse is currently doing.
function GuiCompositeSettings.OnMouseDown(eventArgs) end

---@param eventArgs MouseEvent This contains the data for what the mouse is currently doing.
function GuiCompositeSettings.OnMouseUp(eventArgs) end

---@param languageCodes string
---@param languageNames string
function GuiCompositeSettings.getLanguages(languageCodes, languageNames) end

---@return userdata
function GuiCompositeSettings.GetType() end

---@return string
function GuiCompositeSettings.ToString() end

---@param obj userdata
---@return boolean
function GuiCompositeSettings.Equals(obj) end

---@return number
function GuiCompositeSettings.GetHashCode() end


