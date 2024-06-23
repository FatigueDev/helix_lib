---@meta INetworkConnection
---@class INetworkConnection
---@field get_Connected fun(): boolean
---@field get_Disconnected fun(): boolean
---@field Disconnect fun(): nil
---@field Receive fun(data: number[], dataLength: number, total: number&): nil
---@field Send fun(data: number[], length: number): nil
---@field Connected boolean
---@field Disconnected boolean
INetworkConnection = {}
