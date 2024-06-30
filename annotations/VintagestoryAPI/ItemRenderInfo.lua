---@meta

-- Holds information on how a collectible should be rendered in hands, on the ground or in gui. In collectible.OnBeforeRender() the values are prefilled with the default ones.
---@class ItemRenderInfo
---@field ModelRef MultiTextureMeshRef The model to be rendered
---@field Transform ModelTransform The transform to be applied when rendered
---@field CullFaces boolean Wether or not to cull back faces
---@field TextureId number The texture to be used when rendering. Should probalby be the texture id of the block or item texture atlas
---@field TextureSize Size2i
---@field AlphaTest number For discarding fragments with alpha value below this threshold
---@field HalfTransparent boolean (Currently) not used.
---@field NormalShaded boolean
---@field ApplyColor boolean
---@field OverlayTexture LoadedTexture
---@field OverlayOpacity number
---@field DamageEffect number
---@field InSlot ItemSlot The slot the stack is currently in
---@field dt number
ItemRenderInfo = {}

---@return ItemRenderInfo
function ItemRenderInfo.ctor() end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param opacity number
function ItemRenderInfo.SetRotOverlay(capi, opacity) end

---@return userdata
function ItemRenderInfo.GetType() end

---@return string
function ItemRenderInfo.ToString() end

---@param obj userdata
---@return boolean
function ItemRenderInfo.Equals(obj) end

---@return number
function ItemRenderInfo.GetHashCode() end


