---@meta

---@class CitoStream
CitoStream = {}


---@param buffer number
---@param read number
---@param p number
---@return number
function CitoStream.Read(buffer, read, p) end

---@return boolean
function CitoStream.CanSeek() end

---@param length number
---@param seekOrigin CitoSeekOrigin
function CitoStream.Seek(length, seekOrigin) end

---@param val number
---@param p number
---@param p_3 number
function CitoStream.Write(val, p, p_3) end

---@param p number
---@param seekOrigin CitoSeekOrigin
function CitoStream.Seek_(p, seekOrigin) end

---@return number
function CitoStream.ReadByte() end

---@param p number
function CitoStream.WriteByte(p) end

---@param v number
function CitoStream.WriteSmallInt(v) end

---@param k number
---@param wiretype number
function CitoStream.WriteKey(k, wiretype) end

---@return number
function CitoStream.Position() end

---@return userdata
function CitoStream.GetType() end

---@return string
function CitoStream.ToString() end

---@param obj userdata
---@return boolean
function CitoStream.Equals(obj) end

---@return number
function CitoStream.GetHashCode() end


