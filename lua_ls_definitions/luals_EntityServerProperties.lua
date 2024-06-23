---@meta EntityServerProperties
---@class EntityServerProperties: EntitySidedProperties
---@field ctor fun(behaviors: Jsontable[]): EntityServerProperties
---@field Clone fun(): EntitySidedProperties
---@field loadBehaviors fun(entity: Entity, properties: EntityProperties, world: IWorldAccessor): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
EntityServerProperties = {}
