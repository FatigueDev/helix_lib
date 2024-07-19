---@meta

-- Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@class ElementBounds
---@field BothSizing ElementSizing Set the vertical and horizontal sizing, see also ElementSizing. Setting this is equal to calling WithSizing
---@field RequiresRecalculation boolean
---@field relX number Position relative to it's parent element plus margin
---@field relY number
---@field absX number Absolute position of the element plus margin. Same as renderX but without padding
---@field absY number
---@field OuterWidth number Width including padding
---@field OuterHeight number Height including padding
---@field OuterWidthInt number
---@field OuterHeightInt number
---@field InnerWidth number
---@field InnerHeight number
---@field drawX number Position where the element has to be drawn. This is a position relative to it's parent element plus margin plus padding. 
---@field drawY number
---@field bgDrawX number Position where the background has to be drawn, this encompasses the elements padding
---@field bgDrawY number
---@field renderX number
---@field renderY number
---@field Fill ElementBounds Quick Method to create a new ElementBounds instance that fills 100% of its parent bounds. Useful for backgrounds.
---@field Empty ElementBounds Create a special instance of type ElementEmptyBounds whose position is 0 and size 1. It's often used for other bounds that need a static, unchanging parent bounds
---@field ParentBounds ElementBounds
---@field LeftOfBounds ElementBounds
---@field ChildBounds table
---@field Code string For debugging purposes only
---@field Alignment EnumDialogArea
---@field verticalSizing ElementSizing
---@field horizontalSizing ElementSizing
---@field percentPaddingX number
---@field percentPaddingY number
---@field percentX number
---@field percentY number
---@field percentWidth number
---@field percentHeight number
---@field fixedMarginX number
---@field fixedMarginY number
---@field fixedPaddingX number
---@field fixedPaddingY number
---@field fixedX number
---@field fixedY number
---@field fixedWidth number
---@field fixedHeight number
---@field fixedOffsetX number
---@field fixedOffsetY number
---@field absPaddingX number
---@field absPaddingY number
---@field absMarginX number
---@field absMarginY number
---@field absOffsetX number
---@field absOffsetY number
---@field absFixedX number
---@field absFixedY number
---@field absInnerWidth number
---@field absInnerHeight number
---@field Name string
---@field Initialized boolean
---@field IsDrawingSurface boolean If set, bgDrawX/Y will be relative, instead of absolute
---@field renderOffsetX number
---@field renderOffsetY number
ElementBounds = {}

---@return ElementBounds
function ElementBounds.ctor() end

---@param value ElementSizing
function ElementBounds.set_BothSizing(value) end

---@return boolean
function ElementBounds.get_RequiresRecalculation() end

---@return number
function ElementBounds.get_relX() end

---@return number
function ElementBounds.get_relY() end

---@return number
function ElementBounds.get_absX() end

---@return number
function ElementBounds.get_absY() end

---@return number
function ElementBounds.get_OuterWidth() end

---@return number
function ElementBounds.get_OuterHeight() end

---@return number
function ElementBounds.get_OuterWidthInt() end

---@return number
function ElementBounds.get_OuterHeightInt() end

---@return number
function ElementBounds.get_InnerWidth() end

---@return number
function ElementBounds.get_InnerHeight() end

---@return number
function ElementBounds.get_drawX() end

---@return number
function ElementBounds.get_drawY() end

---@return number
function ElementBounds.get_bgDrawX() end

---@return number
function ElementBounds.get_bgDrawY() end

---@return number
function ElementBounds.get_renderX() end

---@return number
function ElementBounds.get_renderY() end

function ElementBounds.MarkDirtyRecursive() end

function ElementBounds.CalcWorldBounds() end

---@param value number
---@return number
function ElementBounds.scaled(value) end

---@param factor number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithScale(factor) end

---@param bounds ElementBounds[] Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithChildren(bounds) end

---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithChild(bounds) end

---@param leftBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param leftMargin? number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.RightOf(leftBounds, leftMargin) end

-- Returns the relative coordinate if supplied coordinate is inside the bounds, otherwise null
---@param absPointX number
---@param absPointY number
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function ElementBounds.PositionInside(absPointX, absPointY) end

-- Returns true if supplied coordinate is inside the bounds
---@param absPointX number
---@param absPointY number
---@return boolean
function ElementBounds.PointInside(absPointX, absPointY) end

