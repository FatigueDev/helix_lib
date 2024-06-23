---@meta NetClient
---@class NetClient: Object
---@field get_CurrentlyReceivingBytes fun(): number
---@field Start fun(): nil
---@field Connect fun(ip: string, port: number, OnConnectionResult: any`1, OnDisconnected: any`1): NetConnection
---@field ReadMessage fun(): NetIncomingMessage
---@field Send fun(data: number[]): nil
---@field Dispose fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field CurrentlyReceivingBytes number
NetClient = {}