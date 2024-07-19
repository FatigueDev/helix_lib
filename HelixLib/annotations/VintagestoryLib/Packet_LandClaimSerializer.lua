---@meta

---@class Packet_LandClaimSerializer
Packet_LandClaimSerializer = {}

---@return Packet_LandClaimSerializer
function Packet_LandClaimSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_LandClaim
function Packet_LandClaimSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_LandClaim
---@return Packet_LandClaim
function Packet_LandClaimSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_LandClaim
---@return Packet_LandClaim
function Packet_LandClaimSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_LandClaim
---@return Packet_LandClaim
function Packet_LandClaimSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_LandClaim
function Packet_LandClaimSerializer.Serialize(stream, instance) end

---@param instance Packet_LandClaim
---@return number
function Packet_LandClaimSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_LandClaim
function Packet_LandClaimSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_LandClaimSerializer.GetType() end

---@return string
function Packet_LandClaimSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_LandClaimSerializer.Equals(obj) end

---@return number
function Packet_LandClaimSerializer.GetHashCode() end


