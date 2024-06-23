---@meta Packet_CustomPacket
---@class Packet_CustomPacket: Object
---@field ctor fun(): Packet_CustomPacket
---@field SetChannelId fun(value: number): nil
---@field SetMessageId fun(value: number): nil
---@field SetData fun(value: number[]): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_CustomPacket = {}