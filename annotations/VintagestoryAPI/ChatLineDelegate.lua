---@meta

---@class ChatLineDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ChatLineDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ChatLineDelegate
function ChatLineDelegate.ctor(object, method) end

---@param groupId number
---@param message string
---@param chattype EnumChatType A definition for the types of chat that could occur.
---@param data string
function ChatLineDelegate.Invoke(groupId, message, chattype, data) end

---@param groupId number
---@param message string
---@param chattype EnumChatType A definition for the types of chat that could occur.
---@param data string
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ChatLineDelegate.BeginInvoke(groupId, message, chattype, data, callback, object) end

---@param result IAsyncResult
function ChatLineDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ChatLineDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ChatLineDelegate.Equals(obj) end

---@return function
function ChatLineDelegate.GetInvocationList() end

---@return number
function ChatLineDelegate.GetHashCode() end

---@return userdata
function ChatLineDelegate.get_Target() end

---@return userdata
function ChatLineDelegate.Clone() end

---@param args userdata
---@return userdata
function ChatLineDelegate.DynamicInvoke(args) end

---@return function
function ChatLineDelegate.get_Method() end

---@return userdata
function ChatLineDelegate.GetType() end

---@return string
function ChatLineDelegate.ToString() end


