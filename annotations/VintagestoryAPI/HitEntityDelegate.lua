---@meta

---@class HitEntityDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
HitEntityDelegate = {}

---@param object userdata
---@param method IntPtr
---@return HitEntityDelegate
function HitEntityDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param chunkx number
---@param chunky number
---@param chunkz number
---@param id number
function HitEntityDelegate.Invoke(byPlayer, chunkx, chunky, chunkz, id) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param chunkx number
---@param chunky number
---@param chunkz number
---@param id number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function HitEntityDelegate.BeginInvoke(byPlayer, chunkx, chunky, chunkz, id, callback, object) end

---@param result IAsyncResult
function HitEntityDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function HitEntityDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function HitEntityDelegate.Equals(obj) end

---@return function
function HitEntityDelegate.GetInvocationList() end

---@return number
function HitEntityDelegate.GetHashCode() end

---@return userdata
function HitEntityDelegate.get_Target() end

---@return userdata
function HitEntityDelegate.Clone() end

---@param args userdata
---@return userdata
function HitEntityDelegate.DynamicInvoke(args) end

---@return function
function HitEntityDelegate.get_Method() end

---@return userdata
function HitEntityDelegate.GetType() end

---@return string
function HitEntityDelegate.ToString() end


