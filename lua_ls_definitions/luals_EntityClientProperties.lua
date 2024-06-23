---@meta EntityClientProperties
---@class EntityClientProperties: EntitySidedProperties
---@field ctor fun(behaviors: Jsontable[]): EntityClientProperties
---@field get_Texture fun(): CompositeTexture
---@field get_FirstTexture fun(): CompositeTexture
---@field DetermineLoadedShape fun(forEntityId: Int64): nil
---@field Init fun(entityTypeCode: AssetLocation, world: IWorldAccessor): nil
---@field Clone fun(): EntitySidedProperties
---@field loadBehaviors fun(entity: Entity, properties: EntityProperties, world: IWorldAccessor): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Texture CompositeTexture
---@field FirstTexture CompositeTexture
---@field Renderer CompositeTexture
---@field RendererName CompositeTexture
---@field Textures CompositeTexture
---@field GlowLevel CompositeTexture
---@field PitchStep CompositeTexture
---@field Shape CompositeTexture
---@field LoadedShape CompositeTexture
---@field LoadedAlternateShapes CompositeTexture
---@field LoadedShapeForEntity CompositeTexture
---@field ShapeForEntity CompositeTexture
---@field Size CompositeTexture
---@field SizeGrowthFactor CompositeTexture
---@field Animations CompositeTexture
---@field AnimationsByMetaCode CompositeTexture
---@field AnimationsByCrc32 CompositeTexture
---@field Attributes CompositeTexture
---@field BehaviorsAsJsonObj CompositeTexture
---@field Behaviors CompositeTexture
EntityClientProperties = {}