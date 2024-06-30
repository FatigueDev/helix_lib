---@meta

---@class IGuiElementCell:  IDisposable
---@field InsideClipBounds ElementBounds
---@field Bounds ElementBounds The bounds of the cell.
---@field MouseOverCursor string
IGuiElementCell = {}


---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function IGuiElementCell.get_InsideClipBounds() end

---@param value ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function IGuiElementCell.set_InsideClipBounds(value) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function IGuiElementCell.get_Bounds() end

-- The event fired when the cell is rendered.
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param deltaTime number
function IGuiElementCell.OnRenderInteractiveElements(api, deltaTime) end

-- Called when the cell is modified and needs to be updated.
function IGuiElementCell.UpdateCellHeight() end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
---@param elementIndex number
function IGuiElementCell.OnMouseUpOnElement(args, elementIndex) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
---@param elementIndex number
function IGuiElementCell.OnMouseDownOnElement(args, elementIndex) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
---@param elementIndex number
function IGuiElementCell.OnMouseMoveOnElement(args, elementIndex) end

---@return string
function IGuiElementCell.get_MouseOverCursor() end


