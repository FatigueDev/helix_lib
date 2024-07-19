---@meta

---@class InteractionStacksDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
InteractionStacksDelegate = {}

---@param object userdata
---@param method IntPtr
---@return InteractionStacksDelegate
function InteractionStacksDelegate.ctor(object, method) end

---@param wi WorldInteraction
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySelection EntitySelection
---@return ItemStack[]
function InteractionStacksDelegate.Invoke(wi, blockSelection, entitySelection) end

---@param wi WorldInteraction
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySelection EntitySelection
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function InteractionStacksDelegate.BeginInvoke(wi, blockSelection, entitySelection, callback, object) end

---@param result IAsyncResult
---@return ItemStack[]
function InteractionStacksDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function InteractionStacksDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function InteractionStacksDelegate.Equals(obj) end

---@return function
function InteractionStacksDelegate.GetInvocationList() end

---@return number
function InteractionStacksDelegate.GetHashCode() end

---@return userdata
function InteractionStacksDelegate.get_Target() end

---@return userdata
function InteractionStacksDelegate.Clone() end

---@param args userdata
---@return userdata
function InteractionStacksDelegate.DynamicInvoke(args) end

---@return function
function InteractionStacksDelegate.get_Method() end

---@return userdata
function InteractionStacksDelegate.GetType() end

---@return string
function InteractionStacksDelegate.ToString() end


