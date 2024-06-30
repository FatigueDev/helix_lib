---@meta

---@class DummyLoggerException: Exception, Exception, ISerializable
---@field TargetSite MethodBase
---@field Message string
---@field Data IDictionary
---@field InnerException Exception
---@field HelpLink string
---@field Source string
---@field HResult number
---@field StackTrace string
DummyLoggerException = {}

---@param message string
---@return DummyLoggerException
function DummyLoggerException.ctor(message) end

---@return MethodBase
function DummyLoggerException.get_TargetSite() end

---@return string
function DummyLoggerException.get_Message() end

---@return IDictionary
function DummyLoggerException.get_Data() end

---@return Exception
function DummyLoggerException.GetBaseException() end

---@return Exception
function DummyLoggerException.get_InnerException() end

---@return string
function DummyLoggerException.get_HelpLink() end

---@param value string
function DummyLoggerException.set_HelpLink(value) end

---@return string
function DummyLoggerException.get_Source() end

---@param value string
function DummyLoggerException.set_Source(value) end

---@param info SerializationInfo
---@param context StreamingContext
function DummyLoggerException.GetObjectData(info, context) end

---@return string
function DummyLoggerException.ToString() end

---@return number
function DummyLoggerException.get_HResult() end

---@param value number
function DummyLoggerException.set_HResult(value) end

---@return userdata
function DummyLoggerException.GetType() end

---@return string
function DummyLoggerException.get_StackTrace() end

---@return userdata
function DummyLoggerException.GetType() end

---@param obj userdata
---@return boolean
function DummyLoggerException.Equals(obj) end

---@return number
function DummyLoggerException.GetHashCode() end


