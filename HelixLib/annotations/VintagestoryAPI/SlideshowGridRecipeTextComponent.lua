---@meta

-- Draws multiple itemstacks
---@class SlideshowGridRecipeTextComponent: ItemstackComponentBase, ItemstackComponentBase, RichTextComponentBase
---@field MouseOverCursor string
---@field BoundsPerLine LineRectangled[] The width/height boundaries of this text component per line
---@field UnscaledMarginTop number This will be the Y-Advance into the next line. Unscaled value. Also used as the offset with EnumVerticalAlign.FixedOffset
---@field PaddingRight number Padding that is used when a richtextcomponent came before and needs some left spacing to it. Unscaled value
---@field PaddingLeft number Unscaled value
---@field Float EnumFloat When left or right, then this element can span over multiple text lines
---@field RenderColor Vec4f
---@field VerticalAlign EnumVerticalAlign
---@field GridRecipesAndUnIn GridRecipeAndUnnamedIngredients[]
---@field CurrentVisibleRecipe GridRecipeAndUnnamedIngredients
---@field offY number
---@field offX number
SlideshowGridRecipeTextComponent = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param gridrecipes GridRecipe[] Represents a crafting recipe
---@param size number
---@param floatType EnumFloat
---@param onStackClicked? function
---@param allStacks? ItemStack[]
---@return SlideshowGridRecipeTextComponent
function SlideshowGridRecipeTextComponent.ctor(capi, gridrecipes, size, floatType, onStackClicked, allStacks) end

---@param flowPath TextFlowPath[]
---@param currentLineHeight number
---@param offsetX number
---@param lineY number
---@param nextOffsetX number
---@return EnumCalcBoundsResult
function SlideshowGridRecipeTextComponent.CalcBounds(flowPath, currentLineHeight, offsetX, lineY, nextOffsetX) end

---@param ctx Context
---@param surface ImageSurface
function SlideshowGridRecipeTextComponent.ComposeElements(ctx, surface) end

---@param deltaTime number
---@param renderX number
---@param renderY number
---@param renderZ number
function SlideshowGridRecipeTextComponent.RenderInteractiveElements(deltaTime, renderX, renderY, renderZ) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SlideshowGridRecipeTextComponent.OnMouseDown(args) end

function SlideshowGridRecipeTextComponent.Dispose() end

---@param slot ItemSlot The default item slot to item stacks
---@param renderX number
---@param renderY number
---@param dt number
function SlideshowGridRecipeTextComponent.RenderItemstackTooltip(slot, renderX, renderY, dt) end

---@return string
function SlideshowGridRecipeTextComponent.get_MouseOverCursor() end

---@return LineRectangled[]
function SlideshowGridRecipeTextComponent.get_BoundsPerLine() end

---@return number
function SlideshowGridRecipeTextComponent.get_UnscaledMarginTop() end

---@param value number
function SlideshowGridRecipeTextComponent.set_UnscaledMarginTop(value) end

---@return number
function SlideshowGridRecipeTextComponent.get_PaddingRight() end

---@param value number
function SlideshowGridRecipeTextComponent.set_PaddingRight(value) end

---@return number
function SlideshowGridRecipeTextComponent.get_PaddingLeft() end

---@param value number
function SlideshowGridRecipeTextComponent.set_PaddingLeft(value) end

---@return EnumFloat
function SlideshowGridRecipeTextComponent.get_Float() end

---@param value EnumFloat
function SlideshowGridRecipeTextComponent.set_Float(value) end

---@return Vec4f
function SlideshowGridRecipeTextComponent.get_RenderColor() end

---@param value Vec4f
function SlideshowGridRecipeTextComponent.set_RenderColor(value) end

---@return EnumVerticalAlign
function SlideshowGridRecipeTextComponent.get_VerticalAlign() end

---@param value EnumVerticalAlign
function SlideshowGridRecipeTextComponent.set_VerticalAlign(value) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SlideshowGridRecipeTextComponent.OnMouseMove(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SlideshowGridRecipeTextComponent.OnMouseUp(args) end

---@param richtextBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return boolean
function SlideshowGridRecipeTextComponent.UseMouseOverCursor(richtextBounds) end

---@return userdata
function SlideshowGridRecipeTextComponent.GetType() end

---@return string
function SlideshowGridRecipeTextComponent.ToString() end

---@param obj userdata
---@return boolean
function SlideshowGridRecipeTextComponent.Equals(obj) end

---@return number
function SlideshowGridRecipeTextComponent.GetHashCode() end


