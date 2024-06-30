---@meta

---@class BlockBehaviorDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
BlockBehaviorDelegate = {}

---@param object userdata
---@param method IntPtr
---@return BlockBehaviorDelegate
function BlockBehaviorDelegate.ctor(object, method) end

---@param behavior BlockBehavior Allows for definitions of behaviors of a block that can be applied to any block
---@param handling EnumHandling&
function BlockBehaviorDelegate.Invoke(behavior, handling) end

---@param behavior BlockBehavior Allows for definitions of behaviors of a block that can be applied to any block
---@param handling EnumHandling&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function BlockBehaviorDelegate.BeginInvoke(behavior, handling, callback, object) end

---@param handling EnumHandling&
---@param result IAsyncResult
function BlockBehaviorDelegate.EndInvoke(handling, result) end

---@param info SerializationInfo
---@param context StreamingContext
function BlockBehaviorDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function BlockBehaviorDelegate.Equals(obj) end

---@return function
function BlockBehaviorDelegate.GetInvocationList() end

---@return number
function BlockBehaviorDelegate.GetHashCode() end

---@return userdata
function BlockBehaviorDelegate.get_Target() end

---@return userdata
function BlockBehaviorDelegate.Clone() end

---@param args userdata
---@return userdata
function BlockBehaviorDelegate.DynamicInvoke(args) end

---@return function
function BlockBehaviorDelegate.get_Method() end

---@return userdata
function BlockBehaviorDelegate.GetType() end

---@return string
function BlockBehaviorDelegate.ToString() end


