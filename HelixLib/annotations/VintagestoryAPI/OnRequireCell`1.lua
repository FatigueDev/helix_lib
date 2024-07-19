---@meta

---@class OnRequireCell`1: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnRequireCell`1 = {}

---@param object userdata
---@param method IntPtr
---@return OnRequireCell`1
function OnRequireCell`1.ctor(object, method) end

---@param cell T
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@return IGuiElementCell
function OnRequireCell`1.Invoke(cell, bounds) end

---@param cell T
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnRequireCell`1.BeginInvoke(cell, bounds, callback, object) end

---@param result IAsyncResult
---@return IGuiElementCell
function OnRequireCell`1.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnRequireCell`1.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnRequireCell`1.Equals(obj) end

---@return function
function OnRequireCell`1.GetInvocationList() end

---@return number
function OnRequireCell`1.GetHashCode() end

---@return userdata
function OnRequireCell`1.get_Target() end

---@return userdata
function OnRequireCell`1.Clone() end

---@param args userdata
---@return userdata
function OnRequireCell`1.DynamicInvoke(args) end

---@return function
function OnRequireCell`1.get_Method() end

---@return userdata
function OnRequireCell`1.GetType() end

---@return string
function OnRequireCell`1.ToString() end


