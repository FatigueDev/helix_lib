---@meta

---@class CitoMemoryStream: CitoStream, CitoStream
CitoMemoryStream = {}

---@return CitoMemoryStream
function CitoMemoryStream.ctor() end
---@param reusableBuffer BoxedArray
---@return CitoMemoryStream
function CitoMemoryStream.ctor(reusableBuffer) end
---@param buffer number
---@param length number
---@return CitoMemoryStream
function CitoMemoryStream.ctor(buffer, length) end

---@return number
function CitoMemoryStream.Position() end

---@return number
function CitoMemoryStream.ToArray() end

---@return number
function CitoMemoryStream.GetBuffer() end

---@param buffer number
---@param offset number
---@param count number
---@return number
function CitoMemoryStream.Read(buffer, offset, count) end

---@return boolean
function CitoMemoryStream.CanSeek() end

---@param length number
---@param seekOrigin CitoSeekOrigin
function CitoMemoryStream.Seek(length, seekOrigin) end

---@param buffer number
---@param offset number
---@param count number
function CitoMemoryStream.Write(buffer, offset, count) end

---@param p number
---@param seekOrigin CitoSeekOrigin
function CitoMemoryStream.Seek_(p, seekOrigin) end

---@return number
function CitoMemoryStream.ReadByte() end

---@param p number
function CitoMemoryStream.WriteByte(p) end

---@param v number
function CitoMemoryStream.WriteSmallInt(v) end

---@param k number
---@param wiretype number
function CitoMemoryStream.WriteKey(k, wiretype) end

---@param Logger ILogger Interface to the client's and server's event, debug and error logging utilty.
function CitoMemoryStream.NetworkTest(Logger) end

---@return userdata
function CitoMemoryStream.GetType() end

---@return string
function CitoMemoryStream.ToString() end

---@param obj userdata
---@return boolean
function CitoMemoryStream.Equals(obj) end

---@return number
function CitoMemoryStream.GetHashCode() end


