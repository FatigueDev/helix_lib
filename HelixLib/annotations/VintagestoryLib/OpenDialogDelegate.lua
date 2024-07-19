---@meta

---@class OpenDialogDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OpenDialogDelegate = {}

---@param object userdata
---@param method IntPtr
---@return OpenDialogDelegate
function OpenDialogDelegate.ctor(object, method) end

---@param name string
---@param param userdata
---@return GuiDialog
function OpenDialogDelegate.Invoke(name, param) end

---@param name string
---@param param userdata
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OpenDialogDelegate.BeginInvoke(name, param, callback, object) end

---@param result IAsyncResult
---@return GuiDialog
function OpenDialogDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OpenDialogDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OpenDialogDelegate.Equals(obj) end

---@return function
function OpenDialogDelegate.GetInvocationList() end

---@return number
function OpenDialogDelegate.GetHashCode() end

---@return userdata
function OpenDialogDelegate.get_Target() end

---@return userdata
function OpenDialogDelegate.Clone() end

---@param args userdata
---@return userdata
function OpenDialogDelegate.DynamicInvoke(args) end

---@return function
function OpenDialogDelegate.get_Method() end

---@return userdata
function OpenDialogDelegate.GetType() end

---@return string
function OpenDialogDelegate.ToString() end


