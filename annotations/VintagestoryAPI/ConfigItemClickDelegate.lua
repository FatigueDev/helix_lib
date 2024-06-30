---@meta

---@class ConfigItemClickDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ConfigItemClickDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ConfigItemClickDelegate
function ConfigItemClickDelegate.ctor(object, method) end

---@param index number
---@param indexWithoutTitles number
function ConfigItemClickDelegate.Invoke(index, indexWithoutTitles) end

---@param index number
---@param indexWithoutTitles number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ConfigItemClickDelegate.BeginInvoke(index, indexWithoutTitles, callback, object) end

---@param result IAsyncResult
function ConfigItemClickDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ConfigItemClickDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ConfigItemClickDelegate.Equals(obj) end

---@return function
function ConfigItemClickDelegate.GetInvocationList() end

---@return number
function ConfigItemClickDelegate.GetHashCode() end

---@return userdata
function ConfigItemClickDelegate.get_Target() end

---@return userdata
function ConfigItemClickDelegate.Clone() end

---@param args userdata
---@return userdata
function ConfigItemClickDelegate.DynamicInvoke(args) end

---@return function
function ConfigItemClickDelegate.get_Method() end

---@return userdata
function ConfigItemClickDelegate.GetType() end

---@return string
function ConfigItemClickDelegate.ToString() end


