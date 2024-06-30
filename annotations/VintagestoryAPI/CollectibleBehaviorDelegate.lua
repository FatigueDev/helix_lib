---@meta

---@class CollectibleBehaviorDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CollectibleBehaviorDelegate = {}

---@param object userdata
---@param method IntPtr
---@return CollectibleBehaviorDelegate
function CollectibleBehaviorDelegate.ctor(object, method) end

---@param behavior CollectibleBehavior
---@param handling EnumHandling&
function CollectibleBehaviorDelegate.Invoke(behavior, handling) end

---@param behavior CollectibleBehavior
---@param handling EnumHandling&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CollectibleBehaviorDelegate.BeginInvoke(behavior, handling, callback, object) end

---@param handling EnumHandling&
---@param result IAsyncResult
function CollectibleBehaviorDelegate.EndInvoke(handling, result) end

---@param info SerializationInfo
---@param context StreamingContext
function CollectibleBehaviorDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CollectibleBehaviorDelegate.Equals(obj) end

---@return function
function CollectibleBehaviorDelegate.GetInvocationList() end

---@return number
function CollectibleBehaviorDelegate.GetHashCode() end

---@return userdata
function CollectibleBehaviorDelegate.get_Target() end

---@return userdata
function CollectibleBehaviorDelegate.Clone() end

---@param args userdata
---@return userdata
function CollectibleBehaviorDelegate.DynamicInvoke(args) end

---@return function
function CollectibleBehaviorDelegate.get_Method() end

---@return userdata
function CollectibleBehaviorDelegate.GetType() end

---@return string
function CollectibleBehaviorDelegate.ToString() end


