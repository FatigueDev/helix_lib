---@meta EntitySidedProperties
---@class EntitySidedProperties: Object
---@field ctor fun(behaviors: Jsontable[]): EntitySidedProperties
---@field loadBehaviors fun(entity: Entity, properties: EntityProperties, world: IWorldAccessor): nil
---@field Clone fun(): EntitySidedProperties
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
EntitySidedProperties = {}
