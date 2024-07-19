---@meta

---@class Packet_LandClaimsSerializer
Packet_LandClaimsSerializer = {}

---@return Packet_LandClaimsSerializer
function Packet_LandClaimsSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_LandClaims
function Packet_LandClaimsSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_LandClaims
---@return Packet_LandClaims
function Packet_LandClaimsSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_LandClaims
---@return Packet_LandClaims
function Packet_LandClaimsSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_LandClaims
---@return Packet_LandClaims
function Packet_LandClaimsSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_LandClaims
function Packet_LandClaimsSerializer.Serialize(stream, instance) end

---@param instance Packet_LandClaims
---@return number
function Packet_LandClaimsSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_LandClaims
function Packet_LandClaimsSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_LandClaimsSerializer.GetType() end

---@return string
function Packet_LandClaimsSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_LandClaimsSerializer.Equals(obj) end

---@return number
function Packet_LandClaimsSerializer.GetHashCode() end


