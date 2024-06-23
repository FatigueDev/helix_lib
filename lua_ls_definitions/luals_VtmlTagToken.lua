---@meta VtmlTagToken
---@class VtmlTagToken: VtmlToken
---@field ctor fun(): VtmlTagToken
---@field get_ChildElements fun(): any[]
---@field set_ChildElements fun(value: any[]): nil
---@field get_Name fun(): string
---@field set_Name fun(value: string): nil
---@field get_Attributes fun(): table<any, any>
---@field set_Attributes fun(value: table<any, any>): nil
---@field get_ContentText fun(): string
---@field get_StartPosition fun(): number
---@field set_StartPosition fun(value: number): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field ChildElements any[]
---@field Name any[]
---@field Attributes any[]
---@field ContentText any[]
---@field StartPosition any[]
VtmlTagToken = {}
