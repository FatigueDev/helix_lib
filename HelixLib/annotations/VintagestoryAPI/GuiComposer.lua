---@meta

-- Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
---@class GuiComposer:  IDisposable
---@field CurParentBounds ElementBounds
---@field CurrentElementKey number A unique number assigned to each element
---@field LastAddedElement GuiElement
---@field Item GuiElement
---@field Bounds ElementBounds
---@field CurrentTabIndexElement GuiElement Gets the currently tabbed index element, if there is one currently focused.
---@field FirstTabbableElement GuiElement
---@field MaxTabIndex number Gets the maximum tab index of the components.
---@field OnComposed function Triggered when the gui scale changed or the game window was resized
---@field OnFocusChanged function
---@field Composed boolean
---@field Api ICoreClientAPI
---@field zDepth number
---@field Color Vec4f
---@field Tabbable boolean Whether or not the Tab-Key down event should be used and consumed to cycle-focus individual gui elements
---@field Enabled boolean
---@field MouseOverCursor string
---@field Outlines number
GuiComposer = {}


---@param value function
function GuiComposer.add_OnComposed(value) end

---@param value function
function GuiComposer.remove_OnComposed(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiComposer.get_CurParentBounds() end

---@return number
function GuiComposer.get_CurrentElementKey() end

---@return GuiElement
function GuiComposer.get_LastAddedElement() end

---@param key string
---@return GuiElement
function GuiComposer.get_Item(key) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiComposer.get_Bounds() end

-- Creates an empty GuiComposer.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposer.CreateEmpty(api) end

-- On by default, is passed on to the gui elements as well. Disabling it means has a performance impact. Recommeded to leave enabled, but may need to be disabled to smoothly alpha blend text elements. Must be called before adding elements and before composing.
-- Notice! Most gui elements even yet support non-premul alpha mode
---@param enable boolean
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposer.PremultipliedAlpha(enable) end

-- Adds a condition for adding a group of items to the GUI- eg: if you have a crucible in the firepit, add those extra slots.  Should always pair with an EndIf()
---@param condition boolean
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposer.AddIf(condition) end

-- End of the AddIf block.
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposer.EndIf() end

-- Runs given method
---@param method function
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposer.Execute(method) end

-- Starts a set of child elements.
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposer.BeginChildElements(bounds) end

-- Starts a set of child elements.
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposer.BeginChildElements() end

-- End of the current set of child elements.
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposer.EndChildElements() end

-- Sets the render to Dynamic components only
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposer.OnlyDynamic() end

-- Rebuilds the Composed GUI.  
function GuiComposer.ReCompose() end

---@return GuiElement
function GuiComposer.get_CurrentTabIndexElement() end

---@return GuiElement
function GuiComposer.get_FirstTabbableElement() end

---@return number
function GuiComposer.get_MaxTabIndex() end

-- marks an element as in focus.  
---@param tabIndex number
---@return boolean
function GuiComposer.FocusElement(tabIndex) end

-- Unfocuses the elements within this GUI composer.
function GuiComposer.UnfocusOwnElements() end

-- Unfocuses all elements except one specific element.
---@param elem GuiElement
function GuiComposer.UnfocusOwnElementsExcept(elem) end

-- Tells the composer to compose the gui.
---@param focusFirstElement? boolean
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposer.Compose(focusFirstElement) end

-- Fires the OnMouseUp events.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiComposer.OnMouseUp(mouse) end

-- Fires the OnMouseDown events.
---@param mouseArgs MouseEvent This contains the data for what the mouse is currently doing.
function GuiComposer.OnMouseDown(mouseArgs) end

-- Fires the OnMouseMove events.
---@param mouse MouseEvent This contains the data for what the mouse is currently doing.
function GuiComposer.OnMouseMove(mouse) end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiComposer.OnMouseEnterSlot(slot) end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiComposer.OnMouseLeaveSlot(slot) end

-- Fires the OnMouseWheel events.
---@param mouse MouseWheelEventArgs The event arguments for the mouse.
function GuiComposer.OnMouseWheel(mouse) end

-- Fires the OnKeyDown events.
---@param args KeyEvent
---@param haveFocus boolean
function GuiComposer.OnKeyDown(args, haveFocus) end

-- Fires the OnKeyDown events.
---@param args KeyEvent
function GuiComposer.OnKeyUp(args) end

-- Fires the OnKeyPress event.
---@param args KeyEvent
function GuiComposer.OnKeyPress(args) end

---@param newBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function GuiComposer.Clear(newBounds) end

-- Fires the PostRender event.
---@param deltaTime number
function GuiComposer.PostRender(deltaTime) end

-- Fires the render event.
---@param deltaTime number
function GuiComposer.Render(deltaTime) end

-- Adds an interactive element to the composer.
---@param element GuiElement
---@param key? string
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposer.AddInteractiveElement(element, key) end

-- Adds a static element to the composer.
---@param element GuiElement
---@param key? string
---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function GuiComposer.AddStaticElement(element, key) end

-- Gets the element by name.
---@param key string
---@return GuiElement
function GuiComposer.GetElement(key) end

function GuiComposer.Dispose() end

---@return userdata
function GuiComposer.GetType() end

---@return string
function GuiComposer.ToString() end

---@param obj userdata
---@return boolean
function GuiComposer.Equals(obj) end

---@return number
function GuiComposer.GetHashCode() end


