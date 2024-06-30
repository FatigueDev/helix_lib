---@meta

---@class PlotDelegate3D: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
PlotDelegate3D = {}

---@param object userdata
---@param method IntPtr
---@return PlotDelegate3D
function PlotDelegate3D.ctor(object, method) end

---@param x number
---@param y number
---@param z number
function PlotDelegate3D.Invoke(x, y, z) end

---@param x number
---@param y number
---@param z number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function PlotDelegate3D.BeginInvoke(x, y, z, callback, object) end

---@param result IAsyncResult
function PlotDelegate3D.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function PlotDelegate3D.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function PlotDelegate3D.Equals(obj) end

---@return function
function PlotDelegate3D.GetInvocationList() end

---@return number
function PlotDelegate3D.GetHashCode() end

---@return userdata
function PlotDelegate3D.get_Target() end

---@return userdata
function PlotDelegate3D.Clone() end

---@param args userdata
---@return userdata
function PlotDelegate3D.DynamicInvoke(args) end

---@return function
function PlotDelegate3D.get_Method() end

---@return userdata
function PlotDelegate3D.GetType() end

---@return string
function PlotDelegate3D.ToString() end


