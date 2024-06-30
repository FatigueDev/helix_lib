---@meta

-- Just some default sizings for various ui elements
---@class ElementStdBounds
---@field AutosizedMainDialog ElementBounds Quick Method to create a new ElementBounds instance that is positioned at the screen center and sized accordingly to fit all it's child elements
---@field mainMenuUnscaledLogoSize number
---@field mainMenuUnscaledLogoHorPadding number
---@field mainMenuUnscaledLogoVerPadding number
---@field mainMenuUnscaledWoodPlankWidth number
ElementStdBounds = {}


-- Quick method to create a new ElementBounds instance that uses fixed element sizing. The X/Y Coordinates are left at 0. 
---@param alignment EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@param width number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.Statbar(alignment, width) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.get_AutosizedMainDialog() end

-- Quick Method to create a new ElementBounds instance that draws a background for a dialog
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.MainScreenRightPart() end

-- Quick Method to create a new ElementBounds instance that draws a background for a dialog
---@param fixedY number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.AutosizedMainDialogAtPos(fixedY) end

-- Quick Method to create a new ElementBounds instance that draws a background for a dialog
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.DialogBackground() end

-- Quick Method to create a new ElementBounds instance that draws a background for a dialog
---@param horPadding number
---@param verPadding number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.DialogBackground(horPadding, verPadding) end

-- Quick Method to create a new ElementBounds instance to create a menu consiting of one ore more vertically arranged and horizontally centered buttons in a grid. The y position is calculated using rowIndex * 80. 
---@param rowIndex number
---@param alignment? EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.MenuButton(rowIndex, alignment) end

-- Quick Method to create a new ElementBounds instance to create a menu consiting of one ore more vertically arranged and horizontally centered buttons in a grid. The y position is calculated using rowIndex * 80. 
---@param rowIndex number
---@param padding number
---@param alignment? EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.Rowed(rowIndex, padding, alignment) end

-- Quick Method to create a new ElementBounds instance that is currently used for Signs (e.g. graphics options)
---@param fixedX number
---@param fixedY number
---@param fixedWith number
---@param fixedHeight? number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.Sign(fixedX, fixedY, fixedWith, fixedHeight) end

---@param x number
---@param y number
---@param width number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.Slider(x, y, width) end

-- Creates a scrollbar right of given element bounds, requires the left element to be using fixed element positioning
---@param leftElement ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.VerticalScrollbar(leftElement) end

---@param x? number
---@param y? number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.Slot(x, y) end

---@param alignment EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@param x number
---@param y number
---@param cols number
---@param rows number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.SlotGrid(alignment, x, y, cols, rows) end

---@param fixedX number
---@param fixedY number
---@param width number
---@param height number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.ToggleButton(fixedX, fixedY, width, height) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementStdBounds.TitleBar() end

---@return userdata
function ElementStdBounds.GetType() end

---@return string
function ElementStdBounds.ToString() end

---@param obj userdata
---@return boolean
function ElementStdBounds.Equals(obj) end

---@return number
function ElementStdBounds.GetHashCode() end


