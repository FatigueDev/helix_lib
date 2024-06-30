---@meta

---@class GuiElementGrayBackgroundHelpber
GuiElementGrayBackgroundHelpber = {}


-- Adds a gray background to the current GUI.
---@param composer GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiElementGrayBackgroundHelpber.AddGrayBG(composer, bounds) end

---@return userdata
function GuiElementGrayBackgroundHelpber.GetType() end

---@return string
function GuiElementGrayBackgroundHelpber.ToString() end

---@param obj userdata
---@return boolean
function GuiElementGrayBackgroundHelpber.Equals(obj) end

---@return number
function GuiElementGrayBackgroundHelpber.GetHashCode() end


