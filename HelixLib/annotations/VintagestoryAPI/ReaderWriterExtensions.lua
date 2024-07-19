---@meta

---@class ReaderWriterExtensions
ReaderWriterExtensions = {}


---@param writer BinaryWriter
---@param values string
function ReaderWriterExtensions.WriteArray(writer, values) end

---@param reader BinaryReader
---@return string
function ReaderWriterExtensions.ReadStringArray(reader) end

---@param writer BinaryWriter
---@param values number
function ReaderWriterExtensions.WriteArray(writer, values) end

---@param reader BinaryReader
---@return number
function ReaderWriterExtensions.ReadIntArray(reader) end

---@param ms MemoryStream
function ReaderWriterExtensions.Clear(ms) end

---@return userdata
function ReaderWriterExtensions.GetType() end

---@return string
function ReaderWriterExtensions.ToString() end

---@param obj userdata
---@return boolean
function ReaderWriterExtensions.Equals(obj) end

---@return number
function ReaderWriterExtensions.GetHashCode() end


