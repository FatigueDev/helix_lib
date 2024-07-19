---@meta

-- A tag parser
---@class Tag2RichTextDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
Tag2RichTextDelegate = {}

---@param object userdata
---@param method IntPtr
---@return Tag2RichTextDelegate
function Tag2RichTextDelegate.ctor(object, method) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param token VtmlTagToken
---@param fontStack Stack`1
---@param didClickLink function
---@return RichTextComponentBase
function Tag2RichTextDelegate.Invoke(capi, token, fontStack, didClickLink) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param token VtmlTagToken
---@param fontStack Stack`1
---@param didClickLink function
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function Tag2RichTextDelegate.BeginInvoke(capi, token, fontStack, didClickLink, callback, object) end

---@param result IAsyncResult
---@return RichTextComponentBase
function Tag2RichTextDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function Tag2RichTextDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function Tag2RichTextDelegate.Equals(obj) end

---@return function
function Tag2RichTextDelegate.GetInvocationList() end

---@return number
function Tag2RichTextDelegate.GetHashCode() end

---@return userdata
function Tag2RichTextDelegate.get_Target() end

---@return userdata
function Tag2RichTextDelegate.Clone() end

---@param args userdata
---@return userdata
function Tag2RichTextDelegate.DynamicInvoke(args) end

---@return function
function Tag2RichTextDelegate.get_Method() end

---@return userdata
function Tag2RichTextDelegate.GetType() end

---@return string
function Tag2RichTextDelegate.ToString() end


