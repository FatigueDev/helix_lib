---@meta

---@class CurrentTrackSupplierDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CurrentTrackSupplierDelegate = {}

---@param object userdata
---@param method IntPtr
---@return CurrentTrackSupplierDelegate
function CurrentTrackSupplierDelegate.ctor(object, method) end

---@return IMusicTrack
function CurrentTrackSupplierDelegate.Invoke() end

---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CurrentTrackSupplierDelegate.BeginInvoke(callback, object) end

---@param result IAsyncResult
---@return IMusicTrack
function CurrentTrackSupplierDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function CurrentTrackSupplierDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CurrentTrackSupplierDelegate.Equals(obj) end

---@return function
function CurrentTrackSupplierDelegate.GetInvocationList() end

---@return number
function CurrentTrackSupplierDelegate.GetHashCode() end

---@return userdata
function CurrentTrackSupplierDelegate.get_Target() end

---@return userdata
function CurrentTrackSupplierDelegate.Clone() end

---@param args userdata
---@return userdata
function CurrentTrackSupplierDelegate.DynamicInvoke(args) end

---@return function
function CurrentTrackSupplierDelegate.get_Method() end

---@return userdata
function CurrentTrackSupplierDelegate.GetType() end

---@return string
function CurrentTrackSupplierDelegate.ToString() end


