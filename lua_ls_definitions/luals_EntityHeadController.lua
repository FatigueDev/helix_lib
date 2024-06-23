---@meta EntityHeadController
---@class EntityHeadController: Object
---@field ctor fun(animator: IAnimationManager, entity: EntityAgent, entityShape: Shape): EntityHeadController
---@field OnFrame fun(dt: Single): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
EntityHeadController = {}
