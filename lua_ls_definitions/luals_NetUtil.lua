---@meta NetUtil
---@class NetUtil: Object
---@field OpenUrlInBrowser fun(url: string): nil
---@field IsPrivateIp fun(ip: string): boolean
---@field getUriInfo fun(uri: string, error: string&): UriInfo
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
NetUtil = {}
