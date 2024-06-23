---@meta Packet_ServerAssets
---@class Packet_ServerAssets: Object
---@field ctor fun(): Packet_ServerAssets
---@field GetBlocks fun(): Packet_Blockany[]
---@field SetBlocks fun(value: Packet_Blockany[], count: number, length: number): nil
---@overload fun(value: Packet_Blockany[]): nil
---@field GetBlocksCount fun(): number
---@field BlocksAdd fun(value: Packet_Blockany): nil
---@field GetItems fun(): Packet_Itemany[]
---@field SetItems fun(value: Packet_Itemany[], count: number, length: number): nil
---@overload fun(value: Packet_Itemany[]): nil
---@field GetItemsCount fun(): number
---@field ItemsAdd fun(value: Packet_Itemany): nil
---@field GetEntities fun(): Packet_Entityany[]
---@field SetEntities fun(value: Packet_Entityany[], count: number, length: number): nil
---@overload fun(value: Packet_Entityany[]): nil
---@field GetEntitiesCount fun(): number
---@field EntitiesAdd fun(value: Packet_Entityany): nil
---@field GetRecipes fun(): Packet_Recipes[]
---@field SetRecipes fun(value: Packet_Recipes[], count: number, length: number): nil
---@overload fun(value: Packet_Recipes[]): nil
---@field GetRecipesCount fun(): number
---@field RecipesAdd fun(value: Packet_Recipes): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_ServerAssets = {}