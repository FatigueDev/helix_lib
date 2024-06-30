---@meta

---@class IByteSerializable
IByteSerializable = {}


---@param writer BinaryWriter
function IByteSerializable.ToBytes(writer) end

---@param reader BinaryReader
---@param resolver IWorldAccessor Important interface to access the game world.
function IByteSerializable.FromBytes(reader, resolver) end


