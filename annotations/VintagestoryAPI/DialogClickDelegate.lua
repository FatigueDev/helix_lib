---@meta

-- The delegate for a dialogue click.
---@class DialogClickDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
DialogClickDelegate = {}

---@param object userdata
---@param method IntPtr
---@return DialogClickDelegate
function DialogClickDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param widgetId string
function DialogClickDelegate.Invoke(byPlayer, widgetId) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param widgetId string
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function DialogClickDelegate.BeginInvoke(byPlayer, widgetId, callback, object) end

---@param result IAsyncResult
function DialogClickDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function DialogClickDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function DialogClickDelegate.Equals(obj) end

---@return function
function DialogClickDelegate.GetInvocationList() end

---@return number
function DialogClickDelegate.GetHashCode() end

---@return userdata
function DialogClickDelegate.get_Target() end

---@return userdata
function DialogClickDelegate.Clone() end

---@param args userdata
---@return userdata
function DialogClickDelegate.DynamicInvoke(args) end

---@return function
function DialogClickDelegate.get_Method() end

---@return userdata
function DialogClickDelegate.GetType() end

---@return string
function DialogClickDelegate.ToString() end