-- Returns true if supplied coordinate is inside the bounds
---@param absPointX number
---@param absPointY number
---@return boolean
function ElementBounds.PointInside(absPointX, absPointY) end

-- Checks if the bounds is at least partially inside it's parent bounds by checking if any of the 4 corner points is inside
---@param boundingBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return boolean
function ElementBounds.PartiallyInside(boundingBounds) end

-- Makes a copy of the current bounds but leaves the position and 0. Sets the parent to the calling bounds
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.CopyOnlySize() end

-- Makes a copy of the current bounds but leaves the position and padding at 0. Sets the same parent as the current one.
---@param fixedDeltaX? number
---@param fixedDeltaY? number
---@param fixedDeltaWidth? number
---@param fixedDeltaHeight? number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.CopyOffsetedSibling(fixedDeltaX, fixedDeltaY, fixedDeltaWidth, fixedDeltaHeight) end

-- Makes a copy of the current bounds but leaves the position and padding at 0. Sets the same parent as the current one.
---@param fixedDeltaX? number
---@param fixedDeltaY? number
---@param fixedDeltaWidth? number
---@param fixedDeltaHeight? number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.BelowCopy(fixedDeltaX, fixedDeltaY, fixedDeltaWidth, fixedDeltaHeight) end

-- Create a flat copy of the element with a fixed position offset that causes it to be right of the original element
---@param fixedDeltaX? number
---@param fixedDeltaY? number
---@param fixedDeltaWidth? number
---@param fixedDeltaHeight? number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.RightCopy(fixedDeltaX, fixedDeltaY, fixedDeltaWidth, fixedDeltaHeight) end

-- Creates a clone of the bounds but without child elements
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.FlatCopy() end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.ForkChild() end

---@param fixedDeltaX? number
---@param fixedDeltaY? number
---@param fixedDeltaWidth? number
---@param fixedDeltaHeight? number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.ForkChildOffseted(fixedDeltaX, fixedDeltaY, fixedDeltaWidth, fixedDeltaHeight) end

-- Creates a new elements bounds which acts as the parent bounds of the current bounds. It will also arrange the fixedX/Y and Width/Height coords of both bounds so that the parent bounds surrounds the child bounds with given spacings. Uses fixed coords only!
---@param leftSpacing? number
---@param topSpacing? number
---@param rightSpacing? number
---@param bottomSpacing? number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.ForkBoundingParent(leftSpacing, topSpacing, rightSpacing, bottomSpacing) end

-- Creates a new elements bounds which acts as the child bounds of the current bounds. It will also arrange the fixedX/Y and Width/Height coords of both bounds so that the parent bounds surrounds the child bounds with given spacings. Uses fixed coords only!
---@param leftSpacing? number
---@param topSpacing? number
---@param rightSpacing? number
---@param bottomSpacing? number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.ForkContainingChild(leftSpacing, topSpacing, rightSpacing, bottomSpacing) end

---@return string
function ElementBounds.ToString() end

-- Set the fixed y-position to "refBounds.fixedY + refBounds.fixedHeight + spacing" so that the bounds will be under the reference bounds
---@param refBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param spacing? number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.FixedUnder(refBounds, spacing) end

-- Set the fixed x-position to "refBounds.fixedX + refBounds.fixedWidth + leftSpacing" so that the bounds will be right of reference bounds
---@param refBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param leftSpacing? number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.FixedRightOf(refBounds, leftSpacing) end

-- Set the fixed x-position to "refBounds.fixedX - fixedWith - rightSpacing" so that the element will be left of reference bounds
---@param refBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param rightSpacing? number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.FixedLeftOf(refBounds, rightSpacing) end

-- Set the fixed width and fixed height values
---@param width number
---@param height number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithFixedSize(width, height) end

-- Set the width property
---@param width number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithFixedWidth(width) end

-- Set the height property
---@param height number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithFixedHeight(height) end

-- Set the alignment property
---@param alignment EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithAlignment(alignment) end

-- Set the vertical and horizontal sizing property to the same value. See also .
---@param sizing ElementSizing
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithSizing(sizing) end

-- Set the vertical and horizontal sizing properties individually. See also .
---@param horizontalSizing ElementSizing
---@param verticalSizing ElementSizing
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithSizing(horizontalSizing, verticalSizing) end

