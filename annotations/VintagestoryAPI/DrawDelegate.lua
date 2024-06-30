---@meta

---@class DrawDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
DrawDelegate = {}

---@param object userdata
---@param method IntPtr
---@return DrawDelegate
function DrawDelegate.ctor(object, method) end

---@param ctx Context
---@param surface ImageSurface
function DrawDelegate.Invoke(ctx, surface) end

---@param ctx Context
---@param surface ImageSurface
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function DrawDelegate.BeginInvoke(ctx, surface, callback, object) end

---@param result IAsyncResult
function DrawDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function DrawDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function DrawDelegate.Equals(obj) end

---@return function
function DrawDelegate.GetInvocationList() end

---@return number
function DrawDelegate.GetHashCode() end

---@return userdata
function DrawDelegate.get_Target() end

---@return userdata
function DrawDelegate.Clone() end

---@param args userdata
---@return userdata
function DrawDelegate.DynamicInvoke(args) end

---@return function
function DrawDelegate.get_Method() end

---@return userdata
function DrawDelegate.GetType() end

---@return string
function DrawDelegate.ToString() end


