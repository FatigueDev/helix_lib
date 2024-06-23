---@meta Ping
---@class Ping: Object
---@field ctor fun(): Ping
---@field get_DidReplyOnLastPing fun(): boolean
---@field get_TimeSendMilliSeconds fun(): Int64
---@field GetTimeoutThreshold fun(): number
---@field SetTimeoutThreshold fun(value: number): nil
---@field OnSend fun(ElapsedMilliseconds: Int64): nil
---@field OnReceive fun(ElapsedMilliseconds: Int64): nil
---@field DidTimeout fun(ElapsedMilliseconds: Int64): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field DidReplyOnLastPing boolean
---@field TimeSendMilliSeconds boolean
Ping = {}