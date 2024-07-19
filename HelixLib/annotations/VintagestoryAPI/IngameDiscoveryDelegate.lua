---@meta

---@class IngameDiscoveryDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
IngameDiscoveryDelegate = {}

---@param object userdata
---@param method IntPtr
---@return IngameDiscoveryDelegate
function IngameDiscoveryDelegate.ctor(object, method) end

---@param sender userdata
---@param discoveryCode string
---@param text string
function IngameDiscoveryDelegate.Invoke(sender, discoveryCode, text) end

---@param sender userdata
---@param discoveryCode string
---@param text string
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function IngameDiscoveryDelegate.BeginInvoke(sender, discoveryCode, text, callback, object) end

---@param result IAsyncResult
function IngameDiscoveryDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function IngameDiscoveryDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function IngameDiscoveryDelegate.Equals(obj) end

---@return function
function IngameDiscoveryDelegate.GetInvocationList() end

---@return number
function IngameDiscoveryDelegate.GetHashCode() end

---@return userdata
function IngameDiscoveryDelegate.get_Target() end

---@return userdata
function IngameDiscoveryDelegate.Clone() end

---@param args userdata
---@return userdata
function IngameDiscoveryDelegate.DynamicInvoke(args) end

---@return function
function IngameDiscoveryDelegate.get_Method() end

---@return userdata
function IngameDiscoveryDelegate.GetType() end

---@return string
function IngameDiscoveryDelegate.ToString() end


