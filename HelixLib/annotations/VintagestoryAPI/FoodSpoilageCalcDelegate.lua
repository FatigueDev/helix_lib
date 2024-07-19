---@meta

---@class FoodSpoilageCalcDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
FoodSpoilageCalcDelegate = {}

---@param object userdata
---@param method IntPtr
---@return FoodSpoilageCalcDelegate
function FoodSpoilageCalcDelegate.ctor(object, method) end

---@param spoilState number
---@param stack ItemStack
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@return number
function FoodSpoilageCalcDelegate.Invoke(spoilState, stack, byEntity) end

---@param spoilState number
---@param stack ItemStack
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function FoodSpoilageCalcDelegate.BeginInvoke(spoilState, stack, byEntity, callback, object) end

---@param result IAsyncResult
---@return number
function FoodSpoilageCalcDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function FoodSpoilageCalcDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function FoodSpoilageCalcDelegate.Equals(obj) end

---@return function
function FoodSpoilageCalcDelegate.GetInvocationList() end

---@return number
function FoodSpoilageCalcDelegate.GetHashCode() end

---@return userdata
function FoodSpoilageCalcDelegate.get_Target() end

---@return userdata
function FoodSpoilageCalcDelegate.Clone() end

---@param args userdata
---@return userdata
function FoodSpoilageCalcDelegate.DynamicInvoke(args) end

---@return function
function FoodSpoilageCalcDelegate.get_Method() end

---@return userdata
function FoodSpoilageCalcDelegate.GetType() end

---@return string
function FoodSpoilageCalcDelegate.ToString() end


