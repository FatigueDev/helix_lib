---@meta

---@class GuiElementDynamicTextHelper
GuiElementDynamicTextHelper = {}


-- Adds dynamic text to the GUI.
---@param composer GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param key? string
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiElementDynamicTextHelper.AddDynamicText(composer, text, font, bounds, key) end

---@param composer GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
---@param text string
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param orientation EnumTextOrientation
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param key? string
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiElementDynamicTextHelper.AddDynamicText(composer, text, font, orientation, bounds, key) end

-- Gets the Dynamic Text by name from the GUI.
---@param composer GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
---@param key string
---@return GuiElementDynamicText # Text that can be changed after being composed
function GuiElementDynamicTextHelper.GetDynamicText(composer, key) end

---@return userdata
function GuiElementDynamicTextHelper.GetType() end

---@return string
function GuiElementDynamicTextHelper.ToString() end

---@param obj userdata
---@return boolean
function GuiElementDynamicTextHelper.Equals(obj) end

---@return number
function GuiElementDynamicTextHelper.GetHashCode() end


