---@meta

---@class HemisphereDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
HemisphereDelegate = {}

---@param object userdata
---@param method IntPtr
---@return HemisphereDelegate
function HemisphereDelegate.ctor(object, method) end

---@param posX number
---@param posZ number
---@return EnumHemisphere
function HemisphereDelegate.Invoke(posX, posZ) end

---@param posX number
---@param posZ number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function HemisphereDelegate.BeginInvoke(posX, posZ, callback, object) end

---@param result IAsyncResult
---@return EnumHemisphere
function HemisphereDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function HemisphereDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function HemisphereDelegate.Equals(obj) end

---@return function
function HemisphereDelegate.GetInvocationList() end

---@return number
function HemisphereDelegate.GetHashCode() end

---@return userdata
function HemisphereDelegate.get_Target() end

---@return userdata
function HemisphereDelegate.Clone() end

---@param args userdata
---@return userdata
function HemisphereDelegate.DynamicInvoke(args) end

---@return function
function HemisphereDelegate.get_Method() end

---@return userdata
function HemisphereDelegate.GetType() end

---@return string
function HemisphereDelegate.ToString() end


