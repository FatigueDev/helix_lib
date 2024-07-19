---@meta

---@class StatbarValueDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
StatbarValueDelegate = {}

---@param object userdata
---@param method IntPtr
---@return StatbarValueDelegate
function StatbarValueDelegate.ctor(object, method) end

---@return string
function StatbarValueDelegate.Invoke() end

---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function StatbarValueDelegate.BeginInvoke(callback, object) end

---@param result IAsyncResult
---@return string
function StatbarValueDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function StatbarValueDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function StatbarValueDelegate.Equals(obj) end

---@return function
function StatbarValueDelegate.GetInvocationList() end

---@return number
function StatbarValueDelegate.GetHashCode() end

---@return userdata
function StatbarValueDelegate.get_Target() end

---@return userdata
function StatbarValueDelegate.Clone() end

---@param args userdata
---@return userdata
function StatbarValueDelegate.DynamicInvoke(args) end

---@return function
function StatbarValueDelegate.get_Method() end

---@return userdata
function StatbarValueDelegate.GetType() end

---@return string
function StatbarValueDelegate.ToString() end