-- Sets a new fixed margin (pad = top/right/down/left margin)
---@param pad number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithFixedMargin(pad) end

-- Sets a new fixed margin (pad = top/right/down/left margin)
---@param padH number
---@param padV number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithFixedMargin(padH, padV) end

-- Sets a new fixed padding (pad = top/right/down/left padding)
---@param pad number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithFixedPadding(pad) end

-- Sets a new fixed padding (x = left/right, y = top/down padding)
---@param leftRight number
---@param upDown number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithFixedPadding(leftRight, upDown) end

-- Sets a new fixed offset that is applied after element alignment. So you could i.e. horizontally center an element and then offset in x direction  from there using this method.
---@param x number
---@param y number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithFixedAlignmentOffset(x, y) end

-- Sets a new fixed offset that is used during element alignment.
---@param x number
---@param y number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithFixedPosition(x, y) end

-- Sets a new fixed offset that is used during element alignment.
---@param offx number
---@param offy number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithFixedOffset(offx, offy) end

-- Shrinks the current width/height by a fixed value
---@param amount number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.FixedShrink(amount) end

-- Grows the current width/height by a fixed value
---@param amount number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.FixedGrow(amount) end

-- Grows the current width/height by a fixed value
---@param width number
---@param height number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.FixedGrow(width, height) end

-- Sets the parent of the bounds
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithParent(bounds) end

-- Creates a new bounds using FitToChildren and sets that as bound parent. This is usefull if you want to draw elements that are not part of the dialog
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.WithEmptyParent() end

-- Create a new ElementBounds instance with given fixed x/y position and width/height 0
---@param fixedX number
---@param fixedY number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.Fixed(fixedX, fixedY) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.get_Fill() end

---@param alignment EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@param fixedX number
---@param fixedY number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.FixedPos(alignment, fixedX, fixedY) end

-- Quick method to create a new ElementBounds instance that uses fixed element sizing. The X/Y Coordinates are left at 0. 
---@param fixedWidth number
---@param fixedHeight number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.FixedSize(fixedWidth, fixedHeight) end

-- Quick method to create a new ElementBounds instance that uses fixed element sizing. The X/Y Coordinates are left at 0. 
---@param alignment EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@param fixedWidth number
---@param fixedHeight number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.FixedSize(alignment, fixedWidth, fixedHeight) end

-- Quick method to create new ElementsBounds instance that uses fixed element sizing.
---@param fixedX number
---@param fixedY number
---@param fixedWidth number
---@param fixedHeight number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.Fixed(fixedX, fixedY, fixedWidth, fixedHeight) end

-- Quick method to create new ElementsBounds instance that uses fixed element sizing.
---@param alignment EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@param fixedOffsetX number
---@param fixedOffsetY number
---@param fixedWidth number
---@param fixedHeight number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.FixedOffseted(alignment, fixedOffsetX, fixedOffsetY, fixedWidth, fixedHeight) end

-- Quick method to create new ElementsBounds instance that uses fixed element sizing.
---@param alignment EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@param fixedX number
---@param fixedY number
---@param fixedWidth number
---@param fixedHeight number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.Fixed(alignment, fixedX, fixedY, fixedWidth, fixedHeight) end

-- Quick method to create new ElementsBounds instance that uses percentual element sizing, e.g. setting percentWidth to 0.5 will set the width of the bounds to 50% of its parent width
---@param alignment EnumDialogArea First word = X Alignment (left, center, right or fixed) Second word = Y Alignment (top, middle, bottom or fixed)
---@param percentWidth number
---@param percentHeight number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.Percentual(alignment, percentWidth, percentHeight) end

-- Quick method to create new ElementsBounds instance that uses percentual element sizing, e.g. setting percentWidth to 0.5 will set the width of the bounds to 50% of its parent width
---@param percentX number
---@param percentY number
---@param percentWidth number
---@param percentHeight number
---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.Percentual(percentX, percentY, percentWidth, percentHeight) end

---@return ElementBounds # Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function ElementBounds.get_Empty() end

---@return userdata
function ElementBounds.GetType() end

---@param obj userdata
---@return boolean
function ElementBounds.Equals(obj) end

---@return number
function ElementBounds.GetHashCode() end


