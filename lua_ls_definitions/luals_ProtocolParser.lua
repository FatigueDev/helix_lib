---@meta ProtocolParser
---@class ProtocolParser: Object
---@field ctor fun(): ProtocolParser
---@field ReadString fun(stream: CitoStream): string
---@field ReadBytes fun(stream: CitoStream): number[]
---@field SkipBytes fun(stream: CitoStream): nil
---@field WriteString fun(stream: CitoStream, val: string): nil
---@field WriteBytes fun(stream: CitoStream, val: number[]): nil
---@field ReadKey_ fun(firstByte: number, stream: CitoStream): Key
---@field ReadKeyAsInt fun(firstByte: number, stream: CitoStream): number
---@field WriteKey fun(stream: CitoStream, key: Key): nil
---@field SkipKey fun(stream: CitoStream, key: Key): nil
---@field ReadValueBytes fun(stream: CitoStream, key: Key): number[]
---@field ReadSkipVarInt fun(stream: CitoStream): nil
---@field ReadVarIntBytes fun(stream: CitoStream): number[]
---@field ReadInt32 fun(stream: CitoStream): number
---@field WriteInt32 fun(stream: CitoStream, val: number): nil
---@field ReadZInt32 fun(stream: CitoStream): number
---@field WriteZInt32 fun(stream: CitoStream, val: number): nil
---@field ReadInt64 fun(stream: CitoStream): Int64
---@field WriteInt64 fun(stream: CitoStream, val: Int64): nil
---@field ReadZInt64 fun(stream: CitoStream): Int64
---@field WriteZInt64 fun(stream: CitoStream, val: Int64): nil
---@field ReadUInt32 fun(stream: CitoStream): number
---@field WriteUInt32 fun(stream: CitoStream, val: number): nil
---@field WriteUInt32_ fun(stream: CitoStream, val: number): nil
---@field ReadUInt64 fun(stream: CitoStream): Int64
---@field WriteUInt64 fun(stream: CitoStream, val: Int64): nil
---@field ReadBool fun(stream: CitoStream): boolean
---@field WriteBool fun(stream: CitoStream, val: boolean): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ProtocolParser = {}