---@meta

---@class WalkSpeedSupplierDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
WalkSpeedSupplierDelegate = {}

---@param object userdata
---@param method IntPtr
---@return WalkSpeedSupplierDelegate
function WalkSpeedSupplierDelegate.ctor(object, method) end

---@return number
function WalkSpeedSupplierDelegate.Invoke() end

---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function WalkSpeedSupplierDelegate.BeginInvoke(callback, object) end

---@param result IAsyncResult
---@return number
function WalkSpeedSupplierDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function WalkSpeedSupplierDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function WalkSpeedSupplierDelegate.Equals(obj) end

---@return function
function WalkSpeedSupplierDelegate.GetInvocationList() end

---@return number
function WalkSpeedSupplierDelegate.GetHashCode() end

---@return userdata
function WalkSpeedSupplierDelegate.get_Target() end

---@return userdata
function WalkSpeedSupplierDelegate.Clone() end

---@param args userdata
---@return userdata
function WalkSpeedSupplierDelegate.DynamicInvoke(args) end

---@return function
function WalkSpeedSupplierDelegate.get_Method() end

---@return userdata
function WalkSpeedSupplierDelegate.GetType() end

---@return string
function WalkSpeedSupplierDelegate.ToString() end


