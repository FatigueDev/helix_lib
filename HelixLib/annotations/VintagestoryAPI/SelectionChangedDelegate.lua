---@meta

---@class SelectionChangedDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
SelectionChangedDelegate = {}

---@param object userdata
---@param method IntPtr
---@return SelectionChangedDelegate
function SelectionChangedDelegate.ctor(object, method) end

---@param code string
---@param selected boolean
function SelectionChangedDelegate.Invoke(code, selected) end

---@param code string
---@param selected boolean
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function SelectionChangedDelegate.BeginInvoke(code, selected, callback, object) end

---@param result IAsyncResult
function SelectionChangedDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function SelectionChangedDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function SelectionChangedDelegate.Equals(obj) end

---@return function
function SelectionChangedDelegate.GetInvocationList() end

---@return number
function SelectionChangedDelegate.GetHashCode() end

---@return userdata
function SelectionChangedDelegate.get_Target() end

---@return userdata
function SelectionChangedDelegate.Clone() end

---@param args userdata
---@return userdata
function SelectionChangedDelegate.DynamicInvoke(args) end

---@return function
function SelectionChangedDelegate.get_Method() end

---@return userdata
function SelectionChangedDelegate.GetType() end

---@return string
function SelectionChangedDelegate.ToString() end


