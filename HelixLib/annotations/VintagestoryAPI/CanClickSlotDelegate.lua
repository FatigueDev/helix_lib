---@meta

---@class CanClickSlotDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CanClickSlotDelegate = {}

---@param object userdata
---@param method IntPtr
---@return CanClickSlotDelegate
function CanClickSlotDelegate.ctor(object, method) end

---@param slotID number
---@return boolean
function CanClickSlotDelegate.Invoke(slotID) end

---@param slotID number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CanClickSlotDelegate.BeginInvoke(slotID, callback, object) end

---@param result IAsyncResult
---@return boolean
function CanClickSlotDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function CanClickSlotDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CanClickSlotDelegate.Equals(obj) end

---@return function
function CanClickSlotDelegate.GetInvocationList() end

---@return number
function CanClickSlotDelegate.GetHashCode() end

---@return userdata
function CanClickSlotDelegate.get_Target() end

---@return userdata
function CanClickSlotDelegate.Clone() end

---@param args userdata
---@return userdata
function CanClickSlotDelegate.DynamicInvoke(args) end

---@return function
function CanClickSlotDelegate.get_Method() end

---@return userdata
function CanClickSlotDelegate.GetType() end

---@return string
function CanClickSlotDelegate.ToString() end


