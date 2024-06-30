---@meta

---@class GuiComposerManager:  IGuiComposerManager
---@field Composers table
GuiComposerManager = {}

---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return GuiComposerManager
function GuiComposerManager.ctor(api) end

function GuiComposerManager.ClearCache() end

---@param dialogName string
function GuiComposerManager.ClearCached(dialogName) end

---@param dialogName string
function GuiComposerManager.Dispose(dialogName) end

---@return table
function GuiComposerManager.get_Composers() end

---@param dialogName string
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposerManager.Create(dialogName, bounds) end

function GuiComposerManager.RecomposeAllDialogs() end

function GuiComposerManager.MarkAllDialogsForRecompose() end

function GuiComposerManager.UnfocusElements() end

---@param newFocusedComposer GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
---@param newFocusedElement GuiElement
function GuiComposerManager.UnfocusElementsExcept(newFocusedComposer, newFocusedElement) end

---@return userdata
function GuiComposerManager.GetType() end

---@return string
function GuiComposerManager.ToString() end

---@param obj userdata
---@return boolean
function GuiComposerManager.Equals(obj) end

---@return number
function GuiComposerManager.GetHashCode() end


