---@meta

---@class DrawWorldInteractionUtil
---@field Composer GuiComposer
---@field ActualWidth number
---@field UnscaledLineHeight number
---@field FontSize number
---@field Color Vec4f
DrawWorldInteractionUtil = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param composers DlgComposers Dialogue Composer for the GUIDialogue.
---@param composerSuffixCode string
---@return DrawWorldInteractionUtil
function DrawWorldInteractionUtil.ctor(capi, composers, composerSuffixCode) end

---@return GuiComposer # Composes a dialog which are made from a set of elements The composed dialog is cached, so to recompose you have to Recompose All elements or instantiate a new composer with doCache set to false The caching allows the dialog using the composer to not worry about performance and just call compose whenever it has to display a new composed dialog You add components by chaining the functions of the composer together for building the result.
function DrawWorldInteractionUtil.get_Composer() end

---@param wis WorldInteraction[]
function DrawWorldInteractionUtil.ComposeBlockWorldInteractionHelp(wis) end

---@param ctx Context
---@param surface ImageSurface
---@param currentBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param stacks ItemStack[]
---@param lineheight number
---@param wi WorldInteraction
function DrawWorldInteractionUtil.drawHelp(ctx, surface, currentBounds, stacks, lineheight, wi) end

function DrawWorldInteractionUtil.Dispose() end

---@return userdata
function DrawWorldInteractionUtil.GetType() end

---@return string
function DrawWorldInteractionUtil.ToString() end

---@param obj userdata
---@return boolean
function DrawWorldInteractionUtil.Equals(obj) end

---@return number
function DrawWorldInteractionUtil.GetHashCode() end


