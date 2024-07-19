---@meta

---@class SliderTooltipDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
SliderTooltipDelegate = {}

---@param object userdata
---@param method IntPtr
---@return SliderTooltipDelegate
function SliderTooltipDelegate.ctor(object, method) end

---@param currentValue number
---@return string
function SliderTooltipDelegate.Invoke(currentValue) end

---@param currentValue number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function SliderTooltipDelegate.BeginInvoke(currentValue, callback, object) end

---@param result IAsyncResult
---@return string
function SliderTooltipDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function SliderTooltipDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function SliderTooltipDelegate.Equals(obj) end

---@return function
function SliderTooltipDelegate.GetInvocationList() end

---@return number
function SliderTooltipDelegate.GetHashCode() end

---@return userdata
function SliderTooltipDelegate.get_Target() end

---@return userdata
function SliderTooltipDelegate.Clone() end

---@param args userdata
---@return userdata
function SliderTooltipDelegate.DynamicInvoke(args) end

---@return function
function SliderTooltipDelegate.get_Method() end

---@return userdata
function SliderTooltipDelegate.GetType() end

---@return string
function SliderTooltipDelegate.ToString() end


