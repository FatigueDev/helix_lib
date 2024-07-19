---@meta

---@class PlotDelegate2D: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
PlotDelegate2D = {}

---@param object userdata
---@param method IntPtr
---@return PlotDelegate2D
function PlotDelegate2D.ctor(object, method) end

---@param x number
---@param z number
function PlotDelegate2D.Invoke(x, z) end

---@param x number
---@param z number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function PlotDelegate2D.BeginInvoke(x, z, callback, object) end

---@param result IAsyncResult
function PlotDelegate2D.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function PlotDelegate2D.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function PlotDelegate2D.Equals(obj) end

---@return function
function PlotDelegate2D.GetInvocationList() end

---@return number
function PlotDelegate2D.GetHashCode() end

---@return userdata
function PlotDelegate2D.get_Target() end

---@return userdata
function PlotDelegate2D.Clone() end

---@param args userdata
---@return userdata
function PlotDelegate2D.DynamicInvoke(args) end

---@return function
function PlotDelegate2D.get_Method() end

---@return userdata
function PlotDelegate2D.GetType() end

---@return string
function PlotDelegate2D.ToString() end


