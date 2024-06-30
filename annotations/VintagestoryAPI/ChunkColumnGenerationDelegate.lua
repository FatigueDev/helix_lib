---@meta

---@class ChunkColumnGenerationDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ChunkColumnGenerationDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ChunkColumnGenerationDelegate
function ChunkColumnGenerationDelegate.ctor(object, method) end

---@param request IChunkColumnGenerateRequest
function ChunkColumnGenerationDelegate.Invoke(request) end

---@param request IChunkColumnGenerateRequest
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ChunkColumnGenerationDelegate.BeginInvoke(request, callback, object) end

---@param result IAsyncResult
function ChunkColumnGenerationDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ChunkColumnGenerationDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ChunkColumnGenerationDelegate.Equals(obj) end

---@return function
function ChunkColumnGenerationDelegate.GetInvocationList() end

---@return number
function ChunkColumnGenerationDelegate.GetHashCode() end

---@return userdata
function ChunkColumnGenerationDelegate.get_Target() end

---@return userdata
function ChunkColumnGenerationDelegate.Clone() end

---@param args userdata
---@return userdata
function ChunkColumnGenerationDelegate.DynamicInvoke(args) end

---@return function
function ChunkColumnGenerationDelegate.get_Method() end

---@return userdata
function ChunkColumnGenerationDelegate.GetType() end

---@return string
function ChunkColumnGenerationDelegate.ToString() end


