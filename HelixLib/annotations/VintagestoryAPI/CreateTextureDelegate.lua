---@meta

---@class CreateTextureDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CreateTextureDelegate = {}

---@param object userdata
---@param method IntPtr
---@return CreateTextureDelegate
function CreateTextureDelegate.ctor(object, method) end

---@return IBitmap
function CreateTextureDelegate.Invoke() end

---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CreateTextureDelegate.BeginInvoke(callback, object) end

---@param result IAsyncResult
---@return IBitmap
function CreateTextureDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function CreateTextureDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CreateTextureDelegate.Equals(obj) end

---@return function
function CreateTextureDelegate.GetInvocationList() end

---@return number
function CreateTextureDelegate.GetHashCode() end

---@return userdata
function CreateTextureDelegate.get_Target() end

---@return userdata
function CreateTextureDelegate.Clone() end

---@param args userdata
---@return userdata
function CreateTextureDelegate.DynamicInvoke(args) end

---@return function
function CreateTextureDelegate.get_Method() end

---@return userdata
function CreateTextureDelegate.GetType() end

---@return string
function CreateTextureDelegate.ToString() end


