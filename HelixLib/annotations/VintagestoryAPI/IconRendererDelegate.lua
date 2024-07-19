---@meta

---@class IconRendererDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
IconRendererDelegate = {}

---@param object userdata
---@param method IntPtr
---@return IconRendererDelegate
function IconRendererDelegate.ctor(object, method) end

---@param ctx Context
---@param x number
---@param y number
---@param w number
---@param h number
---@param rgba number
function IconRendererDelegate.Invoke(ctx, x, y, w, h, rgba) end

---@param ctx Context
---@param x number
---@param y number
---@param w number
---@param h number
---@param rgba number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function IconRendererDelegate.BeginInvoke(ctx, x, y, w, h, rgba, callback, object) end

---@param result IAsyncResult
function IconRendererDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function IconRendererDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function IconRendererDelegate.Equals(obj) end

---@return function
function IconRendererDelegate.GetInvocationList() end

---@return number
function IconRendererDelegate.GetHashCode() end

---@return userdata
function IconRendererDelegate.get_Target() end

---@return userdata
function IconRendererDelegate.Clone() end

---@param args userdata
---@return userdata
function IconRendererDelegate.DynamicInvoke(args) end

---@return function
function IconRendererDelegate.get_Method() end

---@return userdata
function IconRendererDelegate.GetType() end

---@return string
function IconRendererDelegate.ToString() end


