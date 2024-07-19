---@meta

---@class ExifException: Exception, Exception, ISerializable
---@field Message string
---@field TargetSite MethodBase
---@field Data IDictionary
---@field InnerException Exception
---@field HelpLink string
---@field Source string
---@field HResult number
---@field StackTrace string
---@field ErrorCode ExifErrCode
ExifException = {}

---@param _ErrorCode ExifErrCode
---@return ExifException
function ExifException.ctor(_ErrorCode) end

---@return string
function ExifException.get_Message() end

---@return MethodBase
function ExifException.get_TargetSite() end

---@return IDictionary
function ExifException.get_Data() end

---@return Exception
function ExifException.GetBaseException() end

---@return Exception
function ExifException.get_InnerException() end

---@return string
function ExifException.get_HelpLink() end

---@param value string
function ExifException.set_HelpLink(value) end

---@return string
function ExifException.get_Source() end

---@param value string
function ExifException.set_Source(value) end

---@param info SerializationInfo
---@param context StreamingContext
function ExifException.GetObjectData(info, context) end

---@return string
function ExifException.ToString() end

---@return number
function ExifException.get_HResult() end

---@param value number
function ExifException.set_HResult(value) end

---@return userdata
function ExifException.GetType() end

---@return string
function ExifException.get_StackTrace() end

---@return userdata
function ExifException.GetType() end

---@param obj userdata
---@return boolean
function ExifException.Equals(obj) end

---@return number
function ExifException.GetHashCode() end


