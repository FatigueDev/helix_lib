---@meta

---@class IGameSettingsHandler:  IGuiCompositeHandler
---@field MaxViewDistanceAlarmValue Nullable`1
---@field IsIngame boolean
IGameSettingsHandler = {}


---@return boolean
function IGameSettingsHandler.LeaveSettingsMenu() end

---@return Nullable`1
function IGameSettingsHandler.get_MaxViewDistanceAlarmValue() end

function IGameSettingsHandler.ReloadShaders() end

---@return boolean
function IGameSettingsHandler.get_IsIngame() end

---@param name string
---@param width? number
---@param height? number
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function IGameSettingsHandler.dialogBase(name, width, height) end

function IGameSettingsHandler.OnMacroEditor() end


