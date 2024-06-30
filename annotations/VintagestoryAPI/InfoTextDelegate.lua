---@meta

---@class InfoTextDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
InfoTextDelegate = {}

---@param object userdata
---@param method IntPtr
---@return InfoTextDelegate
function InfoTextDelegate.ctor(object, method) end

---@param slot ItemSlot The default item slot to item stacks
---@return string
function InfoTextDelegate.Invoke(slot) end

---@param slot ItemSlot The default item slot to item stacks
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function InfoTextDelegate.BeginInvoke(slot, callback, object) end

---@param result IAsyncResult
---@return string
function InfoTextDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function InfoTextDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function InfoTextDelegate.Equals(obj) end

---@return function
function InfoTextDelegate.GetInvocationList() end

---@return number
function InfoTextDelegate.GetHashCode() end

---@return userdata
function InfoTextDelegate.get_Target() end

---@return userdata
function InfoTextDelegate.Clone() end

---@param args userdata
---@return userdata
function InfoTextDelegate.DynamicInvoke(args) end

---@return function
function InfoTextDelegate.get_Method() end

---@return userdata
function InfoTextDelegate.GetType() end

---@return string
function InfoTextDelegate.ToString() end


