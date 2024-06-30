---@meta

---@class GuiElementClipHelpler
GuiElementClipHelpler = {}


-- Add a clip area. Thhis select an area to be rendered, where anything outside will be invisible. Useful for scrollable content. Can be called multiple times, to reduce the render area further, but needs an equal amount of calls to EndClip()
---@param composer GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiElementClipHelpler.BeginClip(composer, bounds) end

-- Remove a previously added clip area.
---@param composer GuiComposer Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiElementClipHelpler.EndClip(composer) end

---@return userdata
function GuiElementClipHelpler.GetType() end

---@return string
function GuiElementClipHelpler.ToString() end

---@param obj userdata
---@return boolean
function GuiElementClipHelpler.Equals(obj) end

---@return number
function GuiElementClipHelpler.GetHashCode() end


