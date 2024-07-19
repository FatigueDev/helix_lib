---@meta

-- Custom transition speed handler
---@class CustomGetTransitionSpeedMulDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CustomGetTransitionSpeedMulDelegate = {}

---@param object userdata
---@param method IntPtr
---@return CustomGetTransitionSpeedMulDelegate
function CustomGetTransitionSpeedMulDelegate.ctor(object, method) end

---@param transType EnumTransitionType
---@param stack ItemStack
---@param mulByConfig number
---@return number
function CustomGetTransitionSpeedMulDelegate.Invoke(transType, stack, mulByConfig) end

---@param transType EnumTransitionType
---@param stack ItemStack
---@param mulByConfig number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CustomGetTransitionSpeedMulDelegate.BeginInvoke(transType, stack, mulByConfig, callback, object) end

---@param result IAsyncResult
---@return number
function CustomGetTransitionSpeedMulDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function CustomGetTransitionSpeedMulDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CustomGetTransitionSpeedMulDelegate.Equals(obj) end

---@return function
function CustomGetTransitionSpeedMulDelegate.GetInvocationList() end

---@return number
function CustomGetTransitionSpeedMulDelegate.GetHashCode() end

---@return userdata
function CustomGetTransitionSpeedMulDelegate.get_Target() end

---@return userdata
function CustomGetTransitionSpeedMulDelegate.Clone() end

---@param args userdata
---@return userdata
function CustomGetTransitionSpeedMulDelegate.DynamicInvoke(args) end

---@return function
function CustomGetTransitionSpeedMulDelegate.get_Method() end

---@return userdata
function CustomGetTransitionSpeedMulDelegate.GetType() end

---@return string
function CustomGetTransitionSpeedMulDelegate.ToString() end


