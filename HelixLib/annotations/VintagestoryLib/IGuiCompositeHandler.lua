---@meta

---@class IGuiCompositeHandler
---@field Api ICoreClientAPI
---@field GuiComposers GuiComposerManager
IGuiCompositeHandler = {}


---@return ICoreClientAPI # The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
function IGuiCompositeHandler.get_Api() end

---@return GuiComposerManager
function IGuiCompositeHandler.get_GuiComposers() end

---@param composer GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function IGuiCompositeHandler.LoadComposer(composer) end

---@return boolean
function IGuiCompositeHandler.OnBackPressed() end


