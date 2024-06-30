---@meta

---@class RenderDelegateWithBounds: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
RenderDelegateWithBounds = {}

---@param object userdata
---@param method IntPtr
---@return RenderDelegateWithBounds
function RenderDelegateWithBounds.ctor(object, method) end

---@param deltaTime number
---@param currentBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
function RenderDelegateWithBounds.Invoke(deltaTime, currentBounds) end

---@param deltaTime number
---@param currentBounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function RenderDelegateWithBounds.BeginInvoke(deltaTime, currentBounds, callback, object) end

---@param result IAsyncResult
function RenderDelegateWithBounds.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function RenderDelegateWithBounds.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function RenderDelegateWithBounds.Equals(obj) end

---@return function
function RenderDelegateWithBounds.GetInvocationList() end

---@return number
function RenderDelegateWithBounds.GetHashCode() end

---@return userdata
function RenderDelegateWithBounds.get_Target() end

---@return userdata
function RenderDelegateWithBounds.Clone() end

---@param args userdata
---@return userdata
function RenderDelegateWithBounds.DynamicInvoke(args) end

---@return function
function RenderDelegateWithBounds.get_Method() end

---@return userdata
function RenderDelegateWithBounds.GetType() end

---@return string
function RenderDelegateWithBounds.ToString() end


