---@meta

---@class InteractionMatcherDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
InteractionMatcherDelegate = {}

---@param object userdata
---@param method IntPtr
---@return InteractionMatcherDelegate
function InteractionMatcherDelegate.ctor(object, method) end

---@param wi WorldInteraction
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySelection EntitySelection
---@return boolean
function InteractionMatcherDelegate.Invoke(wi, blockSelection, entitySelection) end

---@param wi WorldInteraction
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySelection EntitySelection
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function InteractionMatcherDelegate.BeginInvoke(wi, blockSelection, entitySelection, callback, object) end

---@param result IAsyncResult
---@return boolean
function InteractionMatcherDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function InteractionMatcherDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function InteractionMatcherDelegate.Equals(obj) end

---@return function
function InteractionMatcherDelegate.GetInvocationList() end

---@return number
function InteractionMatcherDelegate.GetHashCode() end

---@return userdata
function InteractionMatcherDelegate.get_Target() end

---@return userdata
function InteractionMatcherDelegate.Clone() end

---@param args userdata
---@return userdata
function InteractionMatcherDelegate.DynamicInvoke(args) end

---@return function
function InteractionMatcherDelegate.get_Method() end

---@return userdata
function InteractionMatcherDelegate.GetType() end

---@return string
function InteractionMatcherDelegate.ToString() end


