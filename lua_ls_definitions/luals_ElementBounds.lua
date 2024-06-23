---@meta ElementBounds
---@class ElementBounds: Object
---@field ctor fun(): ElementBounds
---@field set_BothSizing fun(value: ElementSizing): nil
---@field get_RequiresRecalculation fun(): boolean
---@field get_relX fun(): Double
---@field get_relY fun(): Double
---@field get_absX fun(): Double
---@field get_absY fun(): Double
---@field get_OuterWidth fun(): Double
---@field get_OuterHeight fun(): Double
---@field get_OuterWidthInt fun(): number
---@field get_OuterHeightInt fun(): number
---@field get_InnerWidth fun(): Double
---@field get_InnerHeight fun(): Double
---@field get_drawX fun(): Double
---@field get_drawY fun(): Double
---@field get_bgDrawX fun(): Double
---@field get_bgDrawY fun(): Double
---@field get_renderX fun(): Double
---@field get_renderY fun(): Double
---@field MarkDirtyRecursive fun(): nil
---@field CalcWorldBounds fun(): nil
---@field scaled fun(value: Double): Double
---@field WithScale fun(factor: Double): ElementBounds
---@field WithChildren fun(bounds: ElementBounds[]): ElementBounds
---@field WithChild fun(bounds: ElementBounds): ElementBounds
---@field RightOf fun(leftBounds: ElementBounds, leftMargin: Double): ElementBounds
---@field PositionInside fun(absPointX: number, absPointY: number): Vec2d
---@field PointInside fun(absPointX: number, absPointY: number): boolean
---@overload fun(absPointX: Double, absPointY: Double): boolean
---@field PartiallyInside fun(boundingBounds: ElementBounds): boolean
---@field CopyOnlySize fun(): ElementBounds
---@field CopyOffsetedSibling fun(fixedDeltaX: Double, fixedDeltaY: Double, fixedDeltaWidth: Double, fixedDeltaHeight: Double): ElementBounds
---@field BelowCopy fun(fixedDeltaX: Double, fixedDeltaY: Double, fixedDeltaWidth: Double, fixedDeltaHeight: Double): ElementBounds
---@field RightCopy fun(fixedDeltaX: Double, fixedDeltaY: Double, fixedDeltaWidth: Double, fixedDeltaHeight: Double): ElementBounds
---@field FlatCopy fun(): ElementBounds
---@field ForkChild fun(): ElementBounds
---@field ForkChildOffseted fun(fixedDeltaX: Double, fixedDeltaY: Double, fixedDeltaWidth: Double, fixedDeltaHeight: Double): ElementBounds
---@field ForkBoundingParent fun(leftSpacing: Double, topSpacing: Double, rightSpacing: Double, bottomSpacing: Double): ElementBounds
---@field ForkContainingChild fun(leftSpacing: Double, topSpacing: Double, rightSpacing: Double, bottomSpacing: Double): ElementBounds
---@field ToString fun(): string
---@field FixedUnder fun(refBounds: ElementBounds, spacing: Double): ElementBounds
---@field FixedRightOf fun(refBounds: ElementBounds, leftSpacing: Double): ElementBounds
---@field FixedLeftOf fun(refBounds: ElementBounds, rightSpacing: Double): ElementBounds
---@field WithFixedSize fun(width: Double, height: Double): ElementBounds
---@field WithFixedWidth fun(width: Double): ElementBounds
---@field WithFixedHeight fun(height: Double): ElementBounds
---@field WithAlignment fun(alignment: EnumDialogArea): ElementBounds
---@field WithSizing fun(sizing: ElementSizing): ElementBounds
---@overload fun(horizontalSizing: ElementSizing, verticalSizing: ElementSizing): ElementBounds
---@field WithFixedMargin fun(pad: Double): ElementBounds
---@overload fun(padH: Double, padV: Double): ElementBounds
---@field WithFixedPadding fun(pad: Double): ElementBounds
---@overload fun(leftRight: Double, upDown: Double): ElementBounds
---@field WithFixedAlignmentOffset fun(x: Double, y: Double): ElementBounds
---@field WithFixedPosition fun(x: Double, y: Double): ElementBounds
---@field WithFixedOffset fun(offx: Double, offy: Double): ElementBounds
---@field FixedShrink fun(amount: Double): ElementBounds
---@field FixedGrow fun(amount: Double): ElementBounds
---@overload fun(width: Double, height: Double): ElementBounds
---@field WithParent fun(bounds: ElementBounds): ElementBounds
---@field WithEmptyParent fun(): ElementBounds
---@field Fixed fun(fixedX: number, fixedY: number): ElementBounds
---@field get_Fill fun(): ElementBounds
---@field FixedPos fun(alignment: EnumDialogArea, fixedX: Double, fixedY: Double): ElementBounds
---@field FixedSize fun(fixedWidth: Double, fixedHeight: Double): ElementBounds
---@overload fun(alignment: EnumDialogArea, fixedWidth: Double, fixedHeight: Double): ElementBounds
---@overload fun(fixedX: Double, fixedY: Double, fixedWidth: Double, fixedHeight: Double): ElementBounds
---@field FixedOffseted fun(alignment: EnumDialogArea, fixedOffsetX: Double, fixedOffsetY: Double, fixedWidth: Double, fixedHeight: Double): ElementBounds
---@field Fixed fun(alignment: EnumDialogArea, fixedX: Double, fixedY: Double, fixedWidth: Double, fixedHeight: Double): ElementBounds
---@field Percentual fun(alignment: EnumDialogArea, percentWidth: Double, percentHeight: Double): ElementBounds
---@overload fun(percentX: Double, percentY: Double, percentWidth: Double, percentHeight: Double): ElementBounds
---@field get_Empty fun(): ElementBounds
---@field GetType fun(): any
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field BothSizing ElementSizing
---@field RequiresRecalculation ElementSizing
---@field relX ElementSizing
---@field relY ElementSizing
---@field absX ElementSizing
---@field absY ElementSizing
---@field OuterWidth ElementSizing
---@field OuterHeight ElementSizing
---@field OuterWidthInt ElementSizing
---@field OuterHeightInt ElementSizing
---@field InnerWidth ElementSizing
---@field InnerHeight ElementSizing
---@field drawX ElementSizing
---@field drawY ElementSizing
---@field bgDrawX ElementSizing
---@field bgDrawY ElementSizing
---@field renderX ElementSizing
---@field renderY ElementSizing
---@field Fill ElementSizing
---@field Empty ElementSizing
---@field ParentBounds ElementSizing
---@field LeftOfBounds ElementSizing
---@field ChildBounds ElementSizing
---@field Code ElementSizing
---@field Alignment ElementSizing
---@field verticalSizing ElementSizing
---@field horizontalSizing ElementSizing
---@field percentPaddingX ElementSizing
---@field percentPaddingY ElementSizing
---@field percentX ElementSizing
---@field percentY ElementSizing
---@field percentWidth ElementSizing
---@field percentHeight ElementSizing
---@field fixedMarginX ElementSizing
---@field fixedMarginY ElementSizing
---@field fixedPaddingX ElementSizing
---@field fixedPaddingY ElementSizing
---@field fixedX ElementSizing
---@field fixedY ElementSizing
---@field fixedWidth ElementSizing
---@field fixedHeight ElementSizing
---@field fixedOffsetX ElementSizing
---@field fixedOffsetY ElementSizing
---@field absPaddingX ElementSizing
---@field absPaddingY ElementSizing
---@field absMarginX ElementSizing
---@field absMarginY ElementSizing
---@field absOffsetX ElementSizing
---@field absOffsetY ElementSizing
---@field absFixedX ElementSizing
---@field absFixedY ElementSizing
---@field absInnerWidth ElementSizing
---@field absInnerHeight ElementSizing
---@field Name ElementSizing
---@field Initialized ElementSizing
---@field IsDrawingSurface ElementSizing
---@field renderOffsetX ElementSizing
---@field renderOffsetY ElementSizing
ElementBounds = {}
