---@meta IOrderedDictionary
---@class IOrderedDictionary
---@field get_Item fun(index: number): table
---@field set_Item fun(index: number, value: table): nil
---@field GetEnumerator fun(): IDictionaryEnumerator
---@field Insert fun(index: number, key: table, value: table): nil
---@field RemoveAt fun(index: number): nil
---@field Item table
IOrderedDictionary = {}
