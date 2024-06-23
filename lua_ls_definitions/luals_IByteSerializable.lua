---@meta IByteSerializable
---@class IByteSerializable
---@field ToBytes fun(writer: BinaryWriter): nil
---@field FromBytes fun(reader: BinaryReader, resolver: IWorldAccessor): nil
IByteSerializable = {}
