---@meta

---@class UseEntityDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
UseEntityDelegate = {}

---@param object userdata
---@param method IntPtr
---@return UseEntityDelegate
function UseEntityDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param chunkx number
---@param chunky number
---@param chunkz number
---@param id number
function UseEntityDelegate.Invoke(byPlayer, chunkx, chunky, chunkz, id) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param chunkx number
---@param chunky number
---@param chunkz number
---@param id number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function UseEntityDelegate.BeginInvoke(byPlayer, chunkx, chunky, chunkz, id, callback, object) end

---@param result IAsyncResult
function UseEntityDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function UseEntityDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function UseEntityDelegate.Equals(obj) end

---@return function
function UseEntityDelegate.GetInvocationList() end

---@return number
function UseEntityDelegate.GetHashCode() end

---@return userdata
function UseEntityDelegate.get_Target() end

---@return userdata
function UseEntityDelegate.Clone() end

---@param args userdata
---@return userdata
function UseEntityDelegate.DynamicInvoke(args) end

---@return function
function UseEntityDelegate.get_Method() end

---@return userdata
function UseEntityDelegate.GetType() end

---@return string
function UseEntityDelegate.ToString() end


