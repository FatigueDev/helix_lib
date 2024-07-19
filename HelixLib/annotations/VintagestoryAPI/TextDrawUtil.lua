---@meta

---@class TextDrawUtil
TextDrawUtil = {}

---@return TextDrawUtil
function TextDrawUtil.ctor() end

---@param ctx Context
---@param text string
---@param boxwidth number
---@param lineHeightMultiplier? number
---@param linebreak? EnumLinebreakBehavior
---@param keepLinebreakChar? boolean
---@return TextLine[]
function TextDrawUtil.Lineize(ctx, text, boxwidth, lineHeightMultiplier, linebreak, keepLinebreakChar) end

---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param text string
---@param boxWidth number
---@param linebreak? EnumLinebreakBehavior
---@return number
function TextDrawUtil.GetQuantityTextLines(font, text, boxWidth, linebreak) end

---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param text string
---@param boxWidth number
---@param linebreak? EnumLinebreakBehavior
---@return number
function TextDrawUtil.GetMultilineTextHeight(font, text, boxWidth, linebreak) end

---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param fulltext string
---@param boxWidth number
---@param linebreak? EnumLinebreakBehavior
---@param keepLinebreakChar? boolean
---@return TextLine[]
function TextDrawUtil.Lineize(font, fulltext, boxWidth, linebreak, keepLinebreakChar) end

-- Use Matrix transformation to move the draw position
---@param ctx Context
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param text string
---@param boxWidth number
---@param orientation? EnumTextOrientation
function TextDrawUtil.AutobreakAndDrawMultilineText(ctx, font, text, boxWidth, orientation) end

-- Draws the text with matrix transformations.
---@param ctx Context
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param text string
---@param posX number
---@param posY number
---@param boxWidth number
---@param orientation? EnumTextOrientation
---@return number
function TextDrawUtil.AutobreakAndDrawMultilineTextAt(ctx, font, text, posX, posY, boxWidth, orientation) end

-- Draws the text with pre-set breaks.
---@param ctx Context
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param lines TextLine[]
---@param posX number
---@param posY number
---@param boxWidth number
---@param orientation? EnumTextOrientation
function TextDrawUtil.DrawMultilineTextAt(ctx, font, lines, posX, posY, boxWidth, orientation) end

-- Gets the height of the font to calculate the height of the line.
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@return number
function TextDrawUtil.GetLineHeight(font) end

-- Gets the number of lines of text.
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param text string
---@param linebreak EnumLinebreakBehavior
---@param flowPath TextFlowPath[]
---@param lineY? number
---@return number
function TextDrawUtil.GetQuantityTextLines(font, text, linebreak, flowPath, lineY) end

-- Get the final height of the text.
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param text string
---@param linebreak EnumLinebreakBehavior
---@param flowPath TextFlowPath[]
---@param lineY? number
---@return number
function TextDrawUtil.GetMultilineTextHeight(font, text, linebreak, flowPath, lineY) end

-- Turns the supplied text into line of text constrained by supplied flow path and starting at supplied start coordinates
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param fulltext string
---@param linebreak EnumLinebreakBehavior
---@param flowPath TextFlowPath[]
---@param startOffsetX? number
---@param startY? number
---@param keepLinebreakChar? boolean
---@return TextLine[]
function TextDrawUtil.Lineize(font, fulltext, linebreak, flowPath, startOffsetX, startY, keepLinebreakChar) end

-- Turns the supplied text into line of text constrained by supplied flow path and starting at supplied start coordinates
---@param ctx Context
---@param text string
---@param linebreak EnumLinebreakBehavior
---@param flowPath TextFlowPath[]
---@param startOffsetX? number
---@param startY? number
---@param lineHeightMultiplier? number
---@param keepLinebreakChar? boolean
---@return TextLine[]
function TextDrawUtil.Lineize(ctx, text, linebreak, flowPath, startOffsetX, startY, lineHeightMultiplier, keepLinebreakChar) end

---@param ctx Context
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param text string
---@param lineX number
---@param lineY number
---@param flowPath TextFlowPath[]
---@param orientation? EnumTextOrientation
---@param linebreak? EnumLinebreakBehavior
---@return number
function TextDrawUtil.AutobreakAndDrawMultilineText(ctx, font, text, lineX, lineY, flowPath, orientation, linebreak) end

-- lineX is set to 0 after the second line, lineY is advanced by line height for each line
---@param ctx Context
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param lines TextLine[]
---@param orientation? EnumTextOrientation
function TextDrawUtil.DrawMultilineText(ctx, font, lines, orientation) end

-- Draws a line of text on the screen.
---@param ctx Context
---@param font CairoFont Represent a font with sizing and styling for use in rendering text
---@param text string
---@param offsetX? number
---@param offsetY? number
---@param textPathMode? boolean
function TextDrawUtil.DrawTextLine(ctx, font, text, offsetX, offsetY, textPathMode) end

---@return userdata
function TextDrawUtil.GetType() end

---@return string
function TextDrawUtil.ToString() end

---@param obj userdata
---@return boolean
function TextDrawUtil.Equals(obj) end

---@return number
function TextDrawUtil.GetHashCode() end


