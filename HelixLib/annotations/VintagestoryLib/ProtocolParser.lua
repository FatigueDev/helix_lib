---@meta

---@class ProtocolParser
ProtocolParser = {}

---@return ProtocolParser
function ProtocolParser.ctor() end

---@param stream CitoStream
---@return string
function ProtocolParser.ReadString(stream) end

---@param stream CitoStream
---@return number
function ProtocolParser.ReadBytes(stream) end

---@param stream CitoStream
function ProtocolParser.SkipBytes(stream) end

---@param stream CitoStream
---@param val string
function ProtocolParser.WriteString(stream, val) end

---@param stream CitoStream
---@param val number
function ProtocolParser.WriteBytes(stream, val) end

---@param firstByte number
---@param stream CitoStream
---@return Key
function ProtocolParser.ReadKey_(firstByte, stream) end

---@param firstByte number
---@param stream CitoStream
---@return number
function ProtocolParser.ReadKeyAsInt(firstByte, stream) end

---@param stream CitoStream
---@param key Key
function ProtocolParser.WriteKey(stream, key) end

---@param stream CitoStream
---@param key Key
function ProtocolParser.SkipKey(stream, key) end

---@param stream CitoStream
---@param key Key
---@return number
function ProtocolParser.ReadValueBytes(stream, key) end

---@param stream CitoStream
function ProtocolParser.ReadSkipVarInt(stream) end

---@param stream CitoStream
---@return number
function ProtocolParser.ReadVarIntBytes(stream) end

---@param stream CitoStream
---@return number
function ProtocolParser.ReadInt32(stream) end

---@param stream CitoStream
---@param val number
function ProtocolParser.WriteInt32(stream, val) end

---@param stream CitoStream
---@return number
function ProtocolParser.ReadZInt32(stream) end

---@param stream CitoStream
---@param val number
function ProtocolParser.WriteZInt32(stream, val) end

---@param stream CitoStream
---@return number
function ProtocolParser.ReadInt64(stream) end

---@param stream CitoStream
---@param val number
function ProtocolParser.WriteInt64(stream, val) end

---@param stream CitoStream
---@return number
function ProtocolParser.ReadZInt64(stream) end

---@param stream CitoStream
---@param val number
function ProtocolParser.WriteZInt64(stream, val) end

---@param stream CitoStream
---@return number
function ProtocolParser.ReadUInt32(stream) end

---@param stream CitoStream
---@param val number
function ProtocolParser.WriteUInt32(stream, val) end

---@param stream CitoStream
---@param val number
function ProtocolParser.WriteUInt32_(stream, val) end

---@param stream CitoStream
---@return number
function ProtocolParser.ReadUInt64(stream) end

---@param stream CitoStream
---@param val number
function ProtocolParser.WriteUInt64(stream, val) end

---@param stream CitoStream
---@return boolean
function ProtocolParser.ReadBool(stream) end

---@param stream CitoStream
---@param val boolean
function ProtocolParser.WriteBool(stream, val) end

---@return userdata
function ProtocolParser.GetType() end

---@return string
function ProtocolParser.ToString() end

---@param obj userdata
---@return boolean
function ProtocolParser.Equals(obj) end

---@return number
function ProtocolParser.GetHashCode() end


