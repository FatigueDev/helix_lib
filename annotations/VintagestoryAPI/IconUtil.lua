---@meta

---@class IconUtil
---@field CustomIcons table
IconUtil = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return IconUtil
function IconUtil.ctor(capi) end

---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@return IconRendererDelegate
function IconUtil.SvgIconSource(loc) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return IconRendererDelegate
function IconUtil.SvgIconSource(asset) end

---@param width number
---@param height number
---@param asset IAsset Represents a loaded asset from the assets folder
---@param rgba? number
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function IconUtil.GenTexture(width, height, asset, rgba) end

-- Generates the texture.  
---@param width number
---@param height number
---@param drawHandler DrawDelegate
---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function IconUtil.GenTexture(width, height, drawHandler) end

-- Draws the icon.
---@param cr Context
---@param type string
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawIcon(cr, type, x, y, width, height, rgba) end

-- Draws the icon.
---@param cr Context
---@param type string
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawIconInt(cr, type, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawRightMouseButton(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawLeftMouseButton(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawapple_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawhealth_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawoffhand_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawmask_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawbracers_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawpullover_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawhandheld_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawdice_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawright_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawleft_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawnecklace_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawbasket_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawbelt_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawmedal_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawring_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawcape_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawshirt_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawboots_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawhat_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawgloves_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawtrousers_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param lineWidth? number
---@param strokeOrFill? boolean
---@param defaultPattern? boolean
function IconUtil.DrawArrowRight(cr, lineWidth, strokeOrFill, defaultPattern) end

---@param cr Context
---@param lineWidth? number
---@param strokeOrFill? boolean
---@param defaultPattern? boolean
function IconUtil.DrawFlame(cr, lineWidth, strokeOrFill, defaultPattern) end

-- Draws 5 vertical bars of increasing size and Quality amount of them green
---@param ctx Context
---@param x number
---@param y number
---@param quality number
---@param size number
function IconUtil.DrawConnectionQuality(ctx, x, y, quality, size) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawmenuicon_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawMapMarker(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param strokeRgba number
---@param fillRgba number
function IconUtil.DrawMapPlayer(cr, x, y, width, height, strokeRgba, fillRgba) end

---@param ctx Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param strokeRgba number
---@param lineWidth number
function IconUtil.DrawPlus(ctx, x, y, width, height, strokeRgba, lineWidth) end

---@param ctx Context
---@param x number
---@param y number
---@param lineWidth number
---@param size number
---@param preserverePath? boolean
function IconUtil.DrawCross(ctx, x, y, lineWidth, size, preserverePath) end

---@param ctx Context
---@param x number
---@param y number
---@param lineWidth number
---@param size number
function IconUtil.DrawPen(ctx, x, y, lineWidth, size) end

---@param ctx Context
---@param x number
---@param y number
---@param size number
---@param color number
---@param lineWidth number
---@param seed number
---@param addLines? number
function IconUtil.DrawRandomSymbol(ctx, x, y, size, color, lineWidth, seed, addLines) end

---@param cr Context
---@param surface ImageSurface
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawVSGear(cr, surface, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointPlayer(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointCircle(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointPick(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointLadder(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointHome(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointCave(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointVessel(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointTrader(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointStar2(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointStar1(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointSpiral(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointRuins(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWaypointRocks(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.DrawWayointBee(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawundo_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawcursor_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawrepeat_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawselect_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawredo_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawduplicate_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawairbrush_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawbrush_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Draweraser_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawerode_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawfloodfill_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawgrowshrink_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawimport_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawline_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawraiselower_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawtree_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawnone_svg(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function IconUtil.Drawlake_svg(cr, x, y, width, height, rgba) end

---@return userdata
function IconUtil.GetType() end

---@return string
function IconUtil.ToString() end

---@param obj userdata
---@return boolean
function IconUtil.Equals(obj) end

---@return number
function IconUtil.GetHashCode() end


