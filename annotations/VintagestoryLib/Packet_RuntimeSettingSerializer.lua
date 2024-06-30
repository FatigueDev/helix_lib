---@meta

---@class Packet_RuntimeSettingSerializer
Packet_RuntimeSettingSerializer = {}

---@return Packet_RuntimeSettingSerializer
function Packet_RuntimeSettingSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_RuntimeSetting
function Packet_RuntimeSettingSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_RuntimeSetting
---@return Packet_RuntimeSetting
function Packet_RuntimeSettingSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_RuntimeSetting
---@return Packet_RuntimeSetting
function Packet_RuntimeSettingSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_RuntimeSetting
---@return Packet_RuntimeSetting
function Packet_RuntimeSettingSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_RuntimeSetting
function Packet_RuntimeSettingSerializer.Serialize(stream, instance) end

---@param instance Packet_RuntimeSetting
---@return number
function Packet_RuntimeSettingSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_RuntimeSetting
function Packet_RuntimeSettingSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_RuntimeSettingSerializer.GetType() end

---@return string
function Packet_RuntimeSettingSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_RuntimeSettingSerializer.Equals(obj) end

---@return number
function Packet_RuntimeSettingSerializer.GetHashCode() end


