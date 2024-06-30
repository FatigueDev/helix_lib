---@meta

---@class UpdateEntityDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
UpdateEntityDelegate = {}

---@param object userdata
---@param method IntPtr
---@return UpdateEntityDelegate
function UpdateEntityDelegate.ctor(object, method) end

---@param chunkx number
---@param chunky number
---@param chunkz number
---@param id number
function UpdateEntityDelegate.Invoke(chunkx, chunky, chunkz, id) end

---@param chunkx number
---@param chunky number
---@param chunkz number
---@param id number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function UpdateEntityDelegate.BeginInvoke(chunkx, chunky, chunkz, id, callback, object) end

---@param result IAsyncResult
function UpdateEntityDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function UpdateEntityDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function UpdateEntityDelegate.Equals(obj) end

---@return function
function UpdateEntityDelegate.GetInvocationList() end

---@return number
function UpdateEntityDelegate.GetHashCode() end

---@return userdata
function UpdateEntityDelegate.get_Target() end

---@return userdata
function UpdateEntityDelegate.Clone() end

---@param args userdata
---@return userdata
function UpdateEntityDelegate.DynamicInvoke(args) end

---@return function
function UpdateEntityDelegate.get_Method() end

---@return userdata
function UpdateEntityDelegate.GetType() end

---@return string
function UpdateEntityDelegate.ToString() end


