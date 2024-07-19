---@meta

---@class DrawIconDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
DrawIconDelegate = {}

---@param object userdata
---@param method IntPtr
---@return DrawIconDelegate
function DrawIconDelegate.ctor(object, method) end

---@param cr Context
---@param type string
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function DrawIconDelegate.Invoke(cr, type, x, y, width, height, rgba) end

---@param cr Context
---@param type string
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function DrawIconDelegate.BeginInvoke(cr, type, x, y, width, height, rgba, callback, object) end

---@param result IAsyncResult
function DrawIconDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function DrawIconDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function DrawIconDelegate.Equals(obj) end

---@return function
function DrawIconDelegate.GetInvocationList() end

---@return number
function DrawIconDelegate.GetHashCode() end

---@return userdata
function DrawIconDelegate.get_Target() end

---@return userdata
function DrawIconDelegate.Clone() end

---@param args userdata
---@return userdata
function DrawIconDelegate.DynamicInvoke(args) end

---@return function
function DrawIconDelegate.get_Method() end

---@return userdata
function DrawIconDelegate.GetType() end

---@return string
function DrawIconDelegate.ToString() end


