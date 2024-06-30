---@meta

---@class InventoryItemRenderer:  IDisposable, IRenderer
---@field RenderOrder number
---@field RenderRange number
InventoryItemRenderer = {}

---@param game ClientMain
---@return InventoryItemRenderer
function InventoryItemRenderer.ctor(game) end

---@return number
function InventoryItemRenderer.get_RenderOrder() end

---@return number
function InventoryItemRenderer.get_RenderRange() end

---@param deltaTime number
---@param stage EnumRenderStage
function InventoryItemRenderer.OnRenderFrame(deltaTime, stage) end

---@param stack ItemStack
---@param atlas ITextureAtlasAPI Entity texture Atlas.
---@param size number
---@param onComplete function
---@param color? number
---@param sepiaLevel? number
---@param scale? number
---@return boolean
function InventoryItemRenderer.RenderItemStackToAtlas(stack, atlas, size, onComplete, color, sepiaLevel, scale) end

---@param dt number
---@param entity Entity The basic class for all entities in the game
---@param posX number
---@param posY number
---@param posZ number
---@param yawDelta number
---@param size number
---@param color number
function InventoryItemRenderer.RenderEntityToGui(dt, entity, posX, posY, posZ, yawDelta, size, color) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param posX number
---@param posY number
---@param posZ number
---@param size number
---@param color number
---@param shading? boolean
---@param origRotate? boolean
---@param showStackSize? boolean
function InventoryItemRenderer.RenderItemstackToGui(inSlot, posX, posY, posZ, size, color, shading, origRotate, showStackSize) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param posX number
---@param posY number
---@param posZ number
---@param size number
---@param color number
---@param dt number
---@param shading? boolean
---@param origRotate? boolean
---@param showStackSize? boolean
function InventoryItemRenderer.RenderItemstackToGui(inSlot, posX, posY, posZ, size, color, dt, shading, origRotate, showStackSize) end

---@param game ClientMain
---@param inSlot ItemSlot The default item slot to item stacks
---@param target EnumItemRenderTarget The render taget for an item stack
---@param dt number
---@return ItemRenderInfo # Holds information on how a collectible should be rendered in hands, on the ground or in gui. In collectible.OnBeforeRender() the values are prefilled with the default ones.
function InventoryItemRenderer.GetItemStackRenderInfo(game, inSlot, target, dt) end

---@param game ClientMain
---@param itemstack IItemStack Represents a stack of items or blocks
---@return TextureAtlasPosition # The position of a texture inside an atlas
function InventoryItemRenderer.GetTextureAtlasPosition(game, itemstack) end

---@param side number
---@return number
function InventoryItemRenderer.GetCurrentBlockOrItemTextureId(side) end

---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param itemstack IItemStack Represents a stack of items or blocks
---@return number
function InventoryItemRenderer.GetBlockOrItemTextureId(facing, itemstack) end

function InventoryItemRenderer.Dispose() end

---@return userdata
function InventoryItemRenderer.GetType() end

---@return string
function InventoryItemRenderer.ToString() end

---@param obj userdata
---@return boolean
function InventoryItemRenderer.Equals(obj) end

---@return number
function InventoryItemRenderer.GetHashCode() end


