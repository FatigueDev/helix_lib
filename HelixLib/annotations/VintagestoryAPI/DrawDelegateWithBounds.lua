---@meta

---@class DrawDelegateWithBounds: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
DrawDelegateWithBounds = {}

---@param object userdata
---@param method IntPtr
---@return DrawDelegateWithBounds
function DrawDelegateWithBounds.ctor(object, method) end

---@param ctx Context
---@param surface ImageSurface
---@param currentBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function DrawDelegateWithBounds.Invoke(ctx, surface, currentBounds) end

---@param ctx Context
---@param surface ImageSurface
---@param currentBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function DrawDelegateWithBounds.BeginInvoke(ctx, surface, currentBounds, callback, object) end

---@param result IAsyncResult
function DrawDelegateWithBounds.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function DrawDelegateWithBounds.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function DrawDelegateWithBounds.Equals(obj) end

---@return function
function DrawDelegateWithBounds.GetInvocationList() end

---@return number
function DrawDelegateWithBounds.GetHashCode() end

---@return userdata
function DrawDelegateWithBounds.get_Target() end

---@return userdata
function DrawDelegateWithBounds.Clone() end

---@param args userdata
---@return userdata
function DrawDelegateWithBounds.DynamicInvoke(args) end

---@return function
function DrawDelegateWithBounds.get_Method() end

---@return userdata
function DrawDelegateWithBounds.GetType() end

---@return string
function DrawDelegateWithBounds.ToString() end


