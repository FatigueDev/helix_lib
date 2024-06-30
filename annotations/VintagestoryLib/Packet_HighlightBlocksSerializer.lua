---@meta

---@class Packet_HighlightBlocksSerializer
Packet_HighlightBlocksSerializer = {}

---@return Packet_HighlightBlocksSerializer
function Packet_HighlightBlocksSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_HighlightBlocks
function Packet_HighlightBlocksSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_HighlightBlocks
---@return Packet_HighlightBlocks
function Packet_HighlightBlocksSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_HighlightBlocks
---@return Packet_HighlightBlocks
function Packet_HighlightBlocksSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_HighlightBlocks
---@return Packet_HighlightBlocks
function Packet_HighlightBlocksSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_HighlightBlocks
function Packet_HighlightBlocksSerializer.Serialize(stream, instance) end

---@param instance Packet_HighlightBlocks
---@return number
function Packet_HighlightBlocksSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_HighlightBlocks
function Packet_HighlightBlocksSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_HighlightBlocksSerializer.GetType() end

---@return string
function Packet_HighlightBlocksSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_HighlightBlocksSerializer.Equals(obj) end

---@return number
function Packet_HighlightBlocksSerializer.GetHashCode() end


