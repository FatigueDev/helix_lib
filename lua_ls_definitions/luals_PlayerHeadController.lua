---@meta PlayerHeadController
---@class PlayerHeadController: EntityHeadController
---@field ctor fun(animator: IAnimationManager, entity: EntityPlayer, entityShape: Shape): PlayerHeadController
---@field OnFrame fun(dt: Single): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
PlayerHeadController = {}
