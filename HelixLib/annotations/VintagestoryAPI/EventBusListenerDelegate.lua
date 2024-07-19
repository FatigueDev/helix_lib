---@meta

-- For handling events on the event bus
---@class EventBusListenerDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
EventBusListenerDelegate = {}

---@param object userdata
---@param method IntPtr
---@return EventBusListenerDelegate
function EventBusListenerDelegate.ctor(object, method) end

---@param eventName string
---@param handling EnumHandling&
---@param data IAttribute An attribute from an attribute tree
function EventBusListenerDelegate.Invoke(eventName, handling, data) end

---@param eventName string
---@param handling EnumHandling&
---@param data IAttribute An attribute from an attribute tree
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function EventBusListenerDelegate.BeginInvoke(eventName, handling, data, callback, object) end

---@param handling EnumHandling&
---@param result IAsyncResult
function EventBusListenerDelegate.EndInvoke(handling, result) end

---@param info SerializationInfo
---@param context StreamingContext
function EventBusListenerDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function EventBusListenerDelegate.Equals(obj) end

---@return function
function EventBusListenerDelegate.GetInvocationList() end

---@return number
function EventBusListenerDelegate.GetHashCode() end

---@return userdata
function EventBusListenerDelegate.get_Target() end

---@return userdata
function EventBusListenerDelegate.Clone() end

---@param args userdata
---@return userdata
function EventBusListenerDelegate.DynamicInvoke(args) end

---@return function
function EventBusListenerDelegate.get_Method() end

---@return userdata
function EventBusListenerDelegate.GetType() end

---@return string
function EventBusListenerDelegate.ToString() end


