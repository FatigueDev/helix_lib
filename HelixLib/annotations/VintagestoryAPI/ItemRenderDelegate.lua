---@meta

-- A custom itemstack render handler. This method is called after Collectible.OnBeforeRender(). For render target gui, the gui shader and its uniforms are already fully prepared, you may only call RenderMesh() and ignore the modelMat, position and size values - stack sizes however, are not covered by this.
---@class ItemRenderDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ItemRenderDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ItemRenderDelegate
function ItemRenderDelegate.ctor(object, method) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param renderInfo ItemRenderInfo Holds information on how a collectible should be rendered in hands, on the ground or in gui. In collectible.OnBeforeRender() the values are prefilled with the default ones.
---@param modelMat Matrixf
---@param posX number
---@param posY number
---@param posZ number
---@param size number
---@param color number
---@param rotate? boolean
---@param showStackSize? boolean
function ItemRenderDelegate.Invoke(inSlot, renderInfo, modelMat, posX, posY, posZ, size, color, rotate, showStackSize) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param renderInfo ItemRenderInfo Holds information on how a collectible should be rendered in hands, on the ground or in gui. In collectible.OnBeforeRender() the values are prefilled with the default ones.
---@param modelMat Matrixf
---@param posX number
---@param posY number
---@param posZ number
---@param size number
---@param color number
---@param rotate boolean
---@param showStackSize boolean
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ItemRenderDelegate.BeginInvoke(inSlot, renderInfo, modelMat, posX, posY, posZ, size, color, rotate, showStackSize, callback, object) end

---@param result IAsyncResult
function ItemRenderDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ItemRenderDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ItemRenderDelegate.Equals(obj) end

---@return function
function ItemRenderDelegate.GetInvocationList() end

---@return number
function ItemRenderDelegate.GetHashCode() end

---@return userdata
function ItemRenderDelegate.get_Target() end

---@return userdata
function ItemRenderDelegate.Clone() end

---@param args userdata
---@return userdata
function ItemRenderDelegate.DynamicInvoke(args) end

---@return function
function ItemRenderDelegate.get_Method() end

---@return userdata
function ItemRenderDelegate.GetType() end

---@return string
function ItemRenderDelegate.ToString() end


