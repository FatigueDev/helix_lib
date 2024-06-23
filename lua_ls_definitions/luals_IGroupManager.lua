---@meta IGroupManager
---@class IGroupManager
---@field get_PlayerGroupsById fun(): table<any, any>
---@field GetPlayerGroupByName fun(name: string): PlayerGroup
---@field AddPlayerGroup fun(group: PlayerGroup): nil
---@field RemovePlayerGroup fun(group: PlayerGroup): nil
---@field PlayerGroupsById table<any, any>
IGroupManager = {}
