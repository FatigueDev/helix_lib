---@meta

---@class GuiElementImageBackgroundHelper
GuiElementImageBackgroundHelper = {}


-- Adds a background to the current GUI
---@param composer GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param textureLoc AssetLocation Defines a complete path to an assets, including it's domain
---@param brightness? number
---@param alpha? number
---@param scale? number
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiElementImageBackgroundHelper.AddImageBG(composer, bounds, textureLoc, brightness, alpha, scale) end

---@return userdata
function GuiElementImageBackgroundHelper.GetType() end

---@return string
function GuiElementImageBackgroundHelper.ToString() end

---@param obj userdata
---@return boolean
function GuiElementImageBackgroundHelper.Equals(obj) end

---@return number
function GuiElementImageBackgroundHelper.GetHashCode() end


